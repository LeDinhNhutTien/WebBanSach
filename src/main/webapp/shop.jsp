<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <link rel="icon" href="img/book.jpg">
    <title>Mua Sách Online Nhanh Nhất</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

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
    <link rel="stylesheet" href="css/product.css">
</head>

<body>
<!-- Topbar Start -->
<div class="header-container" style="margin: auto">
    <div class="container-fluid container-header ">
        <div class="row align-items-center py-3 px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a href="home" class="text-decoration-none">
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
                    <i class="fas blue fa-solid fa-user text-primary"></i>
                    <span class="badge" >Tài khoản</span>
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
                            <a href="shop.jsp" class="nav-link " data-toggle="dropdown">Sản phẩm</a>
                        </div>
                        <a href="detail.html" class="nav-item nav-link">Giới thiệu</a>
                        <a href="contact.html" class="nav-item nav-link">Liên hệ</a>
                    </div>
                </div>
            </nav>

            <div class="col-lg-3 col-6 ml-5 text-right " style="display: flex;padding: 0 15px;justify-content: flex-end ;gap: 50px">
                <a href="login" class="btn border border-back float-left">
                    Đăng nhập
                </a>
                <a href="register-account.html" class="btn border border-back">
                    Đăng ký
                </a>
            </div>
        </div>
    </div>
</div>
<!-- Topbar End -->

<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 250px;margin-top: 111px">
        <h1 class="font-weight-semi-bold text-uppercase mb-3">Cửa hàng của chúng tôi</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="home" style="font-size: 15px">Trang chủ</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0"><a href="shop.jsp" style="font-size: 15px">Sản phẩm</a></p>
        </div>
    </div>
</div>
<!-- Page Header End -->

    <!-- Shop Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <!-- Shop Sidebar Start -->
            <div class="col-lg-2 col-md-12">
                <div class="shop-categories">
                   
                </div>
            </div>

            <div class="col-lg-9 col-md-12">
                <div class="row pb-3">
                    <div class="col-12 pb-1">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <form action="">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Tìm kiếm theo tên">
                                    <div class="input-group-append">
                                                <span class="input-group-text bg-transparent text-primary">
                                                    <i class="fa fa-search"></i>
                                                </span>
                                    </div>
                                </div>
                            </form>
                            <div class="dropdown ml-4">
                                <button class="btn border dropdown-toggle" type="button" id="triggerId"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Lọc theo
                                </button>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="triggerId">
                                    <a class="dropdown-item" href="#">Sản phẩm mới</a>
                                    <a class="dropdown-item" href="#">Phổ biến</a>
                                    <a class="dropdown-item" href="#">Đánh giá tốt nhất</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="product-shop">
                        <div class="container p-0">
                            <div class="product-hot">
                                <div class="shop-overview">
                                    <ul class="products">
                                        <c:forEach items="${listProduct}" var="o">
                                            <li style="width: 31.5%; height: 100%;margin: 30px 0;">
                                                <div class="product-item" >
                                                   <div class="product-image" style="position: relative">
                                                       <a href="" class="product-image-maskup">
                                                           <img src="${o.image}">
                                                       </a>
                                                       <div class="product-image-maskup-info">
                                                           <h5 style="color: #c9bdfb;">${o.name}</h5>
                                                           <h5 style="color: rgb(11, 220, 11);">Na Gyeo Ul</h5>
                                                           <p style="font-size: 17px;">
                                                               Đừng Để Tâm Trạng Trở Thành Thái Độ Mỗi chúng ta ai cũng từng trăn trở tại sao lại khó yêu thương chính mình đến vậy. Nhưng thời gian sẽ khiến bạn nhận ra đây là việc không ai có thể làm thay ngoài bản thân mình. Yêu thương bản thân kỳ thực chỉ đơn giản
                                                               là quan tâm đến cuộc đời của mình.</p>
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
                               </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 pb-1">
                        <nav aria-label="Page navigation">
                            <ul class="pagination justify-content-center mb-3">
                                <li class="page-item disabled">
                                    <a class="page-link" href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                </li>
                                <li class="page-item active"><a class="page-link" href="shop.jsp">1</a></li>
                                <li class="page-item"><a class="page-link" href="shop2.html">2</a></li>
                                <li class="page-item"><a class="page-link" href="shop3.html">3</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- Shop Product End -->
        </div>
    </div>
    <!-- Shop End -->

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
                <p>2022 © All Rights Reserved | Designed and Developed by :Lê Đình Nhựt Tiến, Bùi Quốc Long, Nguyễn Thùy Linh</p>
            </div>
        </div>
    </div>
    <!-- Footer End -->

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
<!--PupUpSmart-->
<script type="text/javascript" src="https://popupsmart.com/freechat.js"></script><script> window.start.init({ title: "Xin Chào", message:
        "Chúng tôi có thể giúp gì cho bạn ? Xin để lại lại câu hỏi.", color: "#1C86FA", position: "left", placeholder: "Viết tin nhắn của bạn", withText: "Viết bằng", viaWhatsapp:
        "hoặc liên hệ chúng tôi qua", gty: "đế của bạn", awu: "và viết cho chúng tôi", connect: "Kết nối ngay bây giờ", button: "Viết cho chúng tôi", device: "everywhere",
    logo: "https://d2r80wdbkwti6l.cloudfront.net/pTmhkmIzK9pqU36Pv1Zl93h2oBNK9DFU.jpg", services:
        [{"name":"whatsapp","content":null}]})</script>
</body>

</html>