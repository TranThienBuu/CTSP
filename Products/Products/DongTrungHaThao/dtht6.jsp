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
      <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Đông Trùng Hạ Thảo nguyên con loại 1 hộp gỗ 10g</a></li>
    </ol>
  </nav>
</div>

<div id="super-item">

  <div class="img-product">
    <div class="img">
      <img src="http://hongsamhanquoc.net/Upload/Store/Default/2022/8/26/dong-trung-tay-tang-1.jpg" alt="">
    </div>

    <div class="information-product">
      <div class="information-buy">

        <h2>Đông Trùng Hạ Thảo nguyên con loại 1 hộp gỗ 10g</h2>
        <p>Tình trạng: <b>Còn hàng</b></p>
        <p>Thương hiệu: <b style="color: #BF1E2E">Onplaza</b> </p>
        <p>Xuất xứ: Trung Quốc</p>
        <p>Trọng lượng: 10g</p>


        <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">11,000,000</b> </p>
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
      <img src="http://hongsamhanquoc.net/Upload/CKFinder/images/dong-trung/dong-trung-tay-tang-8.jpg" alt="Mô tả hình ảnh" width="1200" height="668">
      <p><i class="bi bi-magic"></i><b>Đông Trùng Hạ Thảo nguyên con loại 1</b> Vì những tác dụng vô cùng bồi bổ của nó mà các vị thần y hàng đầu từ ngàn đời xưa đã có một loạt các liệt kê về công dụng bồi bổ của đông trùng hạ thảo nguyên con như: hỗ trợ người đau nhức mỏi cơ, cải thiện chức năng sinh lý, người xuất tinh sớm, kéo dài thời gian chăn gối cho chuyện
        phòng the thêm phần hoàn hảo đồng thời hỗ trợ ngăn ngừa, phòng tránh các bệnh về cao huyết áp, ung thư, tiểu đường.</p>

      <p><i class="bi bi-magic"></i><b>Đông Trùng Hạ Thảo nguyên con loại 1 </b> Y học cổ truyền, Y học hiện đại cũng
        đã cho thấy Đông trùng hạ thảo gần như không có bất kỳ tác dụng nào đối với cơ thể người trong trường hợp sử dụng thuốc đúng cách, hiệu quả. Bên cạnh đó, Đông trùng hạ thảo cũng được biết là loại Đông dược quý từ ngàn đời xưa đem được bào chế thành các dạng thuốc quý vô cùng đa dạng.</p>
    </div>

    <div class="congdung">
      <b>Công dụng của Đông Trùng Hạ Thảo nguyên con loại 1:</b>

      <p><i class="bi bi-dot"></i>Sách y học cổ truyền Trung Quốc từ xa xưa đã coi Đông trùng hạ thảo là vị thuốc hồi xuân sinh lực, giữ nét thanh xuân cho chị em được các vua chúa tin dùng:<br>
        <i class="bi bi-check-lg"></i>Chống lại tác dụng xấu của các tân dược đối với thận, thí dụ đối với độc tính của Cephalosporin A.<br>
        <i class="bi bi-check-lg"></i>Chống lại sự suy thoái của thận, xúc tiến việc tái sinh và phục hồi các tế bào tiểu quản ở thận<br>
        <i class="bi bi-check-lg"></i>Tăng cường tính miễn dịch không đặc hiệu.<br>
        <i class="bi bi-check-lg"></i>Tăng cường tác dụng của nội tiết tố tuyến thượng thận và làm trương nở các nhánh khí quản.<br>
        <i class="bi bi-check-lg"></i>Làm chậm quá trình lão hoá của cơ thể.<br>
        <i class="bi bi-check-lg"></i>Làm giảm cholesterol trong máu và chống xơ vữa động mạch.<br>
        <i class="bi bi-check-lg"></i>Tăng cường chức năng tiêu hoá và hấp thu các chất dinh dưỡng.<br>
        <i class="bi bi-check-lg"></i>Có tác dụng cường dương và chống liệt dương.</p>
    </div>


    <div class="congdung">
      <b>Hướng dẫn sử dụng Đông Trùng Hạ Thảo nguyên con loại 1: </b>
      <p><i class="bi bi-caret-right-square-fill"></i>Nhai sống trực tiếp.<br>
        <i class="bi bi-caret-right-square-fill"></i>Đông trùng hạ thảo hãm nước.<br>
        <i class="bi bi-caret-right-square-fill"></i>Hầm canh đông trùng hạ thảo.<br>
        <i class="bi bi-caret-right-square-fill"></i>Đông trùng hạ thảo ngâm rượu.</p>

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
