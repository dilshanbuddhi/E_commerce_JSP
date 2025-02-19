package org.example.ecommerrce_web.Contraller.CustomerSearch;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.ecommerrce_web.entity.Category;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "getAllcategoryForCustomer", value = "/getAllcategoryForCustomer")
public class GetAllcategoryForCustomer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Category> categories = new ArrayList<>();

        ServletContext context = req.getServletContext();
        SessionFactory sessionFactory = (SessionFactory) context.getAttribute("SessionFactory");
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        categories = session.createQuery("FROM Category", Category.class).getResultList();
        session.getTransaction().commit();
        session.close();
        req.setAttribute("categories", categories);
        req.getRequestDispatcher("CategoryViceProduct.jsp").forward(req, resp);
    }
}
