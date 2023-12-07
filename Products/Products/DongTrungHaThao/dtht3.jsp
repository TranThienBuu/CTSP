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
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Viên Đạm Sâm Nhung Linh Chi Đông Trùng Hạ Thảo Hàn Quốc</a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://kgin.com.vn/wp-content/uploads/2023/08/vien-sam-lc-dtht-1.jpg" alt="">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>Viên Đạm Sâm Nhung Linh Chi Đông Trùng Hạ Thảo Hàn Quốc</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E">Daedong</b> </p>
                <p>Xuất xứ: Hàn Quốc</p>
                <p>Trọng lượng: 100g</p>


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
            <img src="https://samhanquoconglee.vn/wp-content/uploads/2022/01/Vien-hong-sam-nhung-huou-linh-chi-dong-trung-ha-thao-120-vien-302.jpg" alt="Mô tả hình ảnh" width="1200" height="668">
            <p><i class="bi bi-magic"></i><b>Viên Đạm Sâm Nhung Linh Chi Đông Trùng Hạ Thảo Hàn Quốc</b>  Viên Đạm Tổng Hợp Hồng Sâm Nhung Hươu Linh Chi Đông Trùng Hạ Thảo
                Daedong Hộp 120 Viên có công dụng tuyệt vời đối với mọi lứa tuổi trong quá trình chăm sóc và cải thiện sức khỏe. Có tác dụng phòng ngừa và hỗ trợ cải thiện các loại bệnh.</p>

            <p><i class="bi bi-magic"></i><b>Viên Đạm Sâm Nhung Linh Chi Đông Trùng Hạ Thảo Hàn Quốc</b>Viên Đạm Tổng Hợp Hồng Sâm Nhung Hươu Linh Chi Đông Trùng Hạ Thảo Daedong Hộp 120 Viên được bào chế từ tinh chất hồng sâm Hàn Quốc.
                Hồng sâm từ lâu đã được biết đến như một loại dược liệu quý trong quá trình hỗ trợ và cải thiện sức khỏe, cung cấp những dưỡng chất tốt nhất giúp bồi bổ và chăm sóc cơ thể hiệu quả.
                Ngoài ra, sản phẩm còn giúp cân bằng lượng đường trong máu và ổn định huyết áp đối với những người bị huyết áp cao.</p>
        </div>

        <div class="congdung">
            <b>Công dụng của Viên Đạm Sâm Nhung Linh Chi Đông Trùng Hạ Thảo Hàn Quốc:</b>

            <p><i class="bi bi-dot"></i>Sản phẩm Viên Đạm Tổng Hợp Hồng Sâm Nhung Hươu Linh Chi Đông Trùng Hạ Thảo Daedong Hộp 120 Viên có công dụng hiệu quả đối với cơ thể người, đặc biệt phù hợp với những người già, ốm yếu hay sức khỏe đang bị suy giảm. Viên Hồng Sâm Nhung Hươu Linh Chi Hàn Quốc với nhiều công dụng tuyệt vời như:<br>
                <i class="bi bi-check-lg"></i>Sản phẩm giúp hỗ trợ gia tăng thể lực và trí lực nhanh chóng, cải thiện tình trạng mất ngủ và giảm tình trạng rối loạn sắc tố da, rụng tóc ở người cao tuổi.<br>
                <i class="bi bi-check-lg"></i>Viên Đạm Tổng Hợp Hồng Sâm Nhung Hươu Linh Chi Đông Trùng Hạ Thảo giúp tăng cường, phục hồi sức khỏe và cải thiện sức đề kháng, hỗ trợ hiệu tiêu hóa hoạt động bình thường. Sử dụng hồng sâm đều đặn có công dụng giúp giúp bạn cảm thấy ăn ngon miệng hơn và tim mạch hoạt động khỏe,
                tăng cường các chức năng tái tạo máu và hỗ trợ cải thiện suy nhược thần kinh tim, giúp ổn định áp thấp. Đồng thời, sản phẩm còn giúp điều hòa cơ thể, chống mệt mỏi khi phụ nữ tới giai đoạn mãn kinh.<br>
                <i class="bi bi-check-lg"></i>Giúp chống viêm, hỗ trợ kháng dị ứng, có tác dụng thanh lọc cơ thể, tốt cho chức năng gan của cơ thể.<br>
                <i class="bi bi-check-lg"></i>Bổ sung đầy đủ các chất dinh dưỡng cho cơ thể, giúp tái tạo tế bào mới, điều chỉnh thể chất và hỗ trợ cải thiện các chức năng sinh lý cho cả nam và nữ. <br>
                <i class="bi bi-check-lg"></i>Hỗ trợ tích cực trong quá trình bồi bổ và nâng cao sức khỏe cho người gầy, ốm yếu, những người mới trải qua phẫu thuật. Đồng thời, sản phẩm còn có công dụng  chữa các chứng kém ăn khó tiêu.<br>
                <i class="bi bi-check-lg"></i>Hồng sâm còn được coi là thảo dược tuyệt vời hỗ trợ quá trình làm đẹp da và kéo dài tuổi thọ. Sử dụng hồng sâm đều đặn giúp phụ nữ duy trì làn da mịn màng, hồng hào, giúp kéo dài tuổi thanh xuân. Ngoài ra, sản phẩm còn có tác dụng kích thích mọc tóc, tóc suôn mượt hơn vì được nuôi dưỡng từ sâu bên trong.</p>
        </div>


        <div class="congdung">
            <b>Dối tượng sử dụng Viên Đạm Sâm Nhung Linh Chi Đông Trùng Hạ Thảo Hàn Quốc: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Viên Đạm Tổng Hợp Hồng Sâm Nhung Hươu Linh Chi Đông Trùng Hạ Thảo Daedong thích hợp cho tất cả mọi người, cần phục hồi cơ thể, chống mệt mỏi. <br>
                <i class="bi bi-caret-right-square-fill"></i>Phù hợp với những người làm việc văn phòng căng thẳng, áp lực.<br>
                <i class="bi bi-caret-right-square-fill"></i>Viên đạm hồng sâm còn rất phù hợp với những người mới ốm dậy.</p>

        </div>
        <div class="congdung">
            <b>Hướng dẫn sử dụng Viên Đạm Sâm Nhung Linh Chi Đông Trùng Hạ Thảo Hàn Quốc: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Dùng 3 lần mỗi ngày, mỗi lần dùng 1 viên với nước ấm hoặc nước nguội.</p>

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
