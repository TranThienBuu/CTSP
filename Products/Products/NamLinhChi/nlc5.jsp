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
      <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Nấm Linh Chi Đỏ Hàn Quốc Loại 1 Cắt Lát Sẵn 1KG</a></li>
    </ol>
  </nav>
</div>

<div id="super-item">

  <div class="img-product">
    <div class="img">
      <img src="data:image/jpeg;base64,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"alt="">
    </div>

    <div class="information-product">
      <div class="information-buy">

        <h2>Nấm Linh Chi Đỏ Hàn Quốc Loại 1 Cắt Lát Sẵn 1KG</h2>
        <p>Tình trạng: <b>Còn hàng</b></p>
        <p>Thương hiệu: <b style="color: #BF1E2E">Youngji</b> </p>
        <p>Xuất xứ: Hàn Quốc</p>
        <p>Trọng lượng: 1kg</p>


        <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">3,000,000</b> </p>
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
      <img src="https://laza.vn/uploads/product/images/Nam-Linh-Chi-Han-Quoc/nam-linh-chi-do-thai-lat-1kg-001.jpg" alt="Mô tả hình ảnh" width="1200" height="668">
      <p><i class="bi bi-magic"></i><b>Nấm Linh Chi Đỏ Hàn Quốc Loại 1 Cắt Lát</b> có đóng gói tương tự như sản phẩm nấm linh chi thái lát 0.5 kg. Đây là một sản phẩm vô cùng tiện lợi khi sử dụng dành riêng cho các bà nội trợ.
        Thực phẩm này chắc chắn sẽ là một sản phẩm bổ dưỡng dành cho từng thành viên trong gia đình.</p>

      <p><i class="bi bi-magic"></i><b>Nấm Linh Chi Đỏ Hàn Quốc Loại 1 Cắt Lát</b>Ngoài ra, đây cũng là một món quà ý nghĩa dành cho người mà bạn yêu thương.</p>
    </div>

    <div class="congdung">
      <b>Công dụng Nấm Linh Chi Đỏ Hàn Quốc Loại 1 Cắt Lát:</b>

      <p><i class="bi bi-dot"></i>Vào những ngày hè nóng nực, lượng đường trong máu thường có diễn biến phức tạp, lên xuống thất thường. Việc sử dụng nấm linh chi sẽ giúp điều chỉnh lại chỉ số huyết áp về mức ổn định, đảm bảo sức khỏe cho người sử dụng:<br>
        <i class="bi bi-check-lg"></i>Giúp đào thải bớt các độc tố trong cơ thể làm giảm bớt tình trạng mụn nhọt, rôm sảy thường xuất hiện vào những ngày hè. Đồng thời, nó còn giúp làm mát gan, giải độc gan, đem lại sự sảng khoái cho cơ thể.<br>
        <i class="bi bi-check-lg"></i>Dựa vào các kết quả nghiên cứu lâm sàng cho thấy, linh chi giúp cho quá trình tuần hoàn máu diễn ra tốt hơn, tăng cường hoạt động lưu thông máu lên não. Từ đó, giúp cải thiện tình trạng mất trí nhớ ở người cao tuổi, tăng khả năng tập trung đối với những người làm việc trí óc…<br>
        <i class="bi bi-check-lg"></i>Linh chi không chỉ giúp người bệnh giảm bớt đau đớn do bệnh tình gây ra, giảm các tác dụng phụ của thuốc đặc trị trong quá trình điều trị hóa xạ trị mà còn có tác dụng rất lớn trong việc ức chế sự hình thành và phát triển của tế bào ung thư, hạn chế tình trạng di căn của bệnh, giúp người bệnh lạc quan hơn trong quá trình điều trị.<br>
        <i class="bi bi-check-lg"></i>Cải thiện hiệu quả tình trạng co thắt mạch vành giúp ngăn ngừa sự xuất hiện của những cơn đau tim dữ dội. Bên cạnh đó, nấm linh chi còn giúp tăng cường hoạt động lưu thông máu và kích thích hệ tuần hoàn máu diễn ra thường xuyên, liên tục…<br>
        <i class="bi bi-check-lg"></i>Linh chi có chứa một số thành phần chất chống viêm như ftriturrpi-noids giúp tăng cường sức khỏe cho hệ xương khớp.<br>
        <i class="bi bi-check-lg"></i>Linh chi có tác dụng hỗ trợ quá trình tạo ra glycogen giúp tăng cường khả năng oxy hóa các acid béo nhằm tiêu hao lượng glucose trong cơ thể. Từ đó hỗ trợ hiệu quả trong việc chữa trị bệnh đái tháo đường.<br>
        <i class="bi bi-check-lg"></i>Trong nấm linh chi thái lát có chứa các thành phần quan trọng cho việc làm đẹp như collagen, các loại vitamin và các khoáng chất. Những thành phần này sẽ giúp cải thiện làn da từ sâu bên trong, ngăn chặn quá trình lão hóa đang diễn ra, giúp da trở nên sáng hồng, khỏe mạnh hơn.</p>
    </div>


    <div class="congdung">
      <b>Đối tượng sử dụng Nấm Linh Chi Đỏ Hàn Quốc Loại 1 Cắt Lát: </b>
      <p><i class="bi bi-caret-right-square-fill"></i>Người cao tuổi cần bồi vổ sức khỏe.<br>
        <i class="bi bi-caret-right-square-fill"></i>Người đang trong tình trạng suy nhược cơ thể, cần cải thiện và hồi phục sức khỏe, tăng cường khả năng đề kháng của cơ thể.<br>
        <i class="bi bi-caret-right-square-fill"></i>Người có nguy cơ mắc các bệnh như , cao , tim mạch.<br>
        <i class="bi bi-caret-right-square-fill"></i>Người có vấn đề về gan như bệnh nhân viêm gan, xơ gan hay suy gan trầm trọng.</p>

    </div>
    <div class="congdung">
      <b>Cách dùng Nấm Linh Chi Đỏ Hàn Quốc Loại 1 Cắt Lát: </b>
      <p><i class="bi bi-caret-right-square-fill"></i>Lấy khoảng 10 gram nấm linh chi thái lát đun với nước. Đun lửa nhỏ để tinh chất trong nấm linh chi từ từ hòa vào với nước. Đun nấm linh chi khoảng 20 đến 30 phút thì chắt nước ra bình thủy, uống trong ngày.<br>
        <i class="bi bi-caret-right-square-fill"></i>Đối với các bà nội trợ, có thể tận dụng loại nước linh chi này để làm gia vị cho các bữa ăn như thêm vào canh, súp hay lẩu, tạo ra bữa ăn bổ dưỡng cho gia đình.<br>
        <i class="bi bi-caret-right-square-fill"></i>Nên bảo quản nấm linh chi thái lát ở nơi khô ráo và thoáng mát, tránh độ ẩm cao, tránh nắng mặt trời.</p>

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
