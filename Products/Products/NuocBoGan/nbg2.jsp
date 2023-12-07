<%@ page import="com.hcmuaf.login.User" %>
<%@ page import="com.hcmuaf.ControllerDAO" %>
<%@ page import="com.hcmuaf.Product.Category" %>
<%@ page import="java.util.List" %>
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
                    <a class="nav-link" href="#"style="color: #BF1E2E;">HỆ THỐNG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"style="color: #BF1E2E;">LIÊN HỆ</a>
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
            <li class="breadcrumb-item"><a href="yx1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Thực Phẩm Chức Năng Nước Uống Bổ Gan Hepalyse II Nhật Bản 10 Chai x 50ml </a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://www.hangngoainhap.com.vn/images/202208/goods_img/3822-p2-1659672924.jpg" alt=""width="1200" height="668">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>Thực Phẩm Chức Năng Nước Uống Bổ Gan Hepalyse II Nhật Bản 10 Chai x 50ml</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E"> Zeria</b> </p>
                <p>Xuất xứ: Nhật Bản</p>
                <p>Trọng lượng: 50ml</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">600,000</b> </p>
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
            <img src="https://chego.vn/media/product/914_b____gan_n_____c______2.jpg" alt="">
            <p><i class="bi bi-magic"></i><b>Thực Phẩm Chức Năng Nước Uống Bổ Gan Hepalyse II Nhật Bản</b> Nước uống Zeria Hepalyse II giúp ổn định màng tế bào gan, ngăn
                cản sự xâm nhập của các chất độc vào gan, bảo vệ gan trước các chất độc hại đi vào cơ thể. Đồng thời, thúc đẩy phục hồi các tế bào gan đã bị phá hủy và kích thích sự phát triển của các tế bào gan mới thay thế, giữ cho gan ổn định chức năng của mình, giúp cơ thể khỏe mạnh.</p>
            <p><i class="bi bi-magic"></i><b>Thực Phẩm Chức Năng Nước Uống Bổ Gan Hepalyse II Nhật Bản</b> Nước uống tăng tổng hợp Protein ở tế bào gan do kích thích hoạt động của RNA polymerase, góp phần giải độc cho gan. Chống peroxyd hóa lipid, tăng khả năng oxy hóa acid
                béo của gan, làm ổn định tế bào gây viêm, ức chế phản ứng viêm, giảm nồng độ enzym gan, giúp cải thiện các triệu chứng của gan như: gan nhiễm mỡ, viêm gan.</p>
        </div>

        <div class="congdung">
            <b>Công dụng: </b>

            <p><i class="bi bi-dot"></i>Công dụng của nước uống bổ gan Zeria Hepalyse II Nhật Bản: <br>
                <i class="bi bi-check-lg"></i>Hỗ trợ phục hồi hư tổn và thúc đẩy sản sinh tế bào mới, hạn chế thẩm thấu các chất độc hại bên trong gan.<br>
                <i class="bi bi-check-lg"></i>Giảm thiểu sự hình thành và lắng đọng các sợi collagen, hạn chế nguy cơ gây xơ gan.<br>
                <i class="bi bi-check-lg"></i>Cải thiện các triệu chứng của gan như viêm gan, hỗ trợ tăng cường hoạt động của gan.<br>
                <i class="bi bi-check-lg"></i>Tăng cường khả năng đào thải độc tố do uống nhiều bia rượu, chất độc tích tụ lâu ngày.</p>
        </div>
        <div class="congdung">
            <b>Thành phần Thực Phẩm Chức Năng Nước Uống Bổ Gan Hepalyse II Nhật Bản: </b>
            <p><i class="bi bi-caret-right-square-fill"></i> Gan thuỷ phân: 200mg.<br>
                <i class="bi bi-caret-right-square-fill"></i>Chondroitin Natri Sulfat: 120mg.<br>
                <i class="bi bi-caret-right-square-fill"></i>Chiết xuất tỏi: 54mg.<br>
                <i class="bi bi-caret-right-square-fill"></i>Chiết xuất kỷ tử: 0.2ml.<br>
                <i class="bi bi-caret-right-square-fill"></i>Taurine: 1000mg.<br>
                <i class="bi bi-caret-right-square-fill"></i>Vitamin B2: 5mg.<br>
                <i class="bi bi-caret-right-square-fill"></i>Vitamin B6: 10mg.<br>
                <i class="bi bi-caret-right-square-fill"></i>Acid Nicotinic: 20mg</p>
        </div>
        <div class="congdung">
            <b>Cách dùng Thực Phẩm Chức Năng Nước Uống Bổ Gan Hepalyse II Nhật Bản: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Uống 1 chai (50ml) mỗi ngày một lần, lắc đều trước khi uống.<br>
                <i class="bi bi-caret-right-square-fill"></i>Không dùng cho người dưới 15 tuổi.</p>
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
