package org.example.ecommerrce_web.Contraller;

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

@WebServlet(name = "registrationServlet", value = "/registration")
public class RegistrationServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirm_password");
        System.out.println(name+" "+email+" "+password+" "+confirmPassword);

        if (password.equals(confirmPassword)) {
            ServletContext context = req.getServletContext();
            SessionFactory sessionFactory = (SessionFactory) context.getAttribute("SessionFactory");
            Session session = sessionFactory.openSession();
            session.beginTransaction();
            User user = new User();
            user.setUserName(name);
            user.setEmail(email);
            user.setPassword(password);
            user.setRole("customer");
            session.save(user);
            session.getTransaction().commit();
            session.close();
            resp.sendRedirect("getAllProductForCustomer.jsp?userId=" + user.getUserId());


        }else {
            resp.sendRedirect("index.jsp?errorpassword=failed");
        }
    }
}
