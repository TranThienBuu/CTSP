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
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Cao Linh Chi Đông Trùng Hạ Thảo Hàn Quốc</a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://kgin.com.vn/wp-content/uploads/2021/09/kgin-cao-linh-chi-dtht-dai-dien-2.jpg" alt="">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>Cao Linh Chi Đông Trùng Hạ Thảo Hàn Quốc</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E"> Pocheon</b> </p>
                <p>Xuất xứ: Hàn Quốc</p>
                <p>Trọng lượng: 250g</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">850,000</b> </p>
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
            <img src="https://laza.vn/uploads/product/images/cao-hong-sam-/cao_linh_chi_dong_trung_ha_thao_hop_5_lo_01.jpg" alt="Mô tả hình ảnh" width="1200" height="668">
            <p><i class="bi bi-magic"></i><b>Cao Linh Chi Đông Trùng Hạ Thảo Hàn Quốc</b> Cao linh chi đông trùng hạ thảo Hàn Quốc hộp 5 lọ có thành phần được chiết xuất từ 2 loại thảo
                dược quý là Đông Trùng Hạ Thảo và Linh Chi Hàn Quốc. Tạo nên sản phẩm cao cấp giúp bồi bổ sức khỏe và hỗ trợ trị bệnh cho cơ thể.</p>

            <p><i class="bi bi-magic"></i><b>Cao Linh Chi Đông Trùng Hạ Thảo Hàn Quốc</b> Giúp hỗ trợ cải thiện hệ miễn dịch, hỗ trợ tăng cừng chức năng gan và thận, hỗ trợ hồi phục
                sinh lực và phục hồi cơ thể suy nhược… Sản phẩm được nhập khẩu chính hãng từ Hàn Quốc. </p>

            <p><i class="bi bi-magic"></i><b>Cao Linh Chi Đông Trùng Hạ Thảo Hàn Quốc</b> Là quà tặng sức khỏe cao cấp cho người thân, bạn bè, đối tác khách hàng, tặng sếp trong các dịp lễ tết.</p>
        </div>

        <div class="congdung">
            <b>Công dụng Cao Linh Chi Đông Trùng Hạ Thảo Hàn Quốc</b>

            <p><i class="bi bi-dot"></i>Cao Linh Chi Đông Trùng Hạ Thảo Hàn Quốc là sản phẩm bổ sung dinh dưỡng có tác dụng:<br>
                <i class="bi bi-check-lg"></i>Hỗ trợ bổ thận tráng dương, cải thiện tình trạng cho nam giới.<br>
                <i class="bi bi-check-lg"></i>Hỗ trợ tăng khả năng miễn dịch, Hỗ trợ hạn chế lão hóa, tăng tuổi thọ và sự minh mẫn.<br>
                <i class="bi bi-check-lg"></i>Hỗ trợ bảo vệ niêm mạc dạ dày, ruột, chất độc do ăn uống, nhuận tràng tiêu hóa tốt.<br>
                <i class="bi bi-check-lg"></i>Nâng cao thể trạng cho gân cốt yếu mềm, đau lưng, mỏi gối.<br>
                <i class="bi bi-check-lg"></i> Tốt cho hệ hô hấp, Hỗ trợ ổn định điều hoà huyết áp, tốt cho người bệnh tim mạch.<br>
                <i class="bi bi-check-lg"></i>Hỗ trợ nhanh lành vết thương sau mổ, phục hồi sau mổ, tai nạn.<br>
                <i class="bi bi-check-lg"></i>Dùng cho cả nam và nữ từ trên 14 tuổi trở lên.<br>
                <i class="bi bi-check-lg"></i>Làm đẹp da và điều hoà nội tiết cho phụ nữ, rất tốt cho phụ nữ tiền mãn kinh, mãn kinh và những người ăn kiêng.<br>
                <i class="bi bi-check-lg"></i>Tốt cho những người bị bệnh, Hỗ trợ tuyệt vời cho người bị gan, thận, mật suy.<br>
                <i class="bi bi-check-lg"></i>Là sản phẩm số 1 cho những người đang trong thời gian ăn kiêng chống béo phì.</p>
        </div>


        <div class="congdung">
            <b>Đối tượng sử dụng Cao Linh Chi Đông Trùng Hạ Thảo Hàn Quốc</b>
            <p><i class="bi bi-caret-right-square-fill"></i>Người bị mỡ máu, huyết áp cao có nguy cơ tai biến và đột quỵ.<br>
                <i class="bi bi-caret-right-square-fill"></i>Người mắc bệnh về đường.<br>
                <i class="bi bi-caret-right-square-fill"></i>Người bị suy gan, chức năng gan yếu. Dùng đông trùng hạ thảo có tác dụng Hỗ trợ thải độc, mát gan, chống dị ứng.<br>
                <i class="bi bi-caret-right-square-fill"></i>Hỗ trợ phục hồi nhanh sức khỏe cho người lao động nặng nhọc cả về thể lực lẫn trí óc. </p>
        </div>

        <div class="congdung">
            <b>Cách sử dụng Cao Linh Chi Đông Trùng Hạ Thảo Hàn Quốc</b>
            <p><i class="bi bi-caret-right-square-fill"></i>Mỗi ngày sử dụng 1 – 2 lần, mỗi lần pha từ 1 – 2 thìa Cao Linh Chi Đông Trùng Hạ Thảo với 70ml nước ấm hoặc lạnh đều được.<br>
                <i class="bi bi-caret-right-square-fill"></i> Để sản phẩm phát huy công dụng tốt nhất nen uống sau khi ăn 20 – 30 phút.<br>
                <i class="bi bi-caret-right-square-fill"></i>Sản phẩm thích hợp dùng cho cả nam và nữ trên 14 tuổi trở lên.<br>
                <i class="bi bi-caret-right-square-fill"></i>Phụ nữ đang mang thai và chon con bú nên tham khảo ý kiến bác sĩ trước khi sử dụng.</p>
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
