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
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Hắc Sâm Củ Khô Daedong Hàn Quốc 300G Hộp Thiếc</a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://nhansamthinhphat.com/storage/product/2022-04-08/hacsamcukho300ghopthiecchinhhangdaedonghanquoc-mlwsmwvqefo3.jpg" alt="">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>Hắc Sâm Củ Khô Daedong Hàn Quốc 300G Hộp Thiếc</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E">Daedong</b> </p>
                <p>Xuất xứ: Hàn Quốc</p>
                <p>Trọng lượng: 300g</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">7,200,000</b> </p>
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
            <img src="https://nhansamthaolinh.com/images/companies/1/3deadong/hac-sam-cu-kho-daedong-hop-300gr-1.jpg?1527859011037" alt="Mô tả hình ảnh" width="1200" height="668">
            <p><i class="bi bi-magic"></i><b>Hắc Sâm Củ Khô Daedong Hàn Quốc</b>Được trồng với kĩ thuật tiên tiến, thu hoạch hoàn toàn thủ công, bào chế bằng phương pháp cổ truyền, giữ nguyên được tinh chất nhân sâm Hàn Quốc với hàm lượng
                Saponin cao, mang lại nhiều giá dinh dưỡng cho người sử dụng. </p>

            <p><i class="bi bi-magic"></i><b>Hắc Sâm Củ Khô Daedong Hàn Quốc </b>là dòng sản phẩm đã được nhiều người tin dùng bởi tính hiệu quả giải độc nổi trội của nó. Bên cạnh đó là thiết kế gọn nhẹ, tiện lợi, dễ sử dụng.
                Dòng sản phẩm này rất phù hợp để làm quà biếu cho đồng nghiệp và bạn bè.</p>
        </div>

        <div class="congdung">
            <b>Công dụng Hắc Sâm Củ Khô Daedong Hàn Quốc:</b>

            <p><i class="bi bi-dot"></i>Bạn thường xuyên gặp gỡ khách hàng? Bạn phải làm việc tronng những điều kiên độc hại? Bạn đang lo lắng về sức khỏe của mình? Hắc sâm củ khô Daedong 300gr sẽ là giải pháp cho tất cả những vấn đề trên:<br>
                <i class="bi bi-check-lg"></i>Tăng cường lưu thông khí huyết, tạo hồng cầu, điều hòa hoạt động của hệ tuần hoàn.<br>
                <i class="bi bi-check-lg"></i>Hạn chế quá trình .<br>
                <i class="bi bi-check-lg"></i>Hồng sâm củ khô Daedong kích thích và tăng cường thải độc thanh lọc cơ thể.<br>
                <i class="bi bi-check-lg"></i>Giảm căng thẳng, ngon miệng, ngủ ngon,...</p>
        </div>


        <div class="congdung">
            <b>Đối tượng sử dụng Hắc Sâm Củ Khô Daedong Hàn Quốc: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Người tiếp xúc nhiều với bia rượu, người có vấn đề về tiêu hóa.<br>
                <i class="bi bi-caret-right-square-fill"></i>Phụ nữ tiền mãn kinh hoặc trong thời kì mãn kinh.<br>
                <i class="bi bi-caret-right-square-fill"></i>Người thường xuyên thức khuya, nhiều áp lực công việc.<br>
                <i class="bi bi-caret-right-square-fill"></i>Người phải thường xuyên tiếp xúc với môi trường độc hại, tăng sức để kháng.</p>

        </div>
        <div class="congdung">
            <b>Cách dùng Hắc Sâm Củ Khô Daedong Hàn Quốc: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Thái lát sản phẩm để ngậm hoặc nhai nuốt. Có thể ngâm mật ong để dễ sử dụng.<br>
                <i class="bi bi-caret-right-square-fill"></i>Hãm hồng sâm củ khô với nước sôi, chưng với mật ong dùng dần.<br>
                <i class="bi bi-caret-right-square-fill"></i>Trẻ nhỏ từ 6 - 15 tuổi chậm lớn, suy dinh dưỡng, dậy thì muộn dùng một nửa so với người lớn.</p>

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
