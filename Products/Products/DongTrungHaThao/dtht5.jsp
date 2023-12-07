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
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Chất Chiết Đông Trùng Hạ Thảo Hộp 20 Ống Bio-science </a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://vhpginseng.com/wp-content/uploads/2018/08/%C4%90%C3%B4ng-tr%C3%B9ng-h%E1%BA%A1-th%E1%BA%A3o-chi%E1%BA%BFt-xu%E1%BA%A5t-20-%E1%BB%91ng-Bio-science-4.jpg" alt="">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>Chất Chiết Đông Trùng Hạ Thảo Hộp 20 Ống Bio-science</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E">Korea Ginseng Bio-Science</b> </p>
                <p>Xuất xứ: Hàn Quốc</p>
                <p>Trọng lượng: 20ml</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">1,200,000</b> </p>
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
            <img src="https://vhpginseng.com/wp-content/uploads/2018/08/%C4%90%C3%B4ng-tr%C3%B9ng-h%E1%BA%A1-th%E1%BA%A3o-chi%E1%BA%BFt-xu%E1%BA%A5t-20-%E1%BB%91ng-Bio-science-2-768x768.jpg" alt="Mô tả hình ảnh" width="1200" height="668">
            <p><i class="bi bi-magic"></i><b>Chất Chiết Đông Trùng Hạ Thảo </b> Là sản phẩm hỗ trợ cải thiện chức năng sinh lý nam, tăng cường hưng phấn,
                chống lão hóa cho phái nữ.</p>

            <p><i class="bi bi-magic"></i><b>Chất Chiết Đông Trùng Hạ Thảo </b> Chất lượng sản phẩm được Nhà sản xuất đảm bảo về mặt chất lượng, thậm chí có phần
                xuất sắc hơn so với các dòng chiết xuất sâm khác.</p>

        </div>

        <div class="congdung">
            <b>Công dụng Chất Chiết Đông Trùng Hạ Thảo :</b>

            <p><i class="bi bi-dot"></i>Tinh chất đông trùng hạ thảo chiết xuất 20 ống tăng cường sức khỏe, tăng sức đề kháng cho cơ thể.:<br>
                <i class="bi bi-check-lg"></i>Đông trùng hạ thảo Hàn Quốc tăng cường hệ hô hấp, hỗ trợ trị ho.<br>
                <i class="bi bi-check-lg"></i>Đồng thời, đông trùng hạ thảo dạng ống làm chậm quá trình lão hóa, hạn chế bệnh tật tuổi già.<br>
                <i class="bi bi-check-lg"></i>Dùng chiết xuất đông trùng hạ thảo còn làm giảm đường máu, giảm mỡ máu, chống xơ vữa động mạch, điều hòa huyết áp.<br>
                <i class="bi bi-check-lg"></i>Đông trùng hạ thảo 20 ống tăng cường chức năng tiêu hóa và hấp thu các chất dinh dưỡng, tác dụng tốt với trẻ em chậm lớn.<br>
                <i class="bi bi-check-lg"></i>Với những người bị rối loạn tình dục, thận hư, liệt dương dùng đông trùng hạ thảo giúp tăng cường chức năng nam giới.<br>
                <i class="bi bi-check-lg"></i>Đông trùng hạ thảo tăng cường tác dụng an thần, trấn tĩnh thần kinh.<br>
                <i class="bi bi-check-lg"></i>Đặc biệt, dùng đông trùng hạ thảo chiết xuất giúp chống lại tác dụng xấu của tân dược đối với cơ thể , thí dụ đối với độc tính của Cephalosporin A.</p>
        </div>


        <div class="congdung">
            <b>Hướng dẫn sử dụng Chất Chiết Đông Trùng Hạ Thảo : </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Thời gian uống: Vào buổi sáng. Liều lượng, uống từ 1 – 2 ống/ ngày.<br>
                <i class="bi bi-caret-right-square-fill"></i>Sản phẩm này không phải là thuốc điều trị bệnh mà là thực phẩm tăng cường sức khỏe phòng ngừa và hỗ trợ điều trị bệnh.<br>
               <i class="bi bi-caret-right-square-fill"></i>Trước khi uống lắc đều sản phẩm.</p>

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
