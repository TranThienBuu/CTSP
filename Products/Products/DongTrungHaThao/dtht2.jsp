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
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Nước Đông Trùng Hạ Thảo Hàn Quốc Hộp Gỗ 60 Gói</a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://kgin.com.vn/wp-content/uploads/2022/05/dt-go-den-1.jpg" alt="">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>Nước Đông Trùng Hạ Thảo Hàn Quốc Hộp Gỗ 60 Gói</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E">Sâm Daedong</b> </p>
                <p>Xuất xứ: Hàn Quốc</p>
                <p>Trọng lượng: 30ml</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">1,750,000</b> </p>
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
            <img src="https://daedong.com.vn/wp-content/uploads/2019/08/VHP5778.jpg" alt="Mô tả hình ảnh" width="1200" height="668">
            <p><i class="bi bi-magic"></i><b>Nước Đông Trùng Hạ Thảo Hàn Quốc Hộp Gỗ </b> Đông trùng hạ thảo có nguồn gốc từ Hàn Quốc luôn được đánh giá
                cao về chất lượng. Đặt biệt là sản phẩm Nước đông trùng hạ thảo Hàn Quốc đang được rất nhiều khách hàng lựa chọn,
                vì sự tiện lợi khi dùng cũng như những hiệu quả thực tế khi sử dụng. </p>

            <p><i class="bi bi-magic"></i><b>Nước Đông Trùng Hạ Thảo Hàn Quốc Hộp Gỗ </b> Với nguồn nguyên liệu tự nhiên chất lượng cao, là món quà tặng sức khỏe được đánh giá cao.</p>
        </div>

        <div class="congdung">
            <b>Đối tượng sử dụng Nước Đông Trùng Hạ Thảo Hàn Quốc Hộp Gỗ:</b>

            <p><i class="bi bi-dot"></i>Sản phẩm phù hợp người trưởng thành và trẻ em trên 15 tuổi đặc biệt hiệu quả với người:<br>
                <i class="bi bi-check-lg"></i>Dùng cho người muốn tăng cường sức khỏe cho cơ thể.<br>
                <i class="bi bi-check-lg"></i>Người mới ốm dậy, người suy nhược cơ thể, biếng ăn, gầy yếu.<br>
                <i class="bi bi-check-lg"></i>Người làm việc trong môi trường hay bị stress do áp lực công việc hay do học tập.<br>
                <i class="bi bi-check-lg"></i>Người đang gặp các bệnh lý liên quan đến gan, tim mạch, huyết áp, tiểu đường.<br>
                <i class="bi bi-check-lg"></i>Người gặp vấn đề về thận (người yếu chức năng thận).<br>
                <i class="bi bi-check-lg"></i>Người cao tuổi muốn tăng cường sức khoẻ. Người bị đau lưng.<br>
                <i class="bi bi-check-lg"></i>Người bị các vấn đề liên quan đến phổi ho lao.<br>
                <i class="bi bi-check-lg"></i>Hiệu quả cao tăng việc hỗ trợ tăng cường sinh lực cả nam và nữ.</p>
        </div>


        <div class="congdung">
            <b>Công dụng Nước Đông Trùng Hạ Thảo Hàn Quốc Hộp Gỗ: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Giúp cải thiện suy nhược cơ thể, giảm mệt mỏi, giúp bồi bổ cho cơ thể.<br>
                <i class="bi bi-caret-right-square-fill"></i>Tăng cường sức đề kháng.<br>
                <i class="bi bi-caret-right-square-fill"></i>Tăng cường sinh lý ở nam giới và cân bằng nội tiết tố ở nữ giới.<br>
                <i class="bi bi-caret-right-square-fill"></i>Cải thiện chức năng thận và phổi.<br>
                <i class="bi bi-caret-right-square-fill"></i>Có lợi cho việc điều trị các bệnh như hen suyễn, viêm phế quản,…</p>

        </div>
        <div class="congdung">
            <b>Cách dùng Nước Đông Trùng Hạ Thảo Hàn Quốc Hộp Gỗ: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Liều dùng: Người lớn uống mỗi ngày 1 đến 2 lần, mỗi lần một gói.
                Trẻ em trên 15 tuổi uống bằng 1/2 liều dùng của người lớn.<br>
                <i class="bi bi-caret-right-square-fill"></i>Lắc đều trước khi sử dụng. Sử dụng sản phẩm lúc bụng đói hoặc sau khi ăn 20 – 30 phút.
                Uống trực tiếp, uống ngon hơn khi để lạnh. (Những người khó ngủ hay dễ mất ngủ không nên dùng đông trùng hạ thảo vào buổi tối).<br>
                <i class="bi bi-caret-right-square-fill"></i>Đặc biệt khi cơ thể đang mệt mỏi, căng thẳng, stress do công việc, hoặc sau khi dùng rượu bia nhiều sẽ có cảm giác mệt mỏi,
                uể oải, nhức đầu, mất tập trung…. Chỉ cần dùng nước Đông Trùng Hạ Thảo Daedong sẽ giúp cơ thể khỏe vượt qua các vấn đề trên…</p>

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
