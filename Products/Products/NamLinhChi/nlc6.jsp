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
      <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Nấm Linh Chi Đỏ Việt Nam Hoàng Gia 500G Nguyên Tai</a></li>
    </ol>
  </nav>
</div>

<div id="super-item">

  <div class="img-product">
    <div class="img">
      <img src="https://linhchihoanggia.com/data/Product/1685085680.jpg" alt="">
    </div>

    <div class="information-product">
      <div class="information-buy">

        <h2>Nấm Linh Chi Đỏ Việt Nam Hoàng Gia 500G Nguyên Tai</h2>
        <p>Tình trạng: <b>Còn hàng</b></p>
        <p>Thương hiệu: <b style="color: #BF1E2E">Nấm Linh Chi Việt Nam</b> </p>
        <p>Xuất xứ: Việt Nam</p>
        <p>Trọng lượng: 500g</p>


        <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">450,000</b> </p>
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
      <img src="https://linhchihoanggia.com/data/images/nam-linh-chi-hop-120g_-chitiet(1).jpg" alt="Mô tả hình ảnh" width="1200" height="668">
      <p><i class="bi bi-magic"></i><b>Nấm Linh Chi Đỏ Việt Nam Hoàng Gia</b>  thuộc sản phẩm riêng quyền của Thảo Dược Hoàng Gia, được nuôi trồng theo quy trình khoa học,
        tối ưu hấp thụ dược chất, thu hoạch đúng thời hạn. Kiểm định, chọn lọc kĩ càng trên từng tai nấm, nên chất lượng của Linh Chi Việt Nam luôn được chất lượng. </p>

      <p><i class="bi bi-magic"></i><b>Nấm Linh Chi Đỏ Việt Nam Hoàng Gia</b> Cùng với đó, sản phẩm này được cấp đầy đủ các chứng nhận vệ sinh an toàn thực phẩm, chứng chỉ công bố ngoài thị trường, đạt TOP 50 thương hiệu dẫn đầu Việt Nam, TOP 100 sản phẩm được người tiêu dùng bình chọn. đạt chuẩn chỉ tiêu chất lượng của ISO 9001 :2008.</p>
    </div>

    <div class="congdung">
      <b>Công dụng Nấm Linh Chi Đỏ Việt Nam Hoàng Gia:</b>

      <p><i class="bi bi-dot"></i>Linh chi Hoàng Gia là loại thực phẩm chức năng có hơn 200 hoạt chất tốt cho sức khỏe. Công dụng của nấm linh chi Hoàng Gia đó chính là:<br>
        <i class="bi bi-check-lg"></i>Ổn định huyết áp.<br>
        <i class="bi bi-check-lg"></i>Nâng cao sức đề kháng để phòng ngừa các căn bệnh nguy hiểm.<br>
        <i class="bi bi-check-lg"></i>Hỗ trợ điều trị bệnh tiểu đường, điều hòa đường huyết trong cơ thể.<br>
        <i class="bi bi-check-lg"></i>Hỗ trợ điều trị ung thư.<br>
        <i class="bi bi-check-lg"></i>Điều hòa kinh nguyệt.<br>
        <i class="bi bi-check-lg"></i>Giải độc gan, điều trị các bệnh về gan.<br>
        <i class="bi bi-check-lg"></i>Ngăn chặn và làm chậm các quá trình lão hóa của cơ thể.<br>
        <i class="bi bi-check-lg"></i>Hạn chế tích tụ mỡ thừa trong cơ thể, ngăn chặn tình trạng béo phì.</p>
    </div>


    <div class="congdung">
      <b>Đối tượng sử dụng Nấm Linh Chi Đỏ Việt Nam Hoàng Gia: </b>
      <p><i class="bi bi-caret-right-square-fill"></i> Dành cho các trường hợp phải thường xuyên tiếp xúc với đồ uống có cồn.<br>
        <i class="bi bi-caret-right-square-fill"></i>Đối với người thừa cân, hỗ trợ kiểm soát cân nặng nhờ nấm linh chi.<br>
        <i class="bi bi-caret-right-square-fill"></i>Giúp chị em phụ nữ làm đẹp bằng cách thanh lọc, tái tạo tế bào da giúp da dẻ hồng hào tự nhiên.<br>
        <i class="bi bi-caret-right-square-fill"></i>Cải thiện chức năng thận và phổi.<br>
        <i class="bi bi-caret-right-square-fill"></i>Linh chi đỏ giúp cơ thể sản sinh ra các hợp chất hữu cơ thành steroid. Tăng chức năng cần thiết ở người nam.</p>

    </div>
    <div class="congdung">
      <b>Cách dùng Nấm Linh Chi Đỏ Việt Nam Hoàng Gia: </b>
      <p><i class="bi bi-caret-right-square-fill"></i>Để sử dụng nấm linh chi Hoàng Gia, bạn dùng khoảng 20g nấm đã thái lát để đun cùng 2 lít nước.<br>
        <i class="bi bi-caret-right-square-fill"></i>Khi nước sôi thì giảm lửa nhỏ lại để trong 3 phút là có thể tắt bếp.<br>
        <i class="bi bi-caret-right-square-fill"></i>Tùy theo sở thích của người dùng mà có thể thêm vào nước linh chi mật ong, atiso, cam thảo,…Có thể dùng bã nước nấm linh chi để nấu thêm 1 – 2 lần nước kế tiếp.</p>

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
