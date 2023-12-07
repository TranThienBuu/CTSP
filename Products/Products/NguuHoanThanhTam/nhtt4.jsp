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
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">An Cung Ngưu Hoàng Hoàn Hàn Quốc Tuần Hoàn Não Hộp Gỗ 60 Viên </a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://product.hstatic.net/1000391837/product/ebae2696ece3e05d357229e2559c96a3_49bc9e1bad8b4463bbc2e6847af6bfc2_master.jpg" alt=""width="1200" height="668">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>An Cung Ngưu Hoàng Hoàn Hàn Quốc Tuần Hoàn Não Hộp Gỗ 60 Viên</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E">Samsung Pharm </b> </p>
                <p>Xuất xứ: Hàn Quốc</p>
                <p>Trọng lượng: 375g</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">1,500,000</b> </p>
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
            <img src="https://www.google.com/url?sa=i&url=https%3A%2F%2Fyensaoplaza.com%2Fproduct%2Fan-cung-nguu-hoang-hoan-hop-go-60-vien-han-quoc-phong-dot-quy-yen-sao-plaza%2F&psig=AOvVaw3EFJpwEtcTfBJ5a2Usxa1X&ust=1699335444019000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNjTmP7TroIDFQAAAAAdAAAAABAE" alt="">
            <p><i class="bi bi-magic"></i><b>An Cung Ngưu Hoàng Hoàn Hàn Quốc Tuần Hoàn Não Hộp Gỗ</b> An Cung Ngưu Hoàng Hoàn Hàn Quốc Tuần Hoàn Não là sản phẩm hỗ trợ điều trị bệnh
                đột quỵ đã được công nhận. Sản phẩm này hiện đã được đóng dạng hộp gỗ, mỗi viên là 1 hộp nhỏ riêng biệt vô cùng tiện lợi và sang trọng</p>
            <p><i class="bi bi-magic"></i><b>An Cung Ngưu Hoàng Hoàn Hàn Quốc Tuần Hoàn Não Hộp Gỗ</b>  Sản phẩm có xuất xứ từ Hàn Quốc có tác dụng rất tốt trong hỗ trợ chống chữa và ngăn
                ngừa đột quỵ, tai biến mạch máu não. Dựa trên công thức bài thuốc an cung ngưu hoàng...</p>

        </div>

        <div class="congdung">
            <b>Thành phần trong An Cung Ngưu Hoàng Hoàn Hàn Quốc Tuần Hoàn Não Hộp Gỗ:</b>

            <p><i class="bi bi-dot"></i>Trong sản phẩm An Cung Ngưu Hàn Quốc Vũ Hoàng Thanh Tâm Hộp Gỗ là những vị thuốc quý bao gồm:<br>
                <i class="bi bi-check-lg"></i> Củ hoài sơn 112mg.<br>
                <i class="bi bi-check-lg"></i>Cam thảo và mật ong 225mg.<br>
                <i class="bi bi-check-lg"></i>Rễ sài hồ 32mg.<br>
                <i class="bi bi-check-lg"></i>Rễ cất cánh 79mg.<br>
                <i class="bi bi-check-lg"></i>Quả mơ 71mg.<br>
                <i class="bi bi-check-lg"></i>Bồ hoàng 72mg.<br>
                <i class="bi bi-check-lg"></i>Phục linh 72mg.<br>
                <i class="bi bi-check-lg"></i>Thần khúc 72mg.<br>
                <i class="bi bi-check-lg"></i>Xuyên khung 72mg.<br>
                <i class="bi bi-check-lg"></i>Giá đầu nành 56mg.<br>
                <i class="bi bi-check-lg"></i>Ngưu hoàng 56mg.<br>
                <i class="bi bi-check-lg"></i>Vỏ quế 14mg.<br>
                <i class="bi bi-check-lg"></i>Linh dương giác 76mg.<br>
                <i class="bi bi-check-lg"></i>Gừng 1650mg.<br>
                <i class="bi bi-check-lg"></i>Xạ hương 112mg.<br>
                <i class="bi bi-check-lg"></i>Mạch môn 112mg.<br>
                <i class="bi bi-check-lg"></i>Long não 56mg.<br>
                <i class="bi bi-check-lg"></i>Rễ hoàng cầm 45mg.<br>
                <i class="bi bi-check-lg"></i>Bạch liễm 37mg.<br>
                <i class="bi bi-check-lg"></i>Đường quy 79mg.<br>
                <i class="bi bi-check-lg"></i>Rễ bạch thược 0,4mg.<br>
                <i class="bi bi-check-lg"></i>Phòng phong 79mg.<br>
                <i class="bi bi-check-lg"></i>Củ bạch truật 56mg.</p>
        </div>

        <div class="congdung">
            <b>Đối tượng sử dụng An Cung Ngưu Hoàng Hoàn Hàn Quốc Tuần Hoàn Não Hộp Gỗ: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Hỗ trợ hoạt huyết, hỗ trợ điều trị cho người rối lọan tiền đình, đau đầu, thiếu máu não, chóng mặt, tắc động mạch vành và phụ nữ mãn kinh.<br>
                <i class="bi bi-caret-right-square-fill"></i>Sản phẩm đặc biệt tốt cho người bị suy nhược thần kinh do áp lực công việc, lao động trí óc ở cường độ cao và đối mặt với những biến cố trong cuộc sống.<br>
                <i class="bi bi-caret-right-square-fill"></i> Có tác dụng rất tốt trong việc hỗ trợ ngăn ngừa hiện tượng chảy máu não, xuất huyết não, phục hồi hệ thần kinh chức năng cho những bệnh nhân mới và bệnh nhân đã bị tai
                biến mạch máu não lâu ngày... giúp phục hồi các chức năng do di chứng để lại sau khi bị tai biến mạch máu não như bán thân bất toại (liệt nữa người) và rối loạn chức năng diễn đạt ngôn ngữ.<br>
                <i class="bi bi-caret-right-square-fill"></i> An cung ngưu hoàng hoàn Hàn Quốc hộp gỗ đen loại 60 viên công dụng trong việc hỗ trợ chữa trị
                chứng đột quỵ (chứng xuất huyết não, liệt toàn thân, liệt tay chân, khiếm khuyết về ngôn ngữ, khó nuốt, hôn mê, tâm thần và chứng tê liệt ở mặt), cao huyết áp,
                tim đập nhanh hô hấp khó, tinh thần bất an, đau co giật cấp và mãn tính, rối loạn thần kinh thực và bất tỉnh nhân sự...<br>
                <i class="bi bi-caret-right-square-fill"></i>An cung ngưu hoàng hoàn Hàn Quốc hộp gỗ 60 viên còn hỗ trợ phòng chống các bệnh về cao huyết áp và tai biến mạch máu não, tim đập nhanh, ích khí dưỡng huyết trấn kinh an thần, trị phong cũng như cho các bệnh
                do khí huyết không đỏ, hỏa khí trong người vượng, đờm nhiệt gây nên tức ngực khó thở nhức đầu hoa mắt đi lại nói năng khó khăn, đầu óc không tỉnh táo.<br>
                <i class="bi bi-caret-right-square-fill"></i> Mức độ hiệu quả của sản phẩm tùy thuộc vào cơ địa và tình trạng sức khỏe của mỗi người.<br>
                <i class="bi bi-caret-right-square-fill"></i> Đối với người có tiền sử bệnh nặng hay cơ thể dễ bị dị ứng với các thành phần khác thì nên tham khảo ý kiến bác sĩ trước khi sử dụng.<br>
                <i class="bi bi-caret-right-square-fill"></i>Đây là sản phẩm bổ sung dinh dưỡng, không phải là thuốc chữa bệnh, không có chức năng thay thế thuốc chữa bệnh.</p>

        </div>
        <div class="congdung">
            <b>Cách sử dụng An Cung Ngưu Hoàng Hoàn Hàn Quốc Tuần Hoàn Não Hộp Gỗ: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Trên 15 tuổi: uống 01 viên / ngày.<br>
                <i class="bi bi-caret-right-square-fill"></i>Từ 8 đến 15 tuổi: uống 2/3 viên/ngày.<br>
                <i class="bi bi-caret-right-square-fill"></i>Từ 5 đến 8 tuổi: uống 1/2 viên/ngày.<br>
                <i class="bi bi-caret-right-square-fill"></i>Từ 2 đến 5 tuổi: uống 1/3 viên/ngày.<br>
                <i class="bi bi-caret-right-square-fill"></i>Dưới 2 tuổi: uống 1 /4 viên/ngày.<br>
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
