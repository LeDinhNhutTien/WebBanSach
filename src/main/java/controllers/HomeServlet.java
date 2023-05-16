package controllers;

import dao.DAO;
import entities.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeControl", value = "/home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // nhan du lieu tu DAO
        DAO dao = new DAO();
        List<Product> listProductHot = dao.getProducHot();
        List<Product> listProductSell = dao.getProducSell();
        List<Product> listProductPromotion = dao.getProducPromotion();

        // set du lieu den jsp
        request.setAttribute("listHot", listProductHot);
        request.setAttribute("listSell", listProductSell);
        request.setAttribute("listPromotion", listProductPromotion);

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}