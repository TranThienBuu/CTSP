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
            <li class="breadcrumb-item"><a href="yx1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Nước Uống Bổ Gan Hovenia Dulcis Thunberg Hộp 30 Gói</a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://aloola.vn/1_html/img/product/thum/1474108273_nuoc-uong-bo-gan-Hovenia%20Dulcis%20Thunberg-5.jpg" alt=""width="1200" height="668">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>Nước Uống Bổ Gan Hovenia Dulcis Thunberg Hộp 30 Gói</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E">Hovenia</b> </p>
                <p>Xuất xứ: Hàn Quốc</p>
                <p>Trọng lượng: 300g</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">650,000</b> </p>
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
            <img src="https://thuoc365.vn/wp-content/uploads/2017/04/nuoc-giai-ruou-han-quoc-hovenia-dulcis-thunberg.jpg" alt="">
            <p><i class="bi bi-magic"></i><b>Nước Uống Bổ Gan Hovenia Dulcis Thunberg</b> Nước Bổ Gan Bio Hovenia Dulcis Thunberg Hàn Quốc có tác dụng đào thải độc tố trong máu,
                thanh lọc, giải độc và bồi bổ cơ thể từ đó giúp làm sạch mụn nhọt, trứng cá cho đẹp da, chống lão hóa sớm.</p>
            <p><i class="bi bi-magic"></i><b>Nước Uống Bổ Gan Hovenia Dulcis Thunberg</b> Nước uống bổ gan Hovenia Dulcis Thunberg  là nước uống tốt cho sức khỏe với đặc tính tăng
                cường bảo vệ gan, phục hồi  các mô gan tăng cường thải độc của gan, giải rượu rất hiệu quả, sử dụng lâu dài sẽ tăng cường hệ miễn dịch của cơ thể, tăng khả năng chống lại các bệnh do virus gây ra.</p>
        </div>

        <div class="congdung">
            <b>Công dụng: </b>

            <p><i class="bi bi-dot"></i>Nước thuốc bổ gan Hovenia được dùng hàng ngày để bồi bổ gan, trợ gan yếu, mát gan tiêu độc, bồi bổ cơ thể:<br>
                <i class="bi bi-check-lg"></i>Bổ gan, tăng cường chức năng gan. Hỗ trợ điều trị trong trường hợp gan bị suy yếu hay nhiễm bệnh, bệnh nhân thời ký dưỡng bệnh suy nhược cơ thể.<br>
                <i class="bi bi-check-lg"></i>Bồi bổ cơ thể, thanh nhiệt giải độc cơ thể, đào thải các chất độc hại trong máu.<br>
                <i class="bi bi-check-lg"></i>Thuốc giải rượu bổ mát gan Hovenia có tác dụng chuyển hóa cồn thành nước. Chống ngộ độc rượu, giảm các triệu chứng sau uống rượu như buồn nôn, đau đầu, ợ nóng.<br>
                <i class="bi bi-check-lg"></i>Nhuận tràng, làm hết mụn nhọt, trứng cá, làm đẹp da phụ nữ bằng cách thải trừ chất bã nhờn, chống lão hóa sớm ở nam do lạm dụng hoặc thường xuyên dùng đồ uống có cồn.</p>
        </div>
        <div class="congdung">
            <b>Thành phần Nước Uống Bổ Gan Hovenia Dulcis Thunberg: </b>
            <p><i class="bi bi-caret-right-square-fill"></i> Hạt Hovenia Dulcis Thunberg: 130mg.<br>
                <i class="bi bi-caret-right-square-fill"></i>Quả sơn trà: 120mg.<br>
                <i class="bi bi-caret-right-square-fill"></i>Táo đỏ hàn quốc: 54mg.<br>
                <i class="bi bi-caret-right-square-fill"></i>Poevariae Radix: 20ml.<br>
                <i class="bi bi-caret-right-square-fill"></i>Địa cốt: 100mg.<br>
                <i class="bi bi-caret-right-square-fill"></i>Quế: 9mg.<br>
                <i class="bi bi-caret-right-square-fill"></i>Ngũ vị tử bắc: 20mg.<br>
                <i class="bi bi-caret-right-square-fill"></i>Cam thảo: 70mg</p>
        </div>
        <div class="congdung">
            <b>Cách dùng Nước Uống Bổ Gan Hovenia Dulcis Thunberg: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Đối với người thường xuyên sử dụng rượu: uống 1-2 túi nước bổ gan /lần trước hoặc ngay sau khi uống rượu.<br>
                <i class="bi bi-caret-right-square-fill"></i>Đối với trường hợp sử dụng hằng ngày nước bổ gan bồi bổ cơ thể, giải độc: uống 1-2 túi nước bổ gan hàn quốc/ngày trước khi ăn 30 phút hoặc sau khi ăn 1-2h. Sử dụng thường xuyên từ 3 - 6 tháng để đạt hiệu quả cao nhất.<br>
                <i class="bi bi-caret-right-square-fill"></i>Đối với  trẻ em từ 9 đến 13 tuổi: Uống 1 túi nước uống giải độc gan/ngày trước khi ăn 30 phút hoặc sau khi ăn 1-2h.<br>
                <i class="bi bi-caret-right-square-fill"></i>Đối với trường hợp trẻ em từ 5 đến 9 tuổi: uống 1/2 gói nước bổ gan hàn quốc chia làm 3 lần.</p>
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
