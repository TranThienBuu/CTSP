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
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Viên Cao Hồng Sâm KGC Cheong Kwan Jang Hàn Quốc Hộp 2 Lọ x 168G</a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://laza.vn/storage/product/2020-04-24/10a-bg4kkwbdjn6w-600x600.jpg" alt="">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>Viên Cao Hồng Sâm KGC Cheong Kwan Jang Hàn Quốc Hộp 2 Lọ x 168G</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E">KGC</b> </p>
                <p>Xuất xứ: Hàn Quốc</p>
                <p>Trọng lượng: 168g</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">2,700,000</b> </p>
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
            <img src="https://laza.vn/uploads/product/images/Nuoc-Hong-Sam-Tre-Em/vien-cao-hong-sam-han-quoc-kgc-cheong-kwan-jang-hop-2-lo-x-168g-0001.jpg" alt="Mô tả hình ảnh" width="1200" height="668">
            <p><i class="bi bi-magic"></i><b>Viên Cao Hồng Sâm KGC Cheong Kwan Jang</b>  Cheong Kwan Jang được Văn phòng độc quyền chính phủ chính thức đưa vào năm 1940 để phân biệt các sản phẩm nhân sâm sản xuất dưới sự kiểm soát chặt chẽ của Nhà nước với các sản phẩm do tư nhân sản xuất và hàng giả, hàng nhái
                (chữ Cheong Kwan Jang có nghĩa là "chính phủ công nhận, hàng uy tín, đóng hộp tại hãng xưởng được chính phủ công nhận”).</p>

            <p><i class="bi bi-magic"></i><b>Viên Cao Hồng Sâm KGC Cheong Kwan Jang</b> Viên hồng sâm Hàn Quốc cao cấp sản phẩm của Công ty nhà nước Hàn Quốc CHEONG KWAN JANG (hơn 70mg/g hồng sâm saponin , hơn 66% tinh chất sâm), oligosaccharide, thấp hơn 3% đường, chiết xuất nấm linh chi. Sản phẩm cao cấp nguyên chất 100% có hương thơm đặc trưng của hồng sâm KGC.</p>
        </div>

        <div class="congdung">
            <b>Tác dụng Viên Cao Hồng Sâm KGC Cheong Kwan Jang:</b>

            <p><i class="bi bi-dot"></i>Thương hiệu hàng đầu trong ngành thực phẩm chăm sóc sức khỏe là thương hiệu hàng đầu trong ngành thực phẩm chăm sóc sức khỏe:<br>
                <i class="bi bi-check-lg"></i>Thúc đẩy quá trình chuyển hóa của cơ thể, làm mát, ấm và thanh lọc cơ thể, điều chỉnh âm dương lấy lại cân bằng cho cơ thể.<br>
                <i class="bi bi-check-lg"></i>Hỗ trợ tăng sức đề kháng và phục hồi thể trạng cho cơ thể: Cao hồng sâm Hàn Quốc giúp bồi bổ toàn diện, bổ máu, hỗ trợ tăng sức đề kháng và hoàn lực cho cơ thể một cách nhanh chóng.<br>
                <i class="bi bi-check-lg"></i>Hố trợ phòng ngừa bệnh: Nhiều kết quả cho thấy đạm hồng sâm Hàn Quốc không chỉ có hiệu quả trong việc hỗ trợ ngăn ngừa bệnh mà trong một số trường hợp nó có thể hỗ trợ ngăn chặn được sự phát triển của mầm bệnh.<br>
                <i class="bi bi-check-lg"></i>Hỗ trợ ổn định tuần hoàn máu: đạm hồng sâm Hàn Quốc không chỉ giúp máu lưu thông tốt mà còn có tác dụng hỗ trợ ngăn ngừa sự kết dính tiểu cầu, nguyên nhân của bệnh tim mạch và bệnh xơ vữa động mạch.<br>
                <i class="bi bi-check-lg"></i>Đạm hồng sâm Hàn Quốc 6 năm tuổi hỗ trợ phát triển trí não, tăng trí nhớ: Dùng đạm hồng sâm Hàn Quốc thường xuyên sẽ được bổ sung lượng canxi và kích thích trí não hoạt động dẫn đến tăng và phát triển trí nhớ, đặc biệt ở những người cao tuổi.<br>
                <i class="bi bi-check-lg"></i>Hỗ trợ kéo dài tuổi thanh xuân và làm đẹp, hỗ trợ thanh lọc cơ thể và gan: đạm hồng sâm có chức năng cải thiện làn da trở nên trẻ trung và hỗ trợ ngăn chặn sự lão hóa làn da.<br>
                <i class="bi bi-check-lg"></i>Saponin trong đạm hồng sâm Hàn Quốc làm tăng hoạt động enzym liên quan tới sự thoái hóa, hỗ trợ gan tránh được độc tính của thực phẩm.<br>
                <i class="bi bi-check-lg"></i>Đạm hồng sâm hỗ trợ người huyết áp thấp ổn định huyết áp.</p>
        </div>


        <div class="congdung">
            <b>Đối tượng sử dụng Viên Cao Hồng Sâm KGC Cheong Kwan Jang: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Khuyên dùng cho những người trong thời gian điều trị bệnh và sau khi ốm dậy, những người có thể trạng yếu. nhất là những người làm việc căng thẳng, người làm việc nặng, người mới ốm dậy, người không ăn uống được, người suy nhược cơ thể.</p>

        </div>
        <div class="congdung">
            <b>Cách dùng Viên Cao Hồng Sâm KGC Cheong Kwan Jang: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Mỗi ngày dùng 1 - 3 lần, mỗi lần khoảng 10 viên .</p>

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
