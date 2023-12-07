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
      <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Nước Hồng Sâm Tăng Lực Vital Tonic KGC Hộp 10 Ống</a></li>
    </ol>
  </nav>
</div>

<div id="super-item">

  <div class="img-product">
    <div class="img">
      <img src="https://cheongkwanjang.com.vn/wp-content/uploads/2021/11/nuoc-hong-sam-vital-tonic-hwal-gi-ruk-10.jpg" alt="">
    </div>

    <div class="information-product">
      <div class="information-buy">

        <h2>Nước Hồng Sâm Tăng Lực Vital Tonic KGC Hộp 10 Ống</h2>
        <p>Tình trạng: <b>Còn hàng</b></p>
        <p>Thương hiệu: <b style="color: #BF1E2E"> Cheong Kwan Jang Corp</b> </p>
        <p>Xuất xứ: Hàn Quốc</p>
        <p>Trọng lượng: 20ml</p>


        <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">940,000</b> </p>
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
      <img src="https://sanphamsuckhoe.com.vn/uploads/Files/nuoc-hong-sam-tang-luc-vital-tonic-kgc-hop-10-ong-sam-yen-hoang-gia.jpg" alt="Mô tả hình ảnh" width="1200" height="668">
      <p><i class="bi bi-magic"></i><b>Nước Hồng Sâm Tăng Lực Vital Tonic KGC</b> Nước  hồng sâm cao cấp KGC Vital Tonic ( tên cũ Hwal Gi Ruk) hộp 10 ống là một sản phẩm cao cấp trong dòng sản phẩm HWAL GI
        của tập đoàn Cheong Kwan Jang. Sản phẩm là sự kết hợp giữa Tinh chất hồng sâm cô đặc chiết xuất hoàn toàn từ hồng sâm 6 năm tuổi Hàn Quốc (5%) kết hợp với các thảo dược quý là táo tàu, kỷ tử, ngũ vị tử bắc, chi hoàng kỳ, vitamin C. </p>

      <p><i class="bi bi-magic"></i><b>Nước Hồng Sâm Tăng Lực Vital Tonic KGC</b> Nước hồng sâm cao cấp KGC Vital Tonic là một biến thể của Viên hồng sâm cao cấp KGC Vital Tonic, dành cho những người thích sử dụng dạng
        nước uống tiện dụng với vị êm dịu hơn. Sản phẩm mang đến hiệu quả bồi bổ tức thì cho người sử dụng mọi lúc mọi nơi, phù hợp với cuộc sống năng động, hiên đại.</p>
    </div>

    <div class="congdung">
      <b>Công dụng Nước Hồng Sâm Tăng Lực Vital Tonic KGC:</b>

      <p><i class="bi bi-dot"></i>Nước hồng sâm tăng lực Vital Tonic hàn quốc mang lại nhiều tác dụng tuyệt vời đối với sức khỏe người dùng, giúp bồi bổ sức khỏe,
        tăng cường sinh lực, giảm stress, giúp ăn ngon, ngủ ngon giấc:<br>
        <i class="bi bi-check-lg"></i>Dùng cho người hay bị áp lực trong công việc, học sinh học tập quá sức.<br>
        <i class="bi bi-check-lg"></i>Dùng cho người hay tập luyện thể thao với cường độ cao.<br>
        <i class="bi bi-check-lg"></i>Chống lão hóa, làm đẹp da, cải thiện sắc đẹp.<br>
        <i class="bi bi-check-lg"></i>Tăng cường khả năng miễn dịch, nâng cao sức khỏe cho cơ thể.<br>
        <i class="bi bi-check-lg"></i>Tăng cường tuần hoàn máu.<br>
        <i class="bi bi-check-lg"></i>Hỗ trợ cải thiện trí nhớ.<br>
        <i class="bi bi-check-lg"></i>Giảm căng thẳng mệt mỏi.</p>
    </div>


    <div class="congdung">
      <b>Đối tượng sử dụng Nước Hồng Sâm Tăng Lực Vital Tonic KGC: </b>
      <p><i class="bi bi-caret-right-square-fill"></i>Tất cả mọi người. Thích hợp cho những người gầy ốm, người đang mệt, kiệt sức, bị stress, thiếu máu, kém ăn, khó ngủ.</p>

    </div>
    <div class="congdung">
      <b>Cách dùng Nước Hồng Sâm Tăng Lực Vital Tonic KGC: </b>
      <p><i class="bi bi-caret-right-square-fill"></i>Người lớn dùng 1 lần/ngày , mỗi lần 1 ống, dùng trước hoặc sau bữa ăn.<br>
        <i class="bi bi-caret-right-square-fill"></i>Nên uống ngay sau khi mở nắp để đạt hiệu quả cao nhất.<br>
        <i class="bi bi-caret-right-square-fill"></i>Người có thể trạng đặc biệt hoặc dị ứng với thuốc vui lòng đọc kĩ bảng thành phần trước khi sử dụng.</p>

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
