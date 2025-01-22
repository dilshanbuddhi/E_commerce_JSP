package org.example.ecommerrce_web.Contraller.CategoryContraller;

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

@WebServlet(name = "updateCategory", value = "/updateCategory")
public class UpdateCategoryServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String description = req.getParameter("description");

        ServletContext context = req.getServletContext();
        SessionFactory sessionFactory = (SessionFactory) context.getAttribute("SessionFactory");
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        Category category = session.get(Category.class, Long.parseLong(id));
        category.setName(name);
        category.setDescription(description);
        session.update(category);
        session.getTransaction().commit();
        session.close();
        resp.sendRedirect("saveCategory");
    }
}
