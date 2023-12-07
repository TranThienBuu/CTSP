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
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Nấm Linh Chi Núi Đá Vàng Hàn Quốc Túi 1 Kg</a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://kgin.com.vn/wp-content/uploads/2021/09/nam-linh-chi-nui-1.jpg" alt="">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>Nấm Linh Chi Núi Đá Vàng Hàn Quốc Túi 1 Kg</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E">Lingzhi Mushroom</b> </p>
                <p>Xuất xứ: Hàn Quốc</p>
                <p>Trọng lượng: 1kg</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">2,300,000</b> </p>
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
            <img src="https://nhansamhanquoc.vn/pic/Product/images/nam-linh-chi-nui-da-1.jpg" alt="Mô tả hình ảnh" width="1200" height="668">
            <p><i class="bi bi-magic"></i><b>Nấm Linh Chi Núi Đá Vàng </b>Nấm linh chi núi đá Hàn Quốc là thảo dược thiên nhiên lành tính và có hiệu quả tốt đối với sức khỏe. </p>

            <p><i class="bi bi-magic"></i><b>Nấm Linh Chi Núi Đá Vàng </b> Linh chi được ví như thần tiên thảo, là món quà ý nghĩa và vô cùng thiết thực dành tặng cho người thân, bạn bè, đồng nghiệp.</p>
        </div>

        <div class="congdung">
            <b>Công dụng Nấm Linh Chi Núi Đá Vàng:</b>

            <p><i class="bi bi-dot"></i>Theo các tài liệu sách đông y và dựa vào kết quả nghiên cứu dược lý của y học hiện đại, dùng nấm linh chi núi đá vàng sẽ có những tác dụng sau:<br>
                <i class="bi bi-check-lg"></i>Phòng chữa bệnh tiểu đường, giảm đường huyết trong máu.<br>
                <i class="bi bi-check-lg"></i>Giải độc gan, hiệu quả tốt với các bệnh về gan như viêm gan, xơ gan, gan nhiễm mỡ.<br>
                <i class="bi bi-check-lg"></i>Ngăn chặn quá trình làm lão hóa, giúp cơ thể luôn tươi trẻ.<br>
                <i class="bi bi-check-lg"></i>Làm sạch ruột, chống táo bón mãn tính và tiêu chảy.<br>
                <i class="bi bi-check-lg"></i>Làm da dẻ hồng hào, chống các bệnh ngoài da như dị ứng, mụn trứng cá.<br>
                <i class="bi bi-check-lg"></i>Tác dụng như một chất ôxi hóa khử các gốc tự do trong cơ chế chống lão hóa..<br>
                <i class="bi bi-check-lg"></i>Chống béo phì.<br>
                <i class="bi bi-check-lg"></i>Chống nhiễm mỡ, xơ mạch và các biến chứng (bệnh xơ vữa động mạch vành).
                Có tác dụng đặc biệt trong việc loại trừ chất cholesterol trong máu và các thành mạch, trợ tim, lọc sạch máu, làm giảm cholesterol, giảm xơ cứng thành động mạch, thúc đẩy quá trình lưu thông máu, tăng cường tuần hoàn máu.</p>
        </div>


        <div class="congdung">
            <b>Đối tượng sử dụng Nấm Linh Chi Núi Đá Vàng: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Người muốn tăng cường sức khỏe, bồi bổ cơ thể. <br>
                <i class="bi bi-caret-right-square-fill"></i>Người muốn bổ sung năng lượng tức thì, chống lại cảm giác mệt mỏi.<br>
                <i class="bi bi-caret-right-square-fill"></i>Người mới ốm dậy cần phục hồi sức khỏe.<br>
                <i class="bi bi-caret-right-square-fill"></i>Người bị nóng trong, tiêu hóa kém.<br>
                <i class="bi bi-caret-right-square-fill"></i>Người muốn có làn da mịn màng.</p>

        </div>
        <div class="congdung">
            <b>Cách dùng Nấm Linh Chi Núi Đá Vàng: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Có thể dùng nấm nấu lấy nước để uống hằng ngày, hãm như trà, ngâm rượu hoặc xay nhuyễn để nấu canh, hầm với xương thịt tạo thành món súp.<br>
                <i class="bi bi-caret-right-square-fill"></i>Để giảm vị đắng trong nấm khi chế biến có thể thêm một ít táo đỏ, hồng sâm hay cảm thảo.</p>

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