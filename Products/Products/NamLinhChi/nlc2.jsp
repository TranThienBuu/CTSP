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
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Nấm Linh Chi Fuji Đỏ Nguyên Tai Nhật Bản Gói 500G </a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://www.linhchivn.com/wp-content/uploads/2023/06/fuji-do-1-1000.jpg" alt="">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>Nấm Linh Chi Fuji Đỏ Nguyên Tai Nhật Bản Gói 500G </h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E">Nissan</b> </p>
                <p>Xuất xứ: Nhật Bản</p>
                <p>Trọng lượng: 500g</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">1,249,000</b> </p>
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
            <img src="https://linhchihoanggia.com/data/images/cong-dung-tac-dung-cua-nam-linh-chi-nhu-the-nao-2-1535439838688303325432.jpg" alt="Mô tả hình ảnh" width="1200" height="668">
            <p><i class="bi bi-magic"></i><b>Nấm Linh Chi Fuji Đỏ Nguyên Tai </b> Được trồng và sản xuất sạch 100%, không dùng bất kỳ hóa chất nào. Từng tai Nấm được chọn lọc kỹ lưỡng, mang đầy đủ dược tính với công dụng tốt nhất cho sức khỏe. </p>

            <p><i class="bi bi-magic"></i><b>Nấm Linh Chi Fuji Đỏ Nguyên Tai </b> Sản phẩm đóng gói theo đúng tiêu chuẩn bảo quản và vệ sinh an toàn thực phẩm mang lại hiệu quả sử dụng cao nhất.
                Săn phẩm được tặng kèm gói bột La hán quả, Cỏ ngọt sẽ là món quà ý nghĩa, sang trọng cho người thân, bạn bè của bạn.</p>
        </div>

        <div class="congdung">
            <b>Công dụng Nấm Linh Chi Fuji Đỏ Nguyên Tai :</b>

            <p><i class="bi bi-dot"></i>Theo ghi chép trong sách cổ “Thần Nông Bản Thảo” và các tài liệu khoa  học thì Nấm Linh Chi có những tác dụng chính như sau:<br>
                <i class="bi bi-check-lg"></i>Tăng cường hệ miễn dịch, chóng chọi bệnh tật.<br>
                <i class="bi bi-check-lg"></i>Tăng cường trí nhớ, trị đau đầu, mất ngủ, thần kinh suy nhược và căng thẳng.<br>
                <i class="bi bi-check-lg"></i>Giúp ổn định huyết áp (về mức bình thường), phòng chống đột quỵ.<br>
                <i class="bi bi-check-lg"></i> Giảm mỡ, chống béo phì, phòng ngừa và hỗ trợ điều trị tiểu đường.<br>
                <i class="bi bi-check-lg"></i> Làm mạnh gan, ăn không ngon, tiêu hóa kém, trị loét dạ dầy tá tràng…<br>
                <i class="bi bi-check-lg"></i> Chống nhiễm mỡ, xơ vửa mạch máu và các biến chứng (Bệnh xơ vửa động mạch vành)<br>
                <i class="bi bi-check-lg"></i>Loại trừ Cholesterol trong máu và ở thành mạch máu. Lọc sạch và thúc đẩy lưu thông máu, tăng cường tuần hoàn máu.<br>
                <i class="bi bi-check-lg"></i>Trợ giúp tim khỏe mạnh, tốt cho tim mạch…</p>
        </div>


        <div class="congdung">
            <b>Đối tượng sử dụng Nấm Linh Chi Fuji Đỏ Nguyên Tai : </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Đối với người khỏe, chưa bệnh<br>
                <i class="bi bi-caret-right-square-fill"></i>Đối với người đang bị bệnh<br>
                <i class="bi bi-caret-right-square-fill"></i>Đối với người mới mổ hoặc người sau hóa trị, xạ trị, người mới khỏi bệnh<br>
                <i class="bi bi-caret-right-square-fill"></i>Người béo phì, ăn kiêng.</p>

        </div>
        <div class="congdung">
            <b>Cách dùng Nấm Linh Chi Fuji Đỏ Nguyên Tai : </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Sắc nhỏ 5-7 gam Nấm (Nếu đang điều trị ung thư thì tỉ lệ tăng gấp 3 lần khoảng 20g) nấu với 2 lít nước đun lửa to đến khi sôi tiếp tục đun thêm 15-30 phút nữa.<br>
                <i class="bi bi-caret-right-square-fill"></i>Đổ cả xác Nấm và nước vào bình thủy uống dần trong ngày.<br>
                <i class="bi bi-caret-right-square-fill"></i>Bã nấm còn lại có thể tận dụng đun thêm 2 lần nữa vì còn dưỡng chất chưa chiết xuất hết có trong Nấm.</p>

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
