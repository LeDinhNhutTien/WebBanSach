package controllers;

import dao.DAO;
import entities.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username  = request.getParameter("username");
        String password  = request.getParameter("pass");

        //7. Hệ thống kết nối với cơ sở dữ liệu
        DAO dao = new DAO();

        //8.  Hệ thống tìm thông tin tài khoản người dùng thông qua tên
        // tài khoản và mật khẩu trong cơ sở dữ liệu.
        User a = dao.login(username,password);

        if (a == null){ // tài khoản ko tồn tại
            request.setAttribute("error","Tên tài khoản hoặc mật khẩu sai"); // báo lỗi
            request.getRequestDispatcher("login.jsp").forward(request,response);
            a.toString();
        }else{
            //9. Nếu có tài khoản, hệ thống ghi nhận trạng thái đăng nhập thành công
            // vào session và hiển thị giao diện trang chủ.
            HttpSession session = request.getSession(true);
            session.setAttribute("acc",a);
            response.sendRedirect("home");
        }
    }
}
