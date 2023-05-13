package controllers;

import dao.DAO;
import entities.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DetailServlet", value = "/detail")
public class ProductDetailServlet extends HttpServlet {
    @Override

    //Use case Xem chi tiet san pham  (B.2 Tiến)
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //2. Hệ thống nhận mã id sản phẩm từ trang index.jsp hoặc
        // shop.jsp gửi lên
        int id = Integer.parseInt(request.getParameter("pid"));
        DAO dao = new DAO();

        // 5. He thong tra ve thong tin chi tiet cua san pham
        Product p = dao.getProductByID(id);
        request.setAttribute("detail",p);

//        List<Categary> listCate = dao.getAllCategary();
//        request.setAttribute("listC",listCate);

        // 6. Hệ thống hiển thị giao diện xem sản phẩm có đầy đủ thông tin về sản phẩm.
        request.getRequestDispatcher("product_detail.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
