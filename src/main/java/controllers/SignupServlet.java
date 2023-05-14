package controllers;

import dao.DAO;
import entities.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/signup")
public class SignupServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
//        <-Use case Đăng ký tài khoản B.3 Long
//        6. Hệ thống kiểm tra xem thôgn tin mật khẩu và nhập lại mật khẩu có giống nhau không
        if (!pass.equals(repass)) {
//            7. Hệ thống thông báo mật khẩu không trùng khớp
            request.setAttribute("error", "Mật khẩu xác nhận không đúng!");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else {
//            8. Hệ thống kết nối với cơ sở dữ liệu
            DAO dao = new DAO();
            User u = dao.checkUserExist(user);
//            9. Hệ thống kiểm tra trong cơ sở dữ liệu có tài khoản cần tạo hay chưa
            if (u == null) {
                // dc signup
//                11. Tạo một tài khoản trong cơ sở dữ liệu và chuyển đến trang đăng ký tài khoản thành công
                String id = "" + (dao.getNewID() + 1);
                dao.singup(id, user, pass);
                response.sendRedirect("success-signup.jsp");
            } else {
                // day ve trang dang ky
//                10. Hệ thống thông báo tài khoản đã tồn tại
                request.setAttribute("error", "Tài khoản đã tồn tại!");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
//                response.sendRedirect("signup.jsp");
            }
        }
    }
}
