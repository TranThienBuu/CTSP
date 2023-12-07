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
      <li class="breadcrumb-item"><a href="sp1.jsp" style="color: #BF1E2E;text-decoration: none; font-size: 16px;">Nấm Đông Trùng Hạ Thảo Hàn Quốc 100G Sấy khô  </a></li>
    </ol>
  </nav>
</div>

<div id="super-item">

  <div class="img-product">
    <div class="img">
      <img src="https://kgin.com.vn/wp-content/uploads/2022/07/nam-dong-trung-1.jpg" alt="">
    </div>

    <div class="information-product">
      <div class="information-buy">

        <h2>Nấm Đông Trùng Hạ Thảo Hàn Quốc 100G Sấy khô </h2>
        <p>Tình trạng: <b>Còn hàng</b></p>
        <p>Thương hiệu: <b style="color: #BF1E2E"> Rootmulsan</b> </p>
        <p>Xuất xứ: Hàn Quốc</p>
        <p>Trọng lượng: 100g</p>


        <p>Giá: <b style="color: #BF1E2E; font-size: 25px; margin-left: 30px">2,000,000</b> </p>
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
      <img src="https://dongtrunghathaovietnam.com.vn/datafiles/galagy/1572401645_dong-trung-ha-thao-soi-kho-khang-thinh-100g-hinh-1.png" alt="Mô tả hình ảnh" width="1200" height="668">
      <p><i class="bi bi-magic"></i><b>Nấm Đông Trùng Hạ Thảo Hàn Quốc Sấy khô</b> Nấm đông trùng hạ thảo sấy khô là
        sản phẩm cao cấp được nuôi trồng và chế biến trên công nghệ hiện đại tiên tiến bậc nhất, mang lại giá trị dinh
        dưỡng cao và công dụng rất tốt với sức khỏe.</p>

      <p><i class="bi bi-magic"></i><b>Nấm Đông Trùng Hạ Thảo Hàn Quốc Sấy khô</b> Sản phẩm được chế biến bằng phương pháp
        sấy bằng gió nóng 40 độ cho khô sau đó khử trùng bằng cách sấy ở 121 độ. Do vậy hàm lượng cordycepin không bị mất
        đi trong quá trình sấy mà vẫn giữ được nguyên vẹn.</p>
    </div>

    <div class="congdung">
      <b>Công dụng Nấm Đông Trùng Hạ Thảo Hàn Quốc Sấy khô:</b>

      <p><i class="bi bi-dot"></i>Đông trùng hạ thảo có hàm lượng dinh dưỡng cao, sử dụng đều đặn hàng ngày mang lại nhiều công dụng tích cực đối với sức khỏe.:<br>
        <i class="bi bi-check-lg"></i>Bồi bổ cơ thể, cải thiện hệ miễn dịch, giúp phòng ngừa bệnh tật.<br>
        <i class="bi bi-check-lg"></i>Bổ phổi, tốt cho hệ hô hấp, giúp phục hồi phế nang bị tổn thương do hút thuốc lá, làm việc trong môi trường độc hại, khói bụi lâu ngày.<br>
        <i class="bi bi-check-lg"></i>Tăng cường hệ tuần hoàn, chống kết dính tiểu cầu, ngăn ngừa nguy cơ tim mạch.<br>
        <i class="bi bi-check-lg"></i>Giúp phục hồi sức khỏe nhanh chóng cho người mới ốm dậy, người sử dụng kháng sinh, hóa xá trị lâu ngày.<br>
        <i class="bi bi-check-lg"></i>Tăng cường chức năng gan thận, hỗ trợ điều trị chứng liệt dương, suy tinh, yếu sinh lý.<br>
        <i class="bi bi-check-lg"></i>Giúp người già ăn ngon, ngủ sâu giấc hơn, phòng ngừa bệnh tuổi già.<br>
        <i class="bi bi-check-lg"></i>Giảm đường huyết trong máu, ngăn ngừa biến chứng và cải thiện sức đề kháng cho người bị tiểu đường.</p>
    </div>


    <div class="congdung">
      <b>Cách sử dụng Nấm Đông Trùng Hạ Thảo Hàn Quốc Sấy khô: </b>
      <p><i class="bi bi-caret-right-square-fill"></i>Hãm trà: Lấy 4-5 sợi nấm đông trùng cho vào bình và chế nước sôi, ủ trong vài phút thì uống. Khi hết lại tiếp tục chế nước và uống trong ngày.<br>
        <i class="bi bi-caret-right-square-fill"></i>Nấu cháo: Gạo cho vào nấu cháo như bình thường, đến lúc gần chín thì cho vài sợi nấm đông trùng đã xay hoặc thái nhỏ và khuấy đều, đun đến khi chín lại là được.<br>
        <i class="bi bi-caret-right-square-fill"></i>Ngâm mật ong: Dùng 10g đông trùng hạ thảo ngâm với 1 lít mật ong, đựng trong bình thủy tinh để đảm bảo chất lượng. Đóng nắp kín và bảo quản nơi khô ráo. Sau 1 tháng thì dùng, mỗi lần dùng 10ml.<br>
        <i class="bi bi-caret-right-square-fill"></i>Ngâm rượu: Ngâm 20g đông trùng và 1 lít rượu trắng 40 độ, ngâm trong bình thủy tinh 30 ngày là sử dụng được (mỗi ngày uống 10ml)<br>
        <i class="bi bi-caret-right-square-fill"></i>Ngâm rượu với nhung hươu: chuẩn bị 10g đông trùng hạ thảo tươi và 20g nhung hươu ngâm với 1,5 lít rượu. Ngâm trong khoảng 15 ngày là dùng được.<br>
        <i class="bi bi-caret-right-square-fill"></i>Ngâm rượu với nhân sâm: chuẩn bị 10g đông trùng hạ thảo tươi và 10g nhân sâm ngâm với 1,5 lít rượu. Ngâm trong khoảng 20 ngày là dùng được.<br>
        <i class="bi bi-caret-right-square-fill"></i>Hầm gà: Dùng 5g bông đông trùng hạ thảo hầm với gà đen. Tác dụng: bổ thận trợ dương, chữa trị các chứng đầu óc choáng váng, trí nhớ giảm sút, tim đập dồn dập, nhìn đồ vật mờ ảo, chập chờn, cơ thể suy nhược dễ cảm cúm, đổ nhiều mồ hôi, sợ lạnh….<br>
        <i class="bi bi-caret-right-square-fill"></i>Nấu canh: Mỗi lần nấu canh, bạn có thể cho thêm một nhúm nhỏ bông đông trùng hạ thảo sẽ giúp món ăn có màu vàng đẹp mắt và vị ngọt tự nhiên mà không cần nêm bất cứ loại bột ngọt nào khác.<br>
        <i class="bi bi-caret-right-square-fill"></i>Lưu ý: Đông trùng hạ thảo có tác dụng tuy rất tốt nhưng chúng ta cũng không nên sử dụng nó một cách vô tội vạ. Khi sử dụng nấm đông trùng hạ thảo thì không nên sử dụng củ cải trắng vì các thành phần tốt sẽ bị vô hiệu hóa và mất tác dụng.</p>

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
