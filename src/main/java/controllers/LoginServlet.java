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

    // Use case Dang nhap (B.1 Tiến)
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //6. Nhận dữ liệu từ trang login.jsp gửi lên
        String username  = request.getParameter("username");
        String password  = request.getParameter("pass");

        DAO dao = new DAO();
        //9. He thong tra ve ket qua dang nhap
        User a = dao.login(username,password);

        //11. Nếu không có tài khoản, thông báo lỗi và yêu cầu người dùng đăng nhập lại.
        if (a == null){
            request.setAttribute("error","Tên tài khoản hoặc mật khẩu sai");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
        //10. Nếu có tài khoản, hệ thống ghi nhận trạng thái đăng nhập thành công
        // vào session và hiển thị giao diện trang chủ
        else{
            HttpSession session = request.getSession(true);
            session.setAttribute("acc",a);
            response.sendRedirect("home");
        }
    }
}
