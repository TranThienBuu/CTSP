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
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Trà Hồng Sâm Buleebang Hàn Quốc 3g x 100 Gói</a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://sinai.vn/media/product/156/2617.jpg" alt="">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>Trà Hồng Sâm Buleebang Hàn Quốc 3g x 100 Gói</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E">Buleebang</b> </p>
                <p>Xuất xứ: Hàn Quốc</p>
                <p>Trọng lượng: 3g</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">340,000</b> </p>
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
            <img src="https://product.hstatic.net/200000585297/product/tra-hong-sam-buleebang-100-goi-11_3045804cf85043409c2e4af8930ca820.jpg" alt="Mô tả hình ảnh" width="1200" height="668">
            <p><i class="bi bi-magic"></i><b>Trà Hồng Sâm Buleebang Hàn Quốc</b> Trà Hồng Sâm Buleebang được chiết xuất chủ yếu từ hồng sâm Hàn Quốc, mang đến hương vị đặc trưng và thơm ngon cho người sử dụng. </p>

            <p><i class="bi bi-magic"></i><b>Trà Hồng Sâm Buleebang Hàn Quốc</b> Sản phẩm giúp cung cấp nhiều dưỡng chất và vitamin, giúp cơ thể bạn khỏe mạnh và hỗ trợ phòng chống bệnh tật hiệu quả.</p>
        </div>

        <div class="congdung">
            <b>Công dụng Trà Hồng Sâm Buleebang Hàn Quốc:</b>

            <p><i class="bi bi-dot"></i>Sản phẩm phù hợp với mọi lứa tuổi đặc biệt hiệu quả với người:<br>
                <i class="bi bi-check-lg"></i>Cải thiện khả năng tình dục cho cả nam và nữ.<br>
                <i class="bi bi-check-lg"></i>Kích thích hệ tiêu hóa tăng cường hoạt động, để cơ thể dễ dàng hấp thu chất dinh dưỡng.<br>
                <i class="bi bi-check-lg"></i>Phòng chống các vấn đề về dạ dày.<br>
                <i class="bi bi-check-lg"></i>Tăng cường hệ miễn dịch, khoáng viêm và kháng khuẩn tốt.<br>
                <i class="bi bi-check-lg"></i>Ổn định tim, thiếu máu và chứng đau nửa đầu.<br>
                <i class="bi bi-check-lg"></i>Giúp da mịn màng, sáng hồng và giảm thâm mụn.<br>
                <i class="bi bi-check-lg"></i>Giảm stress, mệt mỏi, lo lắng, nhức đầu, chóng mặt.<br>
                <i class="bi bi-check-lg"></i>Giúp thư giãn, sảng khoái tinh thần và cho cảm giác sảng khoái.</p>
        </div>


        <div class="congdung">
            <b>Đối tượng sử dụng Trà Hồng Sâm Buleebang Hàn Quốc: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Dành cho người muốn giảm cân, người ăn chay, người làm việc căng thẳng<br>
                <i class="bi bi-caret-right-square-fill"></i>Dành cho học sinh, sinh viên luyện thi, người lớn tuổi.<br>
                <i class="bi bi-caret-right-square-fill"></i>Không dùng cho trẻ em hay bệnh nhân bị cao huyết áp, hoặc sử dụng các chất kích thích khác.</p>

        </div>
        <div class="congdung">
            <b>Cách dùng Trà Hồng Sâm Buleebang Hàn Quốc: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Ngày uống 2 – 3 lần, mỗi lần dùng từ 1 – 2 gói (3 gam).<br>
                <i class="bi bi-caret-right-square-fill"></i>Hòa tan với 80ml nước ấm.<br>
                <i class="bi bi-caret-right-square-fill"></i>Dùng ngay hoặc có thể thâm mật ong để tăng hương vị.</p>

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
