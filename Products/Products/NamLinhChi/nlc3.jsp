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
            <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Cao Hồng Sâm Linh Chi ACHIMMADANG Hộp Gỗ 2 Hủ x 500G</a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://samyenanhquan.com/wp-content/uploads/2020/11/caohshopgo2lo1.jpg" alt="">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>Cao Hồng Sâm Linh Chi ACHIMMADANG Hộp Gỗ 2 Hủ x 500G</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E">Achimmadang</b> </p>
                <p>Xuất xứ: Hàn Quốc</p>
                <p>Trọng lượng: 500g</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">2,100,000</b> </p>
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
            <img src="https://samyenanhquan.com/wp-content/uploads/2020/11/caohshopgo2lo5.jpg" alt="Mô tả hình ảnh" width="1200" height="668">
            <p><i class="bi bi-magic"></i><b>Cao Hồng Sâm Linh Chi ACHIMMADANG</b> Trong các sản phẩm được tinh chế, chiết xuất từ hồng sâm, linh chi thì Cao Hồng Sâm Linh Chi Achimmadang Hộp Gỗ 2 Hũ x 500g có rất
                nhiều ưu điểm vượt trội. Tất cả các công đoạn chế biến đều được sản xuất trên dây chuyền công nghệ hiện đại, với quy cách đóng gói khoa học, đảm bảo quy định tiêu chuẩn của hiệp hội nhân sâm Hàn Quốc.</p>

            <p><i class="bi bi-magic"></i><b>Cao Hồng Sâm Linh Chi ACHIMMADANG</b> Thành phần nguyên liệu sản phẩm: Chiết xuất Hồng sâm, chiết xuất gai dầu (nội địa Hàn Quốc, hàm lượng chất rắn 3%) chiếm 10%; Chiết xuất
                viên hồng sâm Hàn Quốc ngâm đường fructose (Hồng Sâm 70%, đường fructose 25%, đường oligosaccharide 5%, hàm lượng rắn trên 60%) chiếm 50%. Hỗn hợp thực vật cô đặc (hàm lượng rắn trên 50%) chiếm 40% bao gồm: Vỏ cam khô 11%, sắn dây 11%,
                địa hoàng 11%, ngải thơm, đương quy, nấm linh chi, xà sàng, hoàng kỳ, táo đỏ, quế, cam thảo, hoa mẫu đơn vừa đủ 100%.</p>
        </div>

        <div class="congdung">
            <b>Công dụng Cao Hồng Sâm Linh Chi ACHIMMADANG:</b>

            <p><i class="bi bi-dot"></i>Cao Hồng Sâm Linh Chi Achimmadang Hộp Gỗ 2 Hũ x 500g là sản phẩm có tác dụng nhanh và mạnh hơn các loại thông thường khác của Hàn Quốc do chúng được sản xuất dựa trên sự kết hợp của hai loại dược liệu quý là nhân sâm và linh chi Hàn Quốc:<br>
                <i class="bi bi-check-lg"></i> Bồi bổ sức khỏe,tăng cường thể lực, tăng cường sức đề kháng giúp cơ thể phòng chống được nhiều bệnh tật.<br>
                <i class="bi bi-check-lg"></i> Giúp tinh thần tỉnh táo, sảng khoái, tránh mệt mỏi, stress.<br>
                <i class="bi bi-check-lg"></i>Giúp điều hòa huyết áp, hiệu quả cho người huyết áp cao và cả người huyết áp thấp.<br>
                <i class="bi bi-check-lg"></i>Đối với nam giới: Cải thiện chức năng tình dục, tăng khả năng hoạt động tình dục, yếu sinh lý, trị liệt dương, di mộng tinh, xuất tinh sớm, tăng tác dụng cương dương cho nam giới.<br>
                <i class="bi bi-check-lg"></i> Đối với nữ giới: Giúp điều hòa kinh nguyệt, thúc đẩy tuần hoàn máu và giúp giảm các triệu chứng khó chịu của phụ nữ giai đoạn tiền mãn kinh.<br>
                <i class="bi bi-check-lg"></i>Mát gan, giải độc, giúp tăng cường chức năng gan, phục hồi chức năng gan cho những người mắc bệnh gan, thận.<br>
                <i class="bi bi-check-lg"></i>Giúp làm chậm quá trình lão hóa và kéo dài tuổi thọ.<br>
                <i class="bi bi-check-lg"></i>Kích thích trí não, tăng cường và phát triển trí nhớ. Đặc biệt tốt cho người cao tuổi trí nhớ bị giảm sút, người có bệnh hay quên.</p>
        </div>


        <div class="congdung">
            <b>Đối tượng sử dụng Cao Hồng Sâm Linh Chi ACHIMMADANG: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Sản phẩm dùng được và thích hợp cho tất cả lứa tuổi, đối tượng sử dụng.<br>
                <i class="bi bi-caret-right-square-fill"></i>Sản phẩm đặc biệt tốt cho những người có sức khỏe và sức đề kháng kém, thường xuyên bị bệnh tật, bệnh nhân ung thư, nhất là ung thư gan thể nhẹ và nặng.<br>
                <i class="bi bi-caret-right-square-fill"></i>Người cao tuổi, bệnh nhân đang trong quá trình phục hồi sức khỏe.<br>
                <i class="bi bi-caret-right-square-fill"></i>Sản phẩm rất tốt cho chị em phụ nữ, nhất là phụ nữ ỏ giai đoạn tiền mãn kinh và mãn kinh.<br>
                <i class="bi bi-caret-right-square-fill"></i> Người cao tuổi, bệnh nhân đang trong quá trình phục hồi sức khỏe</p>

        </div>
        <div class="congdung">
            <b>Cách dùng Cao Hồng Sâm Linh Chi ACHIMMADANG: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Mỗi ngày uống 2 lần, mỗi lần 1-2 thìa (có kèm theo trong hộp sản phẩm), pha với 40-50ml nước ấm. Uống trước bữa ăn từ 15 đến 20 phút.<br>
                <i class="bi bi-caret-right-square-fill"></i>Để dễ sử dụng, có thể pha thêm chút đường hoặc mật ong tùy theo khẩu vị.<br>
                <i class="bi bi-caret-right-square-fill"></i> Do hồng sâm cung cấp rất nhiều năng lượng cho cơ thể. Vì vậy, chỉ nên sử dụng vào ban ngày. Không dùng vào ban đêm sẽ dễ bị khó ngủ.</p>

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
