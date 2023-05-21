package controllers;

import dao.DAO;
import entities.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "SearchController", urlPatterns = "/search")
public class SearchController  extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String txtSearch = request.getParameter("txt");
        DAO dao = new DAO();
        List<Product> list = dao.searchByName(txtSearch);
        PrintWriter out = response.getWriter();
        for (Product o : list) {
            out.println("                                            <li style=\"width: 31.5%; height: 100%;margin: 30px 0;\">\n" +
                    "                                                <div class=\"product-item\" >\n" +
                    "                                                   <div class=\"product-image\" style=\"position: relative\">\n" +
                    "                                                       <a href=\"\" class=\"product-image-maskup\">\n" +
                    "                                                           <img src=\"${o.image}\">\n" +
                    "                                                       </a>\n" +
                    "                                                       <div class=\"product-image-maskup-info\">\n" +
                    "                                                           <h5 style=\"color: #c9bdfb;\">${o.name}</h5>\n" +
                    "                                                           <h5 style=\"color: rgb(11, 220, 11);\">Na Gyeo Ul</h5>\n" +
                    "                                                           <p style=\"font-size: 17px;\">\n" +
                    "                                                               Đừng Để Tâm Trạng Trở Thành Thái Độ Mỗi chúng ta ai cũng từng trăn trở tại sao lại khó yêu thương chính mình đến vậy. Nhưng thời gian sẽ khiến bạn nhận ra đây là việc không ai có thể làm thay ngoài bản thân mình. Yêu thương bản thân kỳ thực chỉ đơn giản\n" +
                    "                                                               là quan tâm đến cuộc đời của mình.</p>\n" +
                    "                                                       </div>\n" +
                    "                                                     </div>\n" +
                    "                                                   <div class=\"product-title\">${o.name}</div>\n" +
                    "                                                   <div class=\"product-deal\">\n" +
                    "                                                       <div class=\"product-buy\"><a href=\"buynow.html\">Mua ngay</a></div>\n" +
                    "                                                       <div class=\"product-price\">${o.price} VNĐ</div>\n" +
                    "                                                   </div>\n" +
                    "                                           <div class=\"product-detail\">\n" +
                    "                                               <a href=\"detail?pid=${o.id}\" class=\"product-cat\">Xem chi tiết</a>\n" +
                    "                                           </div>\n" +
                    "                                            </div>\n" +
                    "                                            </li>\n");
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
