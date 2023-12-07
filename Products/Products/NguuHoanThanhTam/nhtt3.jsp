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
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ 10 Viên </a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://nhansamthinhphat.com/storage/product/2022-04-15/ancungnguuhanquocvuhoangthanhtamhopgo10vien-lnbnzoulcw9i.jpg" alt=""width="1200" height="668">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ 10 Viên</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E">Cheong Sim Won </b> </p>
                <p>Xuất xứ: Hàn Quốc</p>
                <p>Trọng lượng: 375g</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">2,500,000</b> </p>
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
            <img src="https://saigonsava.com/wp-content/uploads/2021/03/an-cung-nguu-vu-hoang-thanh-tam-hop-go-10-vien-1024x1024.jpg" alt="">
            <p><i class="bi bi-magic"></i><b>An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ</b> An cung ngưu vũ hoàng thanh tâm hộp gỗ đã được kiểm nghiệm
                lâm sàng có tác dụng hỗ trợ điều trị hiệu quả cho các bệnh nhân bị đột quỵ, tai biến mạch máu não, nhồi máu cơ tim</p>
            <p><i class="bi bi-magic"></i><b>An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ</b> Hoạt huyết và hỗ trợ điều trị cho người bị rối loạn tiền đình,
                đau đầu, thiếu máu não, tắc động mạch vành.</p>
            <p><i class="bi bi-magic"></i><b>An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ</b>Đặc biệt dùng rất tốt cho người bị suy nhược thần kinh vì
                áp lực công việc, lao động trí óc cường độ cao và đối mặt với những biến cố trong cuộc sống.</p>
            <p><i class="bi bi-magic"></i><b>An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ</b>Phục hồi các chức năng do di chứng để lại sau khi bị tai biếm mạch máu
                não như bán thân bất toại (liệt nửa người), rối loạn chức năng diễn đạt ngôn ngữ.</p>

        </div>

        <div class="congdung">
            <b>Thành phần trong An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ:</b>

            <p><i class="bi bi-dot"></i>Trong sản phẩm An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ là những vị thuốc quý bao gồm:<br>
                <i class="bi bi-check-lg"></i> Nhân sâm 112mg.<br>
                <i class="bi bi-check-lg"></i>Cam thảo 225mg.<br>
                <i class="bi bi-check-lg"></i>Sơn dược 32mg.<br>
                <i class="bi bi-check-lg"></i>Da cừu 79mg.<br>
                <i class="bi bi-check-lg"></i>Đương quy 71mg.<br>
                <i class="bi bi-check-lg"></i>Quả mơ 72mg.<br>
                <i class="bi bi-check-lg"></i>Thược dược trắng 72mg.<br>
                <i class="bi bi-check-lg"></i>Mạch môn 72mg.<br>
                <i class="bi bi-check-lg"></i>Hoàng cầm 72mg.<br>
                <i class="bi bi-check-lg"></i>Phục linh 56mg.<br>
                <i class="bi bi-check-lg"></i>Xuyên khung 56mg.<br>
                <i class="bi bi-check-lg"></i>Ngưu hoàng 14mg.<br>
                <i class="bi bi-check-lg"></i>Nhung hươu 76mg.<br>
                <i class="bi bi-check-lg"></i>Mật ong 1650mg.<br>
                <i class="bi bi-check-lg"></i>Thần cốc 112mg.<br>
                <i class="bi bi-check-lg"></i>Thông hoàng 112mg.<br>
                <i class="bi bi-check-lg"></i>Thái hồ 56mg.<br>
                <i class="bi bi-check-lg"></i>Long não 45mg.<br>
                <i class="bi bi-check-lg"></i>Bách liêm 37mg.<br>
                <i class="bi bi-check-lg"></i>Đại đậu hoàng quyền 79mg.<br>
                <i class="bi bi-check-lg"></i>Kim bạc 0,4mg.<br>
                <i class="bi bi-check-lg"></i>Cây keo 79mg.<br>
                <i class="bi bi-check-lg"></i>Phong phong 72mg.<br>
                <i class="bi bi-check-lg"></i>Bạch truật 72mg.<br>
                <i class="bi bi-check-lg"></i>Càn cương 37mg.<br>
                <i class="bi bi-check-lg"></i>Cát cảnh 56mg.</p>
        </div>

        <div class="congdung">
            <b>Đối tượng sử dụng An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Người phải hoạt động trí óc căng thẳng, thường xuyên.<br>
                <i class="bi bi-caret-right-square-fill"></i>Người thừa cân.<br>
                <i class="bi bi-caret-right-square-fill"></i>Người hút thuốc lá.<br>
                <i class="bi bi-caret-right-square-fill"></i>Người bị bệnh về đường.<br>
                <i class="bi bi-caret-right-square-fill"></i>Người ít vận động.</p>

        </div>
        <div class="congdung">
            <b>Cách sử dụng An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Từ 8 – 15 tuổi uống 2/3 viên/ lần/ ngày.<br>
                <i class="bi bi-caret-right-square-fill"></i>Từ 5 – 7 tuổi uống 1/2 viên/ lần/ ngày.<br>
                <i class="bi bi-caret-right-square-fill"></i>Từ 2 – 4 tuổi uống 1/3 viên/ lần/ ngày.<br>
                <i class="bi bi-caret-right-square-fill"></i>Dưới 1 tuổi uống 1/4 viên/ lần/ ngày.<br>
                <i class="bi bi-caret-right-square-fill"></i>Tuyệt đối không được tự ý sử dụng liều lượng theo ý, tốt nên tham khảo thêm thông tin từ bác sĩ.</p>

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

