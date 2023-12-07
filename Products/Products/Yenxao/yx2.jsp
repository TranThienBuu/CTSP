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
            <li class="breadcrumb-item"><a href="yx1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Yến Rút Lông Ngọc Hoàng Yến Hộp 100g (13-14 Tổ)</a></li>
        </ol>
    </nav>
</div>

<div id="super-item">

    <div class="img-product">
        <div class="img">
            <img src="https://samyenngochoang.com/wp-content/uploads/2020/07/rut-long-100g-scaled.jpg" alt=""width="1200" height="668">
        </div>

        <div class="information-product">
            <div class="information-buy">

                <h2>Yến Rút Lông Ngọc Hoàng Yến Hộp 100g (13-14 Tổ)</h2>
                <p>Tình trạng: <b>Còn hàng</b></p>
                <p>Thương hiệu: <b style="color: #BF1E2E"> Ngọc Hoàng Yến</b> </p>
                <p>Xuất xứ: Việt Nam</p>
                <p>Trọng lượng: 100g</p>


                <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">4,200,000</b> </p>
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
            <img src="https://samyenngochoang.com/wp-content/uploads/2020/07/7_yen-rut-long-Ngoc-Hoang-Yen-100g-1024x689.jpg" alt="">
            <p><i class="bi bi-magic"></i><b>Yến Rút Lông</b> Yến rút lông Ngọc Hoàng Yến được sơ chế từ yến thô vừa thu hoạch và chỉ tuyển chọn
            những tổ tốt, thỏa mãn các tiêu chí tổ to, dày và ít lông. Dưới 30% tổ yến thô trong mỗi lô thu hoạch đạt chuẩn để chọn
            làm nguyên liệu đầu vào cho yến rút lông.</p>

            <p><i class="bi bi-magic"></i><b>Yến Rút Lông</b> Mỗi tổ yến rút lông của Ngọc Hoàng Yến sau khi làm khô bằng quạt nặng
            khoảng 8g, yến rút lông sau khi chưng sẽ nở bung ra các loại yến sơ chế khác do tổ yến trước đó chưa từng được ngân qua nước
            và gần như chỉ toàn là sợi yến.</p>

            <p><i class="bi bi-magic"></i><b>Yến Rút Lông</b> Chỉ nửa tổ yến rút lông (nặng khoảng 4g) sau khi chưng sẽ cho ra 1 chén yến thơm ngon,
            bổ dưỡng, đủ dùng cho người lớn trong 1 lần ăn.</p>

            <p><i class="bi bi-magic"></i><b>Yến Rút Lông</b> Sản phẩm còn đạt chứng nhận vệ sinh An toàn thực phẩm
                theo công bố 168/2017/NNPTNN - TG, giấy kiểm tra chất lượng số AR17VD-036321-01.</p>
        </div>

        <div class="congdung">
            <b>Hướng dẫn sử dụng</b>

            <p><i class="bi bi-dot"></i>Cách chế biến Yến rút lông:<br>
                <i class="bi bi-check-lg"></i>Đối với yến sơ chế, liều lượng cho mỗi lần dùng ở người lớn là 4-5g, nên khi chế biến cho
                1 người dùng thì chưng mỗi lần nửa tổ (4g), cũng có thể chưng mỗi lần 1 tổ (8g) cho tiện, ăn nửa phần, phần còn lại bảo quản
                trong tủ lạnh cho lần ăn tiếp theo.<br>
                <i class="bi bi-check-lg"></i>Ngâm tổ yến trong chén cho đến khi yến mềm hoàn toàn (khoảng 30 phút). Có thể dùng nước ngân yến này
                để chưng yến.<br>
                <i class="bi bi-check-lg"></i>Cho yến vào chén, thêm nước trắng hoặc nước dừa vào vừa đủ. Chưng cách thủy trong 20- 25 phút.<br>
                <i class="bi bi-check-lg"></i>Cho đường phèn với nước vào nồi, đun đến khi đường tan hoàn toàn.<br>
                <i class="bi bi-check-lg"></i>Gừng xắt lát mỏng.<br>
                <i class="bi bi-check-lg"></i>Hạt chia ngâm với nước cho nở hoàn toàn.<br>
                <i class="bi bi-check-lg"></i>Nấu chín hạt sen, táo tàu, câu ký tử (nên nấu riêng từng món).<br>
                <i class="bi bi-check-lg"></i>Thêm 2 lát gừng vô tô yến đang chưng.<br>
                <i class="bi bi-check-lg"></i>Tùy món có thể thêm, hạt chia, hạt sen, nhãn nhục, táo tàu, câu kỷ tử. Tiếp tục chưng thêm 3-5 phút nữa.<br>
                <i class="bi bi-check-lg"></i>Không nên cho đường và các nguyên liệu như hạt sen, táo tàu, nhãn nhục, câu kỷ tử vào chén yến để chưng ngay từ đầu
                vì sẽ làm sợi yến không nở bung hết.</p>
        </div>

        <div class="congdung">
            <b>Cách dùng: </b>
            <p><i class="bi bi-caret-right-square-fill"></i>Yến sau khi chưng có thể dùng ngay được hoặc bảo quản trong ngăn mát tủ lạnh
                trong 5 ngày. Khi ăn có thể dùng lạnh hoặc hâm nóng đều được.<br>
                <i class="bi bi-caret-right-square-fill"></i>Thời điểm ăn yến sào là lúc bụng đói vào buổi sáng hoặc buổi tối trước khi đi
                ngủ để dưỡng chất được hấp thụ hoàn toàn.</p>
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
