<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <link  rel="icon" href="img/book.jpg">
    <title>Mua Sách Online Nhanh Nhất</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="css/stylesfooter.css">
    <link rel="stylesheet" href="css/product.css">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>


</head>

<body>

<div id="TrangChu">
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
                    <div class="btn user-toggle" onclick="menuToggle()" style="margin-right: -15px">
                        <c:if test="${sessionScope.acc == null}">
                            <a href="taikhoan.html" class="btn user" style="margin-right: -15px">
                                <i class="fas blue fa-solid fa-user text-primary"></i>
                                <span class="badge">Tài khoản</span>
                            </a>
                        </c:if>
                        <c:if test="${sessionScope.acc != null}">
                            <a href="taikhoan.html" class="btn user" style="margin-right: -15px">
                                <i class="fas blue fa-solid fa-user text-primary"></i>
                                <span class="badge">Xin chào ${sessionScope.acc.username}</span>
                            </a>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
        <!-- Topbar 2   -->
        <div class="container-fluid container-header2 pt-0">
            <div class="row align-items-center py-3 px-xl-5"style="justify-content: space-between;">
                <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0 ">
                            <a href="home" class="nav-item nav-link active">Trang chủ</a>
                            <div class="nav-item dropdown">
                                <a href="shop" class="nav-link" >Sản phẩm</a>

                            </div>
                            <a href="detail.html" class="nav-item nav-link">Giới thiệu</a>
                            <a href="contact.html" class="nav-item nav-link">Liên hệ</a>
                        </div>
                    </div>
                </nav>

                <div class="col-lg-3 col-6 ml-5 text-right " style="display: flex;padding: 0 15px;justify-content: flex-end ;gap: 50px">
                    <a href="register-account.html" class="btn border border-back">
                        Đăng ký
                    </a>
                    <c:if test="${sessionScope.acc != null}">
                        <a href="logout" class="btn border border-back float-left">
                            Đăng xuất
                        </a>
                    </c:if>
                    <%--    Use case Dang nhap B.1 Tiến--%>

                    <%--1. Người dùng chọn đăng nhập--%>
                    <c:if test="${sessionScope.acc == null}">
                        <a href="login" class="btn border border-back">
                            Đăng nhập
                        </a>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->

    <!-- Navbar Start -->
    <div class="container-fluid mb-1 mt-153 " style="justify-content: space-between; ">
        <div class="row-slider border-top px-xl-5 ">
            <div class="col-lg-9 align-content-center " >
                <div id="header-carousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active" style="height: 470px; text-align: center; ">
                            <img class="img-fluid" src="img/slider1.jpg" alt="Image">
                            <div class="carousel-caption d-flex flex-column align-items-center" style="justify-content: space-between;">
                                <div class="p-3" style="max-width: 700px; margin-top: 180px">
                                    <h4 class="text-light text-uppercase font-weight-medium mb-3">GIẢM GIÁ 20% CHO ĐƠN HÀNG ĐẦU TIÊN CỦA BẠN</h4>
                                    <a href="shop.jsp" class="btn btn-light py-2 px-3" style="border-radius: 10px">MUA NGAY</a>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item" style="height: 550px;text-align: center">
                            <img class="img-fluid" src="img/slider2.jpg" alt="Image">
                        </div>
                        <div class="carousel-item" style="height: 550px;text-align: center">
                            <img class="img-fluid" src="img/slider3.jpg" alt="Image">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                        <div class="btn btn-dark" style="width: 45px; height: 45px;">
                            <span class="carousel-control-prev-icon mb-n2"></span>
                        </div>
                    </a>
                    <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                        <div class="btn btn-dark" style="width: 45px; height: 45px;">
                            <span class="carousel-control-next-icon mb-n2"></span>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Navbar End -->

    <!-- Featured Start -->
    <div class="container-fluid">
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Sản phẩm chất lượng</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                    <h5 class="font-weight-semi-bold m-0">Miễn phí giao hàng</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Hoàn trả 14 ngày</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Hỗ trợ 24/7</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Featured End -->


    <!-- Categories Start Product -->

    <div id="product-shop">
        <div class="container p-0">
            <!--        sản phẩm hot-->
            <div class="product-hot">
                <div class="headline">
                    <h3>Sản phẩm mới</h3>
                </div>
                <!-- <div class="banner" style="text-align: center">
                    <img  src="img/product/banner1.jpg">
                </div> -->
                <ul class="products">
                    <c:forEach items="${listHot}" var="o">
                       <li style="width: 31.5%; height: 100%;margin: 30px 0;">
                            <div class="product-item" >
                                <div class="product-image" style="position: relative">
                                    <a href="" class="product-image-maskup">
                                        <img src="${o.image}">
                                    </a>
                                    <div class="product-image-maskup-info">
                                        <h5 style="color: #c9bdfb;">${o.name}</h5>
                                        <h5 style="color: rgb(11, 220, 11);">Hình thức bìa: Bìa mềm</h5>
                                        <ul>
                                            <li style="font-size: 18px; margin: 5px 0" class="fas fa-check-circle text-primary"> Miễn phí giao hàng</li>
                                            <li style="font-size: 18px; margin: 5px 0" class="fas fa-check-circle text-primary"> Tặng Bookmark cho mỗi đơn hàng</li>
                                            <li style="font-size: 18px; margin: 5px 0" class="fas fa-check-circle text-primary"> Bao sách miễn phí (theo yêu cầu)</li>
                                        </ul>
                                    </div>
                                    <div class="product-top">
                                        <h4>New</h4>
                                    </div>
                                </div>

                                <div class="product-title">${o.name}</div>
                                <div class="product-deal">
                                    <div class="product-buy"><a href="buynow.html">Mua ngay</a></div>
                                    <div class="product-price">${o.price} VNĐ</div>
                                </div

                                <%--Use case Xem chi tiet san pham (B.2 Tiến)--%>
                                <%--  1.Người sử dụng chọn chức năng Xem chi tiết sản phẩm
                                     trên giao diện mỗi sản phẩm.--%>
                                <div class="product-detail">
                                    <a href="detail?pid=${o.id}" class="product-cat">Xem chi tiết</a>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
                <div class="see-more" style="text-align: center; margin-bottom: 30px">
                    <a style="text-decoration: none" href="shop">Xem thêm</a>
                </div>
            </div>

            <!--        sản phảm bán chạy-->
            <div class="product-selling">
                <div class="headline">
                    <h3>Sản phẩm bán chạy </h3>
                </div>
                <!-- <div class="banner" style="text-align: center">
                    <img  src="img/product/banner.jpg">
                </div> -->

                <ul class="products">
                    <c:forEach items="${listSell}" var="o">
                        <li style="width: 31.5%; height: 100%;margin: 30px 0;">
                        <div class="product-item" >
                            <div class="product-image" style="position: relative">
                                <a href="" class="product-image-maskup">
                                    <img src="${o.image}">
                                </a>
                                <div class="product-image-maskup-info">
                                    <h5 style="color: #c9bdfb;">${o.name}</h5>
                                    <h5 style="color: rgb(11, 220, 11);">Hình thức bìa: Bìa mềm</h5>
                                    <ul>
                                        <li style="font-size: 18px; margin: 5px 0" class="fas fa-check-circle text-primary"> Miễn phí giao hàng</li>
                                        <li style="font-size: 18px; margin: 5px 0" class="fas fa-check-circle text-primary"> Tặng Bookmark cho mỗi đơn hàng</li>
                                        <li style="font-size: 18px; margin: 5px 0" class="fas fa-check-circle text-primary"> Bao sách miễn phí (theo yêu cầu)</li>
                                    </ul>
                                </div>
                                <div class="product-top">
                                    <img src="img/product1/top.png">
                                </div>
                            </div>

                            <div class="product-title">${o.name}</div>
                            <div class="product-deal">
                                <div class="product-buy"><a href="buynow.html">Mua ngay</a></div>
                                <div class="product-price">${o.price} VNĐ</div>
                            </div>
                                <%--Use case Xem chi tiet san pham (B.2 Tiến)--%>
                                <%--  1.Người sử dụng chọn chức năng Xem chi tiết sản phẩm
                                     trên giao diện mỗi sản phẩm.--%>
                            <div class="product-detail">
                                <a href="detail?pid=${o.id}" class="product-cat">Xem chi tiết</a>
                            </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>

                <div class="see-more" style="text-align: center; margin-bottom: 30px">
                    <a style="text-decoration: none" href="shop">Xem thêm</a>
                </div>
            </div>

            <!--        sản phẩm giảm giá-->
            <div class="product-sale">
                <div class="headline">
                    <h3>Sản phẩm khuyến mãi </h3>
                </div>
                <div class="banner" style="text-align: center">
                    <img style="width: 1000px;" src="img/product1/Banner_Kien_Truc.jpg">
                </div>
                <ul class="products">
                    <c:forEach items="${listPromotion}" var="o">
                     <li style="width: 31.5%; height: 100%;margin: 30px 0">
                        <div class="product-item">
                            <div class="product-image" style="position: relative">
                                <a href="" class="product-image-maskup">
                                    <img src="${o.image}">
                                </a>
                                <div class="product-image-maskup-info">
                                    <h5 style="color: #c9bdfb;">${o.name}</h5>
                                    <h5 style="color: rgb(11, 220, 11);">Hình thức bìa: Bìa mềm</h5>
                                    <ul>
                                        <li style="font-size: 18px; margin: 5px 0" class="fas fa-check-circle text-primary"> Miễn phí giao hàng</li>
                                        <li style="font-size: 18px; margin: 5px 0" class="fas fa-check-circle text-primary"> Tặng Bookmark cho mỗi đơn hàng</li>
                                        <li style="font-size: 18px; margin: 5px 0" class="fas fa-check-circle text-primary"> Bao sách miễn phí (theo yêu cầu)</li>
                                    </ul>
                                </div>
                                <div class="product-top">
                                    <span class="percent">18%</span>
                                    <span class="reduce">giảm</span>
                                </div>
                            </div>

                            <div class="product-title">${o.name}</div>
                            <div class="product-deal">
                                <div class="product-buy" style="margin-top: 10px;"><a href="buynow.html">Mua ngay</a></div>
                                <div class="product-price-sale">
                                    <div class="product-price">160,000 VNĐ</div>
                                    <div class="empty"></div>
                                    <div class="price-sale">${o.price} VNĐ </div>
                                </div>
                            </div>
                                <%--Use case Xem chi tiet san pham (B.2 Tiến)--%>
                                <%--  1.Người sử dụng chọn chức năng Xem chi tiết sản phẩm
                                     trên giao diện mỗi sản phẩm.--%>
                            <div class="product-detail">
                                <a href="detail?pid=${o.id}" class="product-cat">Xem chi tiết</a>
                            </div>
                        </div>
                    </li>
                    </c:forEach>
                </ul>
                <div class="see-more" style="text-align: center; margin-bottom: 30px">
                    <a style="text-decoration: none" href="shop">Xem thêm</a>
                </div>
            </div>
        </div>
    </div>


    <!-- Categories End -->
    <!-- Products Start -->

    <!-- Products End -->


    <!-- Subscribe Start -->
    <div class="container-fluid bg-secondary my-5">
        <div class="row justify-content-md-center py-5 px-xl-5">
            <div class="col-md-6 col-12 py-5">
                <div class="text-center mb-2 pb-2">
                    <h2  class="section-title px-5 mb-3"><span class="bg-secondary px-2">Bạn chưa tìm được sản phẩm ưng ý ?</span></h2>
                    <p>Chúng tôi sẽ gửi ngay cho bạn thông tin khuyến mãi trong thời gian sắp tới mà bạn quan tâm.</p>
                </div>
                <form action="">
                    <div class="input-group">
                        <input  style="border-radius: 10px 0px 0px 10px"  type="text" class="form-control border-white p-4" placeholder=" Nhập địa chỉ mail của bạn tại đây...">
                        <div class="input-group-append">
                            <button style="border-radius: 0 10px 10px 0px" class="btn btn-primary px-4">Đăng Ký</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Subscribe End -->


    <!-- Products Start -->
    <!-- Products End -->


    <!-- Vendor Start -->
    <div class="container-fluid py-5">
        <div class="row px-xl-5">
            <div class="col">
                <div class="owl-carousel vendor-carousel">
                    <div class="vendor-item border p-4">
                        <img src="img/Brand/Anh1.jpg" alt="">
                    </div>
                    <div class="vendor-item border p-4">
                        <img src="img/Brand/Anh2.jpg" alt="">
                    </div>
                    <div class="vendor-item border p-4">
                        <img src="img/Brand/Anh3.png" alt="">
                    </div>
                    <div class="vendor-item border p-4">
                        <img src="img/Brand/Anh4.png" alt="">
                    </div>
                    <div class="vendor-item border p-4">
                        <img src="img/Brand/Anh5.jpg" alt="">
                    </div>
                    <div class="vendor-item border p-4">
                        <img src="img/Brand/anh6.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Vendor End -->


    <!-- Footer Start -->

    <div style="padding-left: 0;padding-right: 0%;" class="container-fluid bg-secondary text-dark mt-5 pt-5">
        <div class="row px-xl-5 pt-5">
            <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                <a href="" class="text-decoration-none">
                    <img width="400" src="img/logo.png" >
                </a>
                <p>Chúng tôi luôn trân trọng và mong đợi nhận được mọi ý kiến đóng góp từ khách hàng để có thể nâng cấp trải nghiệm dịch vụ và sản phẩm tốt hơn nữa.</p>
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
                            <a class="text-dark mb-2" href="#"></i>Chính sách  khuyến mãi</a>
                            <a class="text-dark mb-2" href="#"></i>Hướng dẫn mua hàng</a>
                            <a class="text-dark" href="#"></i>Chính sách  bảo hành</a>
                        </div>

                    </div>
                    <div class="col-md-4 mb-5">
                        <h5  class="font-weight-bold text-dark mb-4" style="text-align: center">Đăng Ký Nhận Thông Tin</h5>
                        <form action="">
                            <div class="form-group">
                                <input type="text" class="form-control border-0 py-4" placeholder="Tên của bạn" required="required" />
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control border-0 py-4" placeholder="Email của bạn"
                                       required="required" />
                            </div>
                            <div>
                                <button class="btn btn-primary btn-block border-0 py-3" style="border-radius: 10px ;height: 40px" type="submit">Đăng Ký Bây Giờ</button>
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
                <p>2023 © All Rights Reserved | Designed and Developed by :Lê Đình Nhựt Tiến, Bùi Quốc Long, Nguyễn Thùy Linh</p>
            </div>
        </div>
    </div>
    <!-- Footer End -->

</div>

<!-- Back to Top -->
<a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="mail/jqBootstrapValidation.min.js"></script>
<script src="mail/contact.js"></script>

<!-- Template Javascript -->
<script src="js/main.js"></script>
<script type="text/javascript" src="https://popupsmart.com/freechat.js"></script><script> window.start.init({ title: "Xin Chào", message:
        "Chúng tôi có thể giúp gì cho bạn ? Xin để lại lại câu hỏi.", color: "#1C86FA", position: "left", placeholder: "Viết tin nhắn của bạn", withText: "Viết bằng", viaWhatsapp:
        "hoặc liên hệ chúng tôi qua", gty: "đế của bạn", awu: "và viết cho chúng tôi", connect: "Kết nối ngay bây giờ", button: "Viết cho chúng tôi", device: "everywhere",
    logo: "https://d2r80wdbkwti6l.cloudfront.net/pTmhkmIzK9pqU36Pv1Zl93h2oBNK9DFU.jpg", services:
        [{"name":"whatsapp","content":null}]})</script>
</body>

</html>