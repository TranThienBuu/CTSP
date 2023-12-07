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
      <li class="breadcrumb-item"><a href="yx1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Nước Uống Tinh Chất Nghệ Bổ Gan Matsukiyo Turmeric (Lốc 6 Chai x 100ml)</a></li>
    </ol>
  </nav>
</div>

<div id="super-item">

  <div class="img-product">
    <div class="img">
      <img src="https://japana.vn/uploads/product/2022/05/18/1652855345-bo-gan-matsukiyo-turmeric-loc-6-chai-x-100ml-0.jpg" alt=""width="1200" height="668">
    </div>

    <div class="information-product">
      <div class="information-buy">

        <h2>Nước Uống Tinh Chất Nghệ Bổ Gan Matsukiyo Turmeric (Lốc 6 Chai x 100ml)</h2>
        <p>Tình trạng: <b>Còn hàng</b></p>
        <p>Thương hiệu: <b style="color: #BF1E2E">Matsukiyo</b> </p>
        <p>Xuất xứ: Nhật Bản</p>
        <p>Trọng lượng: 100ml</p>


        <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">490,000</b> </p>
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
      <img src="https://japonstore.vn/wp-content/uploads/2021/10/nuoc-uong-tinh-chat-nghe-matsukiyo-2-1.jpg" alt="">
      <p><i class="bi bi-magic"></i><b>Nước Uống Tinh Chất Nghệ Bổ Gan Matsukiyo Turmeric</b> Giàu dưỡng chất từ củ
        nghệ tươi giúp phục hồi da nhanh, làm lành các tổn thương da, ngăn ngừa lão hóa.</p>
      <p><i class="bi bi-magic"></i><b>Nước Uống Tinh Chất Nghệ Bổ Gan Matsukiyo Turmeric</b>Chiết xuất từ những củ nghệ
        tươi chọn lọc. Qua quá trình điều chế cẩn thận, các dưỡng chất trong nghệ được giữ nguyên. Những dưỡng chất trong nước uống nghệ tươi Matsukiyo giúp cơ
        thể giảm viêm, điều hoà dạ dày và dưỡng da nhanh lành hơn.</p>
    </div>

    <div class="congdung">
      <b>Công dụng </b>

      <p><i class="bi bi-dot"></i>Công dụng nước uống tinh chất nghệ Matsukiyo Turmeric: <br>
        <i class="bi bi-check-lg"></i>Nhờ dưỡng chất cucurmin và dưỡng chất từ nghệ tươi, nước uống tinh chất nghệ giúp làm lành da nhanh. Hỗ trợ điều trị mụn và giảm nguy cơ sẹo mụn, vết thâm sau mụn. Kháng khuẩn, giảm viêm nhiễm ở các tổn thương trên da. Ngăn ngừa nguy cơ để lại sẹo trên da.<br>
        <i class="bi bi-check-lg"></i>Tinh chất cucurmin giúp công phá cấu trúc melanin trong cơ thể. Từ đó làm mờ dần các vết nám, tàn nhang lâu năm khó chữa. Trả lại làn da trắng hồng tự nhiên, mịn màng cho cho chị em.<br>
        <i class="bi bi-check-lg"></i>Tăng cường sức đề kháng chung của cơ thể. Giảm nguy cơ mắc các bệnh tim mạch, huyếp áp, tiểu đường.<br>
        <i class="bi bi-check-lg"></i>Giảm nguy cơ đau dạ dày và mắc các bệnh dạ dày. Hỗ trợ giảm đau dạ dày, điều hòa axit trong ruột. Hiệu quả cao trong hỗ trợ điều trị rối loạn tiêu hóa, điều tiết đường ruột.<br>
        <i class="bi bi-check-lg"></i>Dùng sau khi uống rượu giúp tỉnh rượu, giảm tổn thương cơ quan nội tạng.<br>
        <i class="bi bi-check-lg"></i>Hỗ trợ giảm cân và tăng cường sinh lực khi bị mệt mỏi.<br>
        <i class="bi bi-check-lg"></i>Tăng cường hệ miễn dịch, hỗ trợ ngăn chặn quá trình hình thành bệnh ung thư.</p>
    </div>
    <div class="congdung">
      <b>Thành phần Nước uống tinh chất nghệ Matsukiyo Turmeric: </b>
      <p><i class="bi bi-caret-right-square-fill"></i> 1.520mg tinh chất nghệ tươi giàu chất kháng viêm và chống oxy hóa tự nhiên. Khi đi vào cơ thể tự phân tán và hấp thụ. Hỗ trợ tăng cường sức đề kháng cho cơ thể.<br>
        <i class="bi bi-caret-right-square-fill"></i>90mg cucurmin là dưỡng chất đặc biệt áp dụng nhiều trong công nghệ phòng chống viêm, làm lành sẹo.<br>
        <i class="bi bi-caret-right-square-fill"></i>100mg chiết xuất gan thủy phân giúp bảo vệ các cơ quan chức năng trong cơ thể. Hỗ trợ đào thải độc tố, ngăn ngừa vi khuẩn và khối u.<br>
        <i class="bi bi-caret-right-square-fill"></i>200mg axit citric dưỡng da sâu và giúp da săn chắc mịn màng.<br>
        <i class="bi bi-caret-right-square-fill"></i>700mg alanin và ornithine tăng cường sản xuất protein. Thúc đẩy cơ thể giải phóng hormone tăng trưởng và tăng cường trao đổi chất. Đào thải độc tố và mỡ thừa giúp bạn giảm cân hiệu quả hơn.<br>
        <i class="bi bi-caret-right-square-fill"></i>5 loại vitamin B1,B2, B6, B12 và vitamin E dưỡng da, phục hồi cơ thể toàn diện.</p>
    </div>
    <div class="congdung">
      <b>Cách dùng Nước uống tinh chất nghệ Matsukiyo Turmeric: </b>
      <p><i class="bi bi-caret-right-square-fill"></i>Uống 1 chai/ngày, dùng trực tiếp, lắc đều trước khi uống.<br>
        <i class="bi bi-caret-right-square-fill"></i>Uống trước hoặc sau khi ăn 30 phút. Nếu muốn giảm cân thì nên uống trước khi ăn. <br>
        <i class="bi bi-caret-right-square-fill"></i>Ngon hơn khi uống lạnh, có thể bảo quản ở ngăn tủ mát.</p>
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
