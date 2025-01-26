package org.example.ecommerrce_web.Contraller.UserContraller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.ecommerrce_web.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AddUserServlet", value = "/addUser")
public class AddUserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String role = req.getParameter("role");

        ServletContext context = req.getServletContext();
        SessionFactory sessionFactory = (SessionFactory) context.getAttribute("SessionFactory");
        Session session = null;

        try {
            session = sessionFactory.openSession();
            session.beginTransaction();
            User user = new User();
            user.setUserName(name);
            user.setEmail(email);
            user.setPassword(password);
            user.setRole(role);
            session.save(user);
            session.getTransaction().commit();
        } catch (Exception e) {
            if (session != null) {
                session.getTransaction().rollback();
            }
            throw new ServletException("Error saving user", e);
        } finally {
            if (session != null) {
                session.close();
            }
        }

        resp.sendRedirect("addUser?userSaved=success");
        req.setAttribute("userSaved", "success");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("jjjjj");
        List<User> users = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "1234");
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery("SELECT * FROM user")) {
            while (resultSet.next()) {
                User user = new User();
                user.setUserId(resultSet.getLong(1)); // Assuming `id` column exists in the database
                user.setUserName(resultSet.getString(4));
                user.setEmail(resultSet.getString(2));
                user.setRole(resultSet.getString(5));
                users.add(user);
            }
            req.setAttribute("users", users);
            req.getRequestDispatcher("userManagement.jsp").forward(req, resp);

        } catch (SQLException e) {
            throw new ServletException("Error retrieving users", e);
        }
    }
}
