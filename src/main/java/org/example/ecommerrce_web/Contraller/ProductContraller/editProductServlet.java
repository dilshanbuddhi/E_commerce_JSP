package org.example.ecommerrce_web.Contraller.ProductContraller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.ecommerrce_web.entity.Category;
import org.example.ecommerrce_web.entity.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.io.IOException;

@WebServlet(name = "editProduct", value = "/editProduct")
public class editProductServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String cid = req.getParameter("categoryId");
        String quantity = req.getParameter("quantity");
        String price = req.getParameter("price");

        ServletContext context = req.getServletContext();
        SessionFactory sessionFactory = (SessionFactory) context.getAttribute("SessionFactory");
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Product product = session.get(Product.class, Long.parseLong(id));
        product.setName(name);
        product.setCategory(session.get(Category.class, Long.parseLong(cid)));
        product.setQuantity(Integer.parseInt(quantity));
        product.setPrice(Double.parseDouble(price));
        session.update(product);
        session.getTransaction().commit();
        session.close();
        resp.sendRedirect("getProductList");
    }
}
