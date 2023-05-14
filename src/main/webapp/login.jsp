<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Đăng nhập</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <!--    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">-->
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/login-util.css">
    <link rel="stylesheet" type="text/css" href="css/login-main.css">
    <link rel="stylesheet" href="css/style.css">
    <!--===============================================================================================-->
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
<%--    Use case Dang nhap B.1 Tiến--%>

<%--    2.  Hệ thống hiển thị giao diện cho phép thực hiện đăng nhập,
giao diện gồm có tên tài khoản, mật khẩu và nút đăng nhập   --%>
<div class="limiter">
    <div class="container-fluid container-header ">
        <div class="row align-items-center py-3 px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a href="home" class="text-decoration-none">
                    <img width="250" src="img/logo.png" alt="">
                </a>
            </div>
        </div>
    </div>

    <div class="container-login100">
        <div class="wrap-login100 p-l-110 p-r-110 p-t-10 p-b-33">
            <form class="login100-form validate-form flex-sb flex-w" id="form-1">
					<span class="login100-form-title p-b-33">
						Đăng Nhập Với
					</span>

                <a href="" class="btn-face m-b-15 text-decoration-none">
                    <i class="fa fa-facebook-official"></i>
                    Facebook
                </a>

                <a href="#" class="btn-google m-b-15 text-decoration-none">
                    <img src="img/icon-google.png" alt="GOOGLE">
                    Google
                </a>
                <div style="height: 35px;width: 100%;">
                    <p class="text-danger" style="font-size: 20px;">${error}</p> <%--hiển thị lỗi--%>
                </div>
                <%--3. Người dùng nhập vào thông tin tên tài khoàn và mật khẩu--%>
                <div class="p-t-15 p-b-9">
						<span class="txt1">
							Tên tài khoản
						</span>
                </div>
                <div class="wrap-input100 validate-input form-group" data-validate="Username is required">
                    <input class="input100 form-control" id="name" type="text" name="username">
                    <span class="form-message"></span>
                </div>
                <div class="p-t-13 p-b-9">
						<span class="txt1">
							Mật khẩu
						</span>
                    <a href="quenMk.html" class="txt2 bo1 m-l-5 text-decoration-none">
                        Quên mật khẩu?
                    </a>
                </div>
                <div class="wrap-input100 validate-input form-group" data-validate="Password is required">
                    <input class="input100 form-control" id="password" type="password" name="pass">
                    <span class="form-message"></span>
                </div>
                <%--4. Người dùng ấn vào nút đăng nhập--%>
                <div class="container-login100-form-btn m-t-17">
                    <button class="login100-form-btn">
                        Đăng nhập
                    </button>
                </div>
                <div class="w-full text-center p-t-15">
						<span class="txt2">
							Không phải là thành viên?
						</span>
                    <%--Use case Đăng ký tài khoản B.3 Long--%>
                    <%--1. Người dùng ấn vào nút đăng ký để tạo một tài khoản--%>
                    <a href="signup.jsp" class="txt2 bo1 text-decoration-none">
                        Đăng ký
                    </a>
                </div>
            </form>

        </div>
    </div>
</div>

<div id="dropDownSelect1"></div>

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
        ]
    });
</script>


<!--===============================================================================================-->
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/daterangepicker/moment.min.js"></script>
<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
</div>
</body>
</html>
