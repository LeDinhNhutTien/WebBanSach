<%--
  Created by IntelliJ IDEA.
  User: BuiQuocLong
  Date: 4/27/2023
  Time: 11:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng ký thành công</title>
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="css/stylesfooter.css">
    <link rel="stylesheet" href="css/product.css">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
            integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"
            integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk"
            crossorigin="anonymous"></script>

</head>
<body>
<!-- Topbar Start -->
<div class="header-container" style="margin: auto">
    <div class="container-fluid container-header ">
        <div class="row align-items-center py-3 px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a href="" class="text-decoration-none">
                    <img width="250" src="img/logo.png" alt="">
                </a>
            </div>
            <div class="col-lg-6 col-6 text-left">
                <form action="">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Bạn tìm gì...">
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary">
                                <i class="fa fa-search"></i>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-3 col-6 text-right">
                <a href="cart.html" class="btn gio_hang">
                    <i class="fas blue fa-shopping-cart text-primary"></i>
                    <span class="badge">Giỏ hàng</span>
                </a>
            </div>
        </div>
    </div>
    <!-- Topbar 2   -->
    <div class="container-fluid container-header2 pt-0">
        <div class="row align-items-center py-3 px-xl-5" style="justify-content: space-between;">
            <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav mr-auto py-0 ">
                        <a href="home" class="nav-item nav-link active">Trang chủ</a>
                        <div class="nav-item dropdown">
                            <a href="shop" class="nav-link">Sản phẩm</a>

                        </div>
                        <a href="detail.html" class="nav-item nav-link">Giới thiệu</a>
                        <a href="contact.html" class="nav-item nav-link">Liên hệ</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>
<!-- Topbar End -->
<%--Use case Đăng ký tài khoản Long--%>
<%--11. Tạo một tài khoản trong cơ sở dữ liệu và chuyển đến trang đăng ký tài khoản thành công--%>
<div class="container-fluid mb-1 mt-153 pt-100 " style="justify-content: space-between; ">
    <div class="row-slider border-top px-xl-5 ">
        <div class="col-lg-9 align-content-center ">
            <div id="header-carousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner" style="height: 300px; padding-top: 100px">
                    <div class="carousel-item active" style="height: 200px; text-align: center; ">
                        <h3>Chúc mừng bạn đã đăng ký tài khoản thành công!</h3>
                        <h4>Vui lòng quay lại trang Đăng nhập</h4>
                        <a href="login.jsp" class="primary-btn">Đăng nhập</a>
                    </div>

                </div>

            </div>
        </div>
    </div>
</div>


<%--<div class="clearfix"></div>--%>
<%--<div class="section">--%>
<%--    <!-- container -->--%>
<%--    <div class="container">--%>
<%--        <!-- row -->--%>
<%--        <div class="row">--%>
<%--            <div class="col-md-12">--%>
<%--                <div class="success_order text-center">--%>
<%--                    <h3>Chúc mừng bạn đã đăng ký tài khoản thành công!</h3>--%>
<%--                    <h4>Vui lòng quay lại trang Đăng nhập</h4>--%>
<%--                    <a href="login.jsp" class="primary-btn">Đăng nhập</a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <!-- /row -->--%>
<%--    </div>--%>

<%--    <!-- /container -->--%>
<%--</div>--%>
<%--<div class="clearfix"></div>--%>


<!-- Footer Start -->

<div style="padding-left: 0;padding-right: 0%;" class="container-fluid bg-secondary text-dark mt-5 pt-5">
    <div class="row px-xl-5 pt-5">
        <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
            <a href="" class="text-decoration-none">
                <img width="400" src="img/logo.png">
            </a>
            <p>Chúng tôi luôn trân trọng và mong đợi nhận được mọi ý kiến đóng góp từ khách hàng để có thể nâng cấp trải
                nghiệm dịch vụ và sản phẩm tốt hơn nữa.</p>
            <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>Thủ Đức, Linh Trung, Việt Nam</p>
            <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>info@st.hcmuaf.edu.vn</p>
            <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+081 *** ****</p>
        </div>
        <div class="col-lg-8 col-md-12">
            <div class="row" id="remove_line">
                <div class="col-md-4 mb-5">
                    <h5 style="margin-top: 1.5rem;" class="font-weight-bold text-dark mb-4">Phụ kiện khác</h5>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-dark mb-2" href="index.html"></i>Đồ dùng học tập</a>
                        <a class="text-dark mb-2" href="shop.jsp">Màu & Họa cụ</a>
                        <a class="text-dark mb-2" href="detail.html">Giấy gói & Quà tặng</a>
                        <a class="text-dark mb-2" href="index.html"></i>Sách tham khảo</a>
                        <a class="text-dark mb-2" href="index.html"></i>Truyện tranh</a>
                    </div>
                </div>
                <div class="col-md-4 mb-5">
                    <h5 class="font-weight-bold text-dark mb-4">Dịch vụ khách hành </h5>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-dark mb-2" href="#"> Chính sách đổi trả</a>
                        <a class="text-dark mb-2" href="contact.html">Liên hệ</a>
                        <a class="text-dark mb-2" href="detail.html">Khách hàng hài lòng</a>
                        <a class="text-dark mb-2" href="#">Chính sách giao hàng </a>
                        <a class="text-dark mb-2" href="contact.html"></i>Hỏi đáp - FAQs</a>
                        <a class="text-dark mb-2" href="#"></i>Chính sách khuyến mãi</a>
                        <a class="text-dark mb-2" href="#"></i>Hướng dẫn mua hàng</a>
                        <a class="text-dark" href="#"></i>Chính sách bảo hành</a>
                    </div>

                </div>
                <div class="col-md-4 mb-5">
                    <h5 class="font-weight-bold text-dark mb-4" style="text-align: center">Đăng Ký Nhận Thông Tin</h5>
                    <form action="">
                        <div class="form-group">
                            <input type="text" class="form-control border-0 py-4" placeholder="Tên của bạn"
                                   required="required"/>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control border-0 py-4" placeholder="Email của bạn"
                                   required="required"/>
                        </div>
                        <div>
                            <button class="btn btn-primary btn-block border-0 py-3"
                                    style="border-radius: 10px ;height: 40px" type="submit">Đăng Ký Bây Giờ
                            </button>
                        </div>

                    </form>
                    <div class="social-media">
                        <ul class="icon-media">
                            <li class="icon 1"><a href="#"> <img src="img/Title/facebook%20(1).png"></a></li>
                            <li class="icon 2"><a href="#"> <img src="img/Title/email.png"></a></li>
                            <li class="icon 3"><a href="#"> <img src="img/Title/twitter.png"></a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="  site-footer__copyright  " style="padding-top: 15px">
            <p>2023 © All Rights Reserved | Designed and Developed by :Lê Đình Nhựt Tiến, Bùi Quốc Long, Nguyễn Thùy
                Linh</p>
        </div>
    </div>
</div>
<!-- Footer End -->
</body>
</html>
