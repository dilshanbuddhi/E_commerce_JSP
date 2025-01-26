package org.example.ecommerrce_web.Contraller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.example.ecommerrce_web.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "loginsServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("login");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        ServletContext context = request.getServletContext();
        SessionFactory sessionFactory = (SessionFactory) context.getAttribute("SessionFactory");

        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();

            String hql = "FROM User WHERE email = :email AND password = :password";
            Query<User> query = session.createQuery(hql, User.class);
            query.setParameter("email", email);
            query.setParameter("password", password);

            User user = query.uniqueResult();

            session.getTransaction().commit();

            if (user != null) {
                HttpSession httpSession = request.getSession();
                String uid = String.valueOf(user.getUserId());
                httpSession.setAttribute("userId", uid); // Store the userId in session
                httpSession.setAttribute("userRole", user.getRole());
                if (user.getRole().equals("Admin")){
                    response.sendRedirect("admin_dashboard.jsp?userId=" + user.getUserId());
                }else {
                    response.sendRedirect("getAllProductForCustomer?userId=" + user.getUserId());
                }
            } else {
                response.sendRedirect("getAllProductForCustomer?loginError=failed");
            }

        } catch (Exception e) {
             response.sendRedirect("getAllProduct?loginError=failed");
            e.printStackTrace();
        }
    }

}