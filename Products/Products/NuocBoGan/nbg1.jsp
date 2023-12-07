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
      <li class="breadcrumb-item"><a href="yx1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Nước Uống Thanh Nhiệt Bổ Gan Tiêu Độc Hàn Quốc 1 Chai </a></li>
    </ol>
  </nav>
</div>

<div id="super-item">

  <div class="img-product">
    <div class="img">
      <img src="http://hongsamhanquoc.net/Upload/Store/Default/2021/4/28/bo-gan-pngi-hshq.jpg" alt=""width="1200" height="668">
    </div>

    <div class="information-product">
      <div class="information-buy">

        <h2>Nước Uống Thanh Nhiệt Bổ Gan Tiêu Độc Hàn Quốc 1 Chai</h2>
        <p>Tình trạng: <b>Còn hàng</b></p>
        <p>Thương hiệu: <b style="color: #BF1E2E"> Hovenia Dulcis Punggi</b> </p>
        <p>Xuất xứ: Hàn Quốc</p>
        <p>Trọng lượng: 100ml</p>


        <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">550,000</b> </p>
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
      <img src="https://hanquocgiare.com/wp-content/uploads/2023/04/nuoc-bo-gan-dong-trung-ha-thao-chai-well-bio-3-768x768.jpg.webp" alt="">
      <p><i class="bi bi-magic"></i><b>Nước Uống Thanh Nhiệt Bổ Gan Tiêu Độc Hàn Quốc</b> Nước Uống Thanh Nhiệt Bổ Gan Tiêu Độc Hàn Quốc giải độc rượu, giải độc chất độc hại trong rượu bia,
        thanh lọc cơ thể, làm mát gan, bảo vệ gan.</p>

      <p><i class="bi bi-magic"></i><b>Nước Uống Thanh Nhiệt Bổ Gan Tiêu Độc Hàn Quốc</b> Đặc biệt sản phẩm rất tốt đối với người sau khi uống rượu bia vì nước Uống Thanh Nhiệt Bổ Gan Tiêu Độc Hàn Quốc Hovenia Taewoong Food Hàn
        Quốc giảm nhức đầu khi uống rượu hay giảm say, khô họng khát nước khi ngủ dậy.</p>
      <p><i class="bi bi-magic"></i><b>Nước Uống Thanh Nhiệt Bổ Gan Tiêu Độc Hàn Quốc</b> Mặt khác, bổ gan Hàn Quốc ngăn ngừa lão hóa, trị mụn nhọt, nám cho da dẻ hồng hào.</p>
    </div>

    <div class="congdung">
      <b>Đối tượng sử dụng Nước Uống Thanh Nhiệt Bổ Gan Tiêu Độc Hàn Quốc: </b>

      <p><i class="bi bi-dot"></i>Thực phẩm bổ gan Hàn Quốc Hovenia Taewoong Food  thích hợp dùng cho những ai?<br>
        <i class="bi bi-check-lg"></i>Dùng nước bổ gan Hàn Quốc cho người cần thanh nhiệt giải độc cơ thể, gầy yếu, cơ thể suy kiệt.<br>
        <i class="bi bi-check-lg"></i>Dùng nước uống bổ gan giải rượu bia Hàn Quốc cho người suy gan, có bệnh về gan.<br>
        <i class="bi bi-check-lg"></i>Dùng tốt cho phụ nữ: Thực phẩm chức năng bổ gan tiêu độc Hovenia Taewoong Food có tác dụng giải độc cơ thể, đào thải các chất độc hại trong máu, giúp nhuận tràng, làm hết mụn nhọt,
        trứng cá làm đẹp da cho phụ nữ cũng như chống lão hóa da.</p>
    </div>
    <div class="congdung">
      <b>Thành phần Nước Uống Thanh Nhiệt Bổ Gan Tiêu Độc Hàn Quốc: </b>
      <p><i class="bi bi-caret-right-square-fill"></i>Chiết xuất từ cây Hovenia: hovenia dulci còn được gọi là chỉ cụ, cây khúng khéng, vạn thọ, kê trảo có chứa nhiều dưỡng chất cần thiết cho sức khỏe như chứa đường glucozafructoza, saccrosa, muối kali, nitrat,… và vitamin acid amin đặc biệt trong cây hovenia có chứa các thành phần giúp chống nôn giải độc rượu,
        bảo vệ gan, đối với những người dùng nước bổ gan hovenia còn giúp giảm đau đầu, giảm say, khô họng khát nước.<br>
        <i class="bi bi-caret-right-square-fill"></i>Táo đỏ: tăng cường tim phổi tiêu hóa kém, tăng cường hệ tiêu hóa như đường ruột dạ dày cung cấp một lượng lớn Vitamin C khoáng chất vi lượng giúp bổ máu, đồng thời giúp an thần ổn định huyết áp giảm mệt mỏi.<br>
        <i class="bi bi-caret-right-square-fill"></i>Bạch chỉ:  tác động vào phế phổi vị và đại tràng giúp hoạt huyết giảm đau giảm nhức đầu.<br>
        <i class="bi bi-caret-right-square-fill"></i>Nấm linh chi: thanh nhiệt bồi bổ gan giải độc lợi tiểu tốt cho tiêu hóa, ngải cứu tốt cho tiêu hóa hệ miễn dịch tăng cường trí nhớ giảm căng thẳng mệt mỏi.<br>
        <i class="bi bi-caret-right-square-fill"></i>Địa hoàng: thanh nhiệt bổ máu ổn định đường huyết lợi tiểu tăng cường sức khỏe tim mạch chữa các chứng suy nhược tiểu đường chảy máu trong.</p>
    </div>
    <div class="congdung">
      <b>Cách dùng Nước Uống Thanh Nhiệt Bổ Gan Tiêu Độc Hàn Quốc: </b>
      <p><i class="bi bi-caret-right-square-fill"></i>Đối với người lớn nên uống 1-2 lần/ngày, mỗi lần 1 gói bổ gan Hàn Quốc.<br>
        <i class="bi bi-caret-right-square-fill"></i>Đối với trẻ em chỉ nên uống ½ liều người lớn. Lắc đều trước khi uống.</p>
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
