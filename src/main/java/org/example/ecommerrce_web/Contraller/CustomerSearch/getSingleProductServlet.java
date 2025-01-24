package org.example.ecommerrce_web.Contraller.CustomerSearch;

import jakarta.persistence.NoResultException;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.ecommerrce_web.entity.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.io.File;
import java.io.IOException;

@WebServlet(name = "getSingleProduct", value = "/getSingleProduct")
public class getSingleProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long productId = Long.parseLong(req.getParameter("productId"));
        System.out.println(productId + "productId");
        String userid = req.getParameter("userId");
        ServletContext servletContext = getServletContext();
        SessionFactory sessionFactory = (SessionFactory) servletContext.getAttribute("SessionFactory");
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        Product product = null;
        try {
            product = session.createQuery("FROM Product WHERE id = :productId", Product.class)
                    .setParameter("productId", productId)
                    .getSingleResult();
        } catch (NoResultException e) {
            req.setAttribute("error", "Product not found");
        } finally {
            session.getTransaction().commit();
            session.close();
        }

        if (product != null) {
            req.setAttribute("product", product);
        } else {
            req.setAttribute("product", null);
        }

        req.getRequestDispatcher("PlaceOrderForm.jsp?userId=" + userid).forward(req, resp);

    }
}
