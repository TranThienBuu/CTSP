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
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Nấm Linh Chi Thượng Hoàng Hàn Quốc Cao Cấp Gói 1 Kg </a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://samyenngochoang.com/wp-content/uploads/2020/03/3_Nam-Linh-Chi-Thuong-Hoang-Han-Quoc-Cao-Cap-Goi-1-kg.jpg" alt="">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>Nấm Linh Chi Thượng Hoàng Hàn Quốc Cao Cấp Gói 1 Kg </h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E">Phellinus Linteus</b> </p>
                <p>Xuất xứ: Hàn Quốc</p>
                <p>Trọng lượng:1kg</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">3,800,000</b> </p>
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
            <img src="https://sanphamsuckhoe.com.vn/uploads/Files/khay-nam-thuong-hoang-han-quoc-loai-tot-1kg-sam-yen-hoang-gia.jpg" alt="Mô tả hình ảnh" width="1200" height="668">
            <p><i class="bi bi-magic"></i><b>Nấm Linh Chi Thượng Hoàng Hàn Quốc</b>   là thảo dược thuộc họ Linh Chi rất quý và hiếm, có dược tính tốt nhất,
                là vua của chủng Nấm Linh chi, được coi là sản phẩm thượng hạng. </p>

            <p><i class="bi bi-magic"></i><b>Nấm Linh Chi Thượng Hoàng Hàn Quốc </b> phù hợp với mọi lứa tuổi và không có tác dụng phụ. Đặc biệt, Nấm thượng hoàng rất tốt cho người bị bệnh tim, bệnh ung thư, tiểu đường, cao huyết áp…</p>
        </div>

        <div class="congdung">
            <b>Công dụng Nấm Linh Chi Thượng Hoàng Hàn Quốc:</b>

            <p><i class="bi bi-dot"></i>Ngoài các tác dụng tương tự như nấm linh chi thông thường, Nấm Thượng Hoàng vàng còn có những công dụng đáng kể sau:<br>
                <i class="bi bi-check-lg"></i>Tăng cường khả năng miễn dịch, kích thích ăn ngon miệng, ngủ ngon sâu giấc, làm giảm nguy cơ viêm nhiễm.<br>
                <i class="bi bi-check-lg"></i>Hỗ trợ bệnh nhân trong quá trình xạ trị và hóa trị.<br>
                <i class="bi bi-check-lg"></i>Có tác dụng tăng cường sự trao đổi chất và năng lượng.<br>
                <i class="bi bi-check-lg"></i>Hỗ trợ giải độc và bảo vệ gan, giảm lượng Cholesterone trong máu.<br>
                <i class="bi bi-check-lg"></i>Chống lão hóa, làm săn chắc da, giúp da hồng hào, giảm dị ứng và mụn trứng cá.<br>
                <i class="bi bi-check-lg"></i>Giúp giảm khối u ác tính mà không làm tổn hại đến các tế bào khác, ngăn ngừa khối u ở giai đoạn đầu khi mới phát hiện bệnh (đặc biệt là ở vú và dạ dày…)<br>
                <i class="bi bi-check-lg"></i>Có đặc tính chống khối u trên da, phổi và tuyến tiền liệt.<br>
                <i class="bi bi-check-lg"></i>Nấm thượng hoàng có khả năng gây ức chế đến 96,7% khối u, tỷ lệ cao nhất trong các loại nấm( nấm Mèo là 42,6%, Nấm Vân chi là 77%,…)<br>
                <i class="bi bi-check-lg"></i>Nấm thượng hoàng cũng rất tốt cho người bệnh tim, tiểu đường, cao huyết áp, máu nhiễm mỡ, gan nhiễm mỡ…</p>
        </div>


        <div class="congdung">
            <b>Đối tượng sử dụng Nấm Linh Chi Thượng Hoàng Hàn Quốc: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Người mới ốm dậy, sức đề kháng yếu, muốn phục hồi sức khỏe.<br>
                <i class="bi bi-caret-right-square-fill"></i>Người bị mỡ máu, tiểu đường, huyết áp,<br>
                <i class="bi bi-caret-right-square-fill"></i> Bệnh nhân nóng gan trong quá trình xạ trị hóa trị<br>
                <i class="bi bi-caret-right-square-fill"></i>Người cao tuổi có sức đề kháng yếu.<br>
                <i class="bi bi-caret-right-square-fill"></i>Những người thường xuyên phải tiếp xúc với các chất độc hại, thường xuyên làm việc trong môi trường ô nhiễm, có chứa tia bức xạ…<br>
                <i class="bi bi-caret-right-square-fill"></i>Chị em phụ nữ muốn làm đẹp da, chống rụng tóc, giảm mụn nhọt.<br>
                <i class="bi bi-caret-right-square-fill"></i>Người có nguy cơ mắc bệnh ung thư sử dụng Nấm thượng hoàng để phòng tránh và hạn chế sự phát triển của khối u.</p>

        </div>
        <div class="congdung">
            <b>Cách dùng Nấm Linh Chi Thượng Hoàng Hàn Quốc: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Nấm thượng hoàng, đem thái thành lát mỏng.<br>
                <i class="bi bi-caret-right-square-fill"></i>Cho khoảng 45-50g Nấm thượng hoàng đun cùng 1 lít nước, đun nhỏ lửa cho đến khi lượng nước chỉ còn khoảng 800 ml.<br>
                <i class="bi bi-caret-right-square-fill"></i>Nước thứ 3 và nước thứ 4 làm tương tự như vậy. Sau đó, đổ lẫn 4 lần nước vào với nhau để được khoảng 3200 ml nước. Mỗi ngày dùng 2-3 lần vào sáng, chưa, chiều, mỗi lần khoảng 80ml, khi dùng có thể cho thêm đường hoặc mật ong để giảm vị đắng. Bã nấm linh chi sau khi nấu còn có thể được tận dụng đun nước tắm để làm đẹp tóc và da.</p>

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
