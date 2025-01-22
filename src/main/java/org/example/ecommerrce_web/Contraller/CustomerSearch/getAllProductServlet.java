package org.example.ecommerrce_web.Contraller.CustomerSearch;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.ecommerrce_web.entity.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.io.IOException;
import java.net.http.HttpClient;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "getAllProductServlet", value = "/getAllProductForCustomer")
public class getAllProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = new ArrayList<>();

        ServletContext context = req.getServletContext();
        SessionFactory sessionFactory = (SessionFactory) context.getAttribute("SessionFactory");
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        products = session.createQuery("FROM Product", Product.class).getResultList();
        session.getTransaction().commit();
        session.close();
        req.setAttribute("products", products);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
