<%@ page import="com.hcmuaf.login.User" %>
<%@ page import="com.hcmuaf.ControllerDAO" %>
<%@ page import="com.hcmuaf.Product.Category" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 10/31/2023
  Time: 9:09 PM
  To change this template use File | Settings | File Templates.
--%>
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
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Nấm lim xanh tự nhiên Tiên Phước Quảng Nam 100% loại đặc biệt tai nấm to hộp 400g </a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="../../img/namlinhxanh2bich.png" alt="">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>Nấm lim xanh tự nhiên Tiên Phước Quảng Nam 100% loại đặc biệt tai nấm to hộp 400g</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E"> Nấm lim xanh Quảng Nam</b> </p>
                <p>Xuất xứ: Việt Nam</p>
                <p>Trọng lượng: 200ml</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">4.700.000 VND</b> </p>
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
            <img src="../../img/namlinhxanh2bich.png" alt="">
            <p><i class="bi bi-magic"></i><b>Nấm lim xanh</b> là một loại nấm có tên khoa học là Tricholoma matsutake, thường được tìm thấy ở khu vực rừng ôn
                đới. Đây là loại nấm có giá trị cao trong ẩm thực, đặc biệt phổ biến trong ẩm thực Nhật Bản. Nấm lim xanh
                có mùi thơm độc đáo và hương vị
                đặc trưng, thường được sử dụng trong các món ăn truyền thống và cao cấp.</p>

            <p><i class="bi bi-magic"></i><b>Nấm lim xanh</b> Quảng Nam có thể là một loại nấm lim xanh được tìm thấy hoặc trồng ở tỉnh Quảng Nam, Việt Nam. Quảng Nam nằm ở khu vực có khí hậu ôn đới và có nền văn hóa ẩm thực đặc sắc. Nếu nấm lim xanh được
                nuôi trồng ở đây, có thể có những đặc điểm độc đáo do ảnh hưởng của điều kiện tự nhiên và môi trường địa phương.</p>
        </div>

        <div class="congdung">
            <b>Công dụng Nấm lim xanh tự nhiên Tiên Phước Quảng Nam 100%  loại đặc biệt nấm to 400g:</b>

            <p><i class="bi bi-dot"></i>Nấm lim xanh là một loại nấm quý, có rất nhiều công dụng đối với sức khỏe. Trong đó, nấm lim xanh loại Gold là loại nấm có giá trị cao nhất, với hàm lượng dược chất cao nhất.
                Công dụng của nấm lim xanh loại Gold:<br>
                <i class="bi bi-check-lg"></i>Hỗ trợ điều trị bệnh về gan: Nấm lim xanh giúp tăng cường chức năng gan, giải độc gan, ngăn ngừa xơ gan, gan nhiễm mỡ, viêm gan.<br>
                <i class="bi bi-check-lg"></i>Hỗ trợ điều trị bệnh về thận: Nấm lim xanh giúp tăng cường chức năng thận, hỗ trợ điều trị suy thận, sỏi thận.<br>
                <i class="bi bi-check-lg"></i>Hỗ trợ điều trị bệnh về hô hấp: Nấm lim xanh giúp giảm ho, long đờm, hỗ trợ điều trị viêm phổi, hen suyễn.<br>
                <i class="bi bi-check-lg"></i>Hỗ trợ điều trị bệnh về tiêu hóa: Nấm lim xanh giúp cải thiện tiêu hóa, hỗ trợ điều trị viêm loét dạ dày, tá tràng.<br>
                <i class="bi bi-check-lg"></i>Hỗ trợ điều trị bệnh về thần kinh: Nấm lim xanh giúp cải thiện trí nhớ, tăng cường sức khỏe thần kinh.<br>
                <i class="bi bi-check-lg"></i>Hỗ trợ điều trị bệnh về nội tiết: Nấm lim xanh giúp cân bằng nội tiết tố, hỗ trợ điều trị các bệnh phụ khoa, bệnh tuyến giáp.<br>
                <i class="bi bi-check-lg"></i>Hỗ trợ điều trị bệnh về khối u: Nấm lim xanh giúp hỗ trợ điều trị ung thư, ngăn ngừa khối u tái phát.</p>
        </div>

        <div class="congdung">
            <b>Hưỡng dẫn sử dụng: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>
                Chế biến nấm lim xanh tự nhiên trước khi đưa vào sử dụng:
                Nấm lim xanh cắt bỏ gốc, nấu bao nhiêu thì lấy bấy nhiêu rửa sạch bụi bẩn rồi tiến hành thái nấm lim xanh thành những miếng mỏng
                Nấm lim xanh cho vào nước nấu sôi rồi cho lửa nhỏ dần, đun sôi lửa nhỏ tầm 20-30 phút.
                Lượng nước thì cho đủ uống trong ngày 1-2 lít, tùy thuộc vào từng người uống đậm hay loãng có thể điều chỉnh tăng giảm nấm và nước cho phù hợp.
                Ngoài cách nấu nước sôi thì có thể cho nấm vào bình thủy hãm uống dân trong ngày
                Để có cách sử dụng nấm lim xanh mang lại hiệu quả, bạn làm kiên trì trong 1 tháng nhé, và kiêng rượu bia, những đồ có chứa các chất kích thích như cồn ...<br>
                <i class="bi bi-caret-right-square-fill"></i>
                Cách dùng nấm lim xanh dạng bột:
                Bước 1: Lấy nấm lim xanh cắt bỏ gốc, rửa sạch để khô nước rồi nghiền thành bột.
                Bước 2: Lấy ít bột cho vào túi lọc chế nước sôi dùng để uống hàng ngày.
            </p>
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
