<%@ page import="com.hcmuaf.ControllerDAO" %>
<%@ page import="com.hcmuaf.Product.Category" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hcmuaf.login.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
    <link rel="stylesheet" href="../../css/main.css">
    <link rel="stylesheet" href="../../css/product.css">
</head>
<body>
<header id="header">
    <div class="header-menu">

        <div class="logo">
            <a href="index.jsp"><i class="bi bi-yin-yang" style="font-size: 30px; color: #BF1E2E;"></i></a>
        </div>

        <div class="menu">
            <ul class="nav nav-pills">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="index.jsp" style="color: #BF1E2E;">TRANG CHỦ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Productss.jsp"style="color: #BF1E2E;">SẢN PHẨM</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cart.jsp"style="color: #BF1E2E;">CART </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="policy.jsp"style="color: #BF1E2E;">CHÍNH SÁCH</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.jsp"style="color: #BF1E2E;">LIÊN HỆ</a>
                </li>
            </ul>
        </div>

        <div class="search">
            <form action="./search" method="post">
                <label>
                    <input type="text" placeholder="Tìm kiếm" name="text">
                </label>
                <button type="submit" style="height: 30px;
    border: none;
    background-color: snow;"><i class="bi bi-search"></i></button>
            </form>
        </div>

        <div class="account">
            <div class="sign-in">
                <% User auth = (User) session.getAttribute("auth"); %>
                <% if(auth == null){ %>
                <a href="sign-up.jsp" style="color:#BF1E2E;
    text-decoration: none;
    font-size: 20px;">Đăng ký</a>
                <a href="login.jsp" style="color: #BF1E2E;
    text-decoration: none;
    font-size: 20px;">Đăng nhập</a>
                <% } else { %>
                <p>Chào bạn: <%= auth.getFullname() %> </p>
                <a href="logout.jsp">Đăng xuất</a>
                <% } %>
            </div>
        </div>
        <div class="shopping-img">
            <a href="cart.jsp"><i class="bi bi-bag-fill" style="font-size: 30px"></i></a>
        </div>
    </div>
</header>

<div class="abc" style="padding: 20px 100px; border: 1px solid aliceblue;">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../../index.jsp" style="color: black;text-decoration: none; font-size: 16px;">Trang chủ</a></li>
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Nước Hồng Sâm Linh Chi Táo Đỏ Hàn Quốc Hộp 30 Gói x 80ml</a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://laza.vn/storage/product/2020-04-17/nuoc-hong-sam-linh-chi-tao-do-han-quoc-hop-30-goi-x-80ml-acgygwysyxqb-600x600.jpg" alt="">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>Nước Hồng Sâm Linh Chi Táo Đỏ Hàn Quốc Hộp 30 Gói x 80ml</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E">Công ty sâm Hàn Quốc</b> </p>
                <p>Xuất xứ: Hàn Quốc</p>
                <p>Trọng lượng: 80ml</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">750,000</b> </p>
                <label for="quantity">Số lượng: </label>
                <button class="quantity-btn" onclick="decrement()">-</button>
                <input type="number" id="quantity" name="quantity" value="1" min="1" class="quantity-input">
                <button class="quantity-btn" onclick="increment()">+</button>

                <div class="buy-item">
                    <a href="#"><i class="bi bi-cart"></i>Mua</a>
                </div>
                <div class="buy-item">
                    <a href="#"><i class="bi bi-cart"></i>add cart</a>
                </div>
            </div>


        </div>
    </div>

    <div class="information-product-item">
        <b style="font-size: 26px; color: #BF1E2E">Chi tiết sản phẩm</b>
        <div class="congdung">
            <img src="https://nhansamthinhphat.com/uploads/product/images/nuoc-hong-sam-linh-chi-tao-do-han-quoc-hop-30-goi-x-80ml-07.jpg" alt="Mô tả hình ảnh" width="1200" height="668">
            <p><i class="bi bi-magic"></i><b>Nước Hồng Sâm Linh Chi Táo Đỏ Hàn Quốc</b>Thiết kế bao bì, mẫu mã đẹp sang trọng, làm quà tặng cho Ông  Bà,Cha Mẹ, những người thân yêu rất phù hợp. </p>

            <p><i class="bi bi-magic"></i><b>Nước Hồng Sâm Linh Chi Táo Đỏ Hàn Quốc</b>Có hơn 30.000 người sử dụng trong 6 năm quá, khẳng định hiệu quả mang lại cho người sử dụng.</p>
        </div>

        <div class="congdung">
            <b>Công dụng Nước Hồng Sâm Linh Chi Táo Đỏ Hàn Quốc:</b>

            <p><i class="bi bi-dot"></i>Hồng sâm cao cấp, kết hợp Nâm Linh Chi và Táo đỏ, giúp cải thiện sức khỏe hiệu quả:<br>
                <i class="bi bi-check-lg"></i>Bồi bổ nguyên khí, tăng cường sinh lực, tăng sức đề kháng, giúp cơ thể tỉnh táo và phục hồi sức khỏe, tăng sức bền cho cơ thể.<br>
                <i class="bi bi-check-lg"></i>Giúp bổ sung tinh chất saponin, và các acid amin cần thiết cho người già, người suy nhược, người mới ốm dậy, người có thể trạng yếu, học sinh , sinh viên mùa thi cử.<br>
                <i class="bi bi-check-lg"></i>Chống mệt mỏi, chống stress, giúp chúng ta luôn tràn đầy năng lượng cho 1 ngày mới năng động.</p>
        </div>


        <div class="congdung">
            <b>Đối tượng sử dụng Nước Hồng Sâm Linh Chi Táo Đỏ Hàn Quốc: </b>
            <p><i class="bi bi-caret-right-square-fill"></i> Người mệt mỏi suy nhược, người có sức khỏe kém, người mới ốm dậy.<br>
                <i class="bi bi-caret-right-square-fill"></i>Đặc biệt hiệu quả cho những người già, người suy nhược.<br>
                <i class="bi bi-caret-right-square-fill"></i>Ngưởi lao động trí óc và lao động chân tay cường độ cao.<br>
                <i class="bi bi-caret-right-square-fill"></i> Người cần chống lão hóa, tăng cường sức khỏe.</p>

        </div>
        <div class="congdung">
            <b>Cách dùng Nước Hồng Sâm Linh Chi Táo Đỏ Hàn Quốc: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Uống 1 gói mỗi ngày vào buổi sáng, người suy nhược có thể 2 gói sáng và trưa.<br>
                <i class="bi bi-caret-right-square-fill"></i>Không dùng sau 15g mỗi ngày.<br>
                <i class="bi bi-caret-right-square-fill"></i>Tiện dụng mang theo mọi lúc mọi nơi, uống trực tiếp không cần pha loãng.</p>

        </div>

    </div>
</div>

<footer style="background-color: #BF1E2E;">
    <div class="footer" style="display: flex;
    justify-content: space-around;
    align-items: center;">
        <div class="footer-category">
            <ul style="list-style: none; padding: 30px">
                <%
                    ControllerDAO dao = new ControllerDAO();
                    List<Category> list = dao.getNAMECategory();
                    for (Category p: list) {
                %>
                <li><i class="bi bi-caret-right-fill"></i><a class="content-item" href="#" style="padding: 10px;
                        color: white;
                        text-decoration: none"><%=p.getName()%></a></li>
                <% }%>
            </ul>
        </div>

        <div class="footer-information">
            <ul style="list-style: none; padding: 30px">
                <li style="padding: 10px;"><i class="bi bi-geo-alt"></i><a class="content-item" href="#" style="padding: 10px;
                        color: white;
                        text-decoration: none">Địa chỉ: 123 đường ABC, Quận Gò Vấp, TPH.HCM</a></li>

                <li style="padding: 10px"><i class="bi bi-telephone-fill"></i><a class="content-item" href="#" style="padding: 10px;
                        color: white;
                        text-decoration: none">Số điện thoại: 01234567812</a></li>

                <li style="padding:10px"><i class="bi bi-envelope"></i><a class="content-item" href="#" style="padding: 10px;
                        color: white;
                        text-decoration: none">Địa chỉ email:index@gmail.com</a></li>

            </ul>
        </div>

        <div class="footer-question">
            <h2 style="color: white;">Hỗ trợ khách hàng</h2>
            <label>
                <input type="text" required="Nhập email vào đây">
            </label>
            <input type="submit" style="border-radius: 20px; border: none">
        </div>

    </div>
</footer>
<script>
    function increment() {
        var quantity = document.getElementById('quantity');
        quantity.value = parseInt(quantity.value) + 1;
    }

    function decrement() {
        var quantity = document.getElementById('quantity');
        if (parseInt(quantity.value) > 1) {
            quantity.value = parseInt(quantity.value) - 1;
        }
    }
</script>
</body>
</html>
