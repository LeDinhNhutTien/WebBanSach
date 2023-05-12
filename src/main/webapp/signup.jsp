<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String error = (String) request.getAttribute("error");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký tài khoản</title>
    <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <link rel="stylesheet" href="css/register-account.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
        .form-message {
            font-size: 1.2rem;
            line-height: 1.6rem;
            padding: 4px 0 0;
        }

        .form-group.invalid .form-message {
            color: #dc3545;
        }

        .form-control {
            height: 40px;
            padding: 8px 12px;
            border: 1px solid #b3b3b3;
            border-radius: 3px;
            outline: none;
            font-size: 1.4rem;
        }

        .form-group.invalid .form-control {
            border-color: #dc3545;
        }
    </style>
</head>
<body>
<%--Use case Đăng ký tài khoản Long--%>
<%--    2.  Hệ thống hiển thị giao diện cho phép thực hiện đăng ký,
    giao diện gồm có tên tài khoản, mật khẩu, nhập lại mật khẩu và nút đăng ký   --%>
<div class="container-fluid container-header ">
    <div class="row align-items-center py-3 px-xl-5">
        <div class="col-lg-3 d-none d-lg-block">
            <a href="index.html" class="text-decoration-none">
                <img width="250" src="img/logo.png" alt="">
            </a>
        </div>
    </div>
</div>

<form action="signup" method="post" class="mt-3 form-signup" id="form-1">
    <%
        if (error != null) {
    %>
    <div class="alert alert-danger" role="alert">
        <%= error %>
    </div>
    <%
        }
    %>
    <h1>Đăng ký tài khoản</h1>
    <fieldset>
        <%--3. Người dùng nhập vào thông tin tên tài khoàn, mật khẩu, nhập lại mật khẩu--%>
        <label for="name">Tên:</label>
        <div class="wrap-input100 validate-input form-group" data-validate="Username is required">
            <input class="input100 form-control" id="name" type="text" name="user">
            <span class="form-message"></span>
        </div>

        <label for="password">Mật khẩu:</label>
        <div class="wrap-input100 validate-input form-group" data-validate="Password is required">
            <input class="input100 form-control" id="password" type="password" name="pass">
            <span class="form-message"></span>
        </div>

        <label for="password">Nhập lại mật khẩu:</label>
        <div class="wrap-input100 validate-input form-group" data-validate="Password is required">
            <input class="input100 form-control" id="re_password" type="password" name="repass">
            <span class="form-message"></span>
        </div>

    </fieldset>
    <%--4. Người dùng nhấn vào nút đăng ký--%>
    <button type="submit">Đăng ký</button>
</form>
<script src="js/login.js"></script>
<script>
    Validator({
        form: '#form-1',
        errorSelector: '.form-message',
        formGroupElement: '.form-group',
        rules: [
            // 5. Hệ thống tự động kiểm tra thông tin nhập vào có hợp lệ không tại client.
            Validator.isRequired('#name', 'Vui lòng nhập tên tài khoản của bạn'),
            Validator.minLength('#password', 6, 'Vui lòng nhập mật khẩu đủ 6 ký tự'),
            Validator.minLength('#re_password', 6, 'Vui lòng nhập mật khẩu đủ 6 ký tự'),
        ]
    });
</script>
</body>
</html>