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
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Hồng Sâm Tẩm Mật Ong Hàn Quốc 6 Năm Tuổi ACHIMMADANG 300G </a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://linhchihoanggia.com/data/Product/1682572709.jpg" alt="">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>Hồng Sâm Tẩm Mật Ong Hàn Quốc 6 Năm Tuổi ACHIMMADANG 300G </h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E">ACHIMMADANG</b> </p>
                <p>Xuất xứ: Hàn Quốc</p>
                <p>Trọng lượng: 300g</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">1,100,000</b> </p>
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
            <img src="https://linhchihoanggia.com/data/images/sam-cu-tam-mat-ong-6-nam-tuoi-achimmadang-300g%20(2).jpg" alt="Mô tả hình ảnh" width="1200" height="668">
            <p><i class="bi bi-magic"></i><b>Hồng Sâm Tẩm Mật Ong Hàn Quốc ACHIMMADANG</b> Sâm củ tẩm mật ong 6 năm tuổi Geumsan 8 củ lớn 300g giúp hỗ trợ bồi bổ sức
                khỏe cho người đang có thể trạng yếu hay người cao tuổi, tăng khả năng thể lực và nâng cấp sức khỏe cho mọi cá nhân.</p>

            <p><i class="bi bi-magic"></i><b>Hồng Sâm Tẩm Mật Ong Hàn Quốc ACHIMMADANG</b>Mang đến sự trẻ trung với làn da hồng hào tự nhiên nếu sử dụng đều đặn.</p>
        </div>

        <div class="congdung">
            <b>Công dụng Hồng Sâm Tẩm Mật Ong Hàn Quốc ACHIMMADANG:</b>

            <p><i class="bi bi-dot"></i>Tác dụng Hồng sâm củ tẩm mật ong Geumsan sâm Hàn Quốc 6 năm tuổi 8 củ lớn hộp 300g::<br>
                <i class="bi bi-check-lg"></i>Thúc đẩy chu trình chuyển hóa của cơ thể, làm mát, ấm & thanh lọc thể chất, cân bằng trong cơ thể.<br>
                <i class="bi bi-check-lg"></i>Hỗ trợ tăng sức khỏe & phục hồi thể trạng, hỗ trợ tăng sức khỏe & hoàn lực cho cơ thể 1 cách hiệu quả.<br>
                <i class="bi bi-check-lg"></i>Bổ trợ ổn định tuần hoàn máu, giúp máu huyết lưu thông tốt mà còn có công dụng hỗ trợ ngăn ngừa sự kết dính tiểu
                cầu,nguyên nhân của các triệu chứng về tim mạch & bệnh xơ vữa động mạch. Ổn định huyết áp.<br>
                <i class="bi bi-check-lg"></i>Sâm củ tẩm mật ong Geumsan còn làm cải tiến và phát triển trí não, tăng khả năng nhớ cho người sử dụng.<br>
                <i class="bi bi-check-lg"></i>Bổ trợ thanh lọc cơ thể và gan, cải thiện làn da trở nên trẻ đẹp và bổ trợ ngăn chặn sự hình thành nếp nhăn của làn da.<br>
                <i class="bi bi-check-lg"></i>Saponin trong sâm củ tẩm mật ong Hàn Quốc giúp làm tăng chuyển động enzym liên quan tới sự thoái hóa, bổ trợ gan thanh lọc tính xấu của thực phẩm.</p>
        </div>


        <div class="congdung">
            <b>Hướng dẫn sử dụng Hồng Sâm Tẩm Mật Ong Hàn Quốc ACHIMMADANG: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Cắt củ sâm thành Các lát mỏng mảnh để nhai hoặc ngậm ăn trực tiếp. Mỗi lần dùng 2-3 lát ( 5gr – 10 gr )<br>
                <i class="bi bi-caret-right-square-fill"></i>Có thể ngâm với nước ấm rồi sử dụng tùy sở thích. Dùng khoảng 10g/1 ngày.<br>
                <i class="bi bi-caret-right-square-fill"></i>Không nên sử dụng dòng sản phẩm vào buổi tối vì dễ khiến cho mất ngủ.<br>
                <i class="bi bi-caret-right-square-fill"></i>Chức năng mang lại có thể khác nhau tuỳ cơ địa của người tiêu dùng.<br>
                <i class="bi bi-caret-right-square-fill"></i>Dòng sản phẩm này không phải là thuốc, và không có tác dụng thay thế thuốc chữa bệnh.</p>

        </div>
        <div class="congdung">
            <b>Đối tượng sử dụng Hồng Sâm Tẩm Mật Ong Hàn Quốc ACHIMMADANG: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Đây là sản phẩm chất lượng cho mọi đối tượng người sử dụng, nhất là người lớn tuổi, sức đề
                kháng giảm bớt, và người đang trong thời kỳ hồi phục sức đề kháng sau khoản thời gian bệnh.</p>

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
