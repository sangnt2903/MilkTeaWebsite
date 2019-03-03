<?php 
    include('controller/c_admin.php');
    $c_admin = new C_Admin();
    $orders = $c_admin->getAllOrder_unUsed();
    $orderss = $orders['orders_unUsed'];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Danh mục sản phẩm</title>

<!--Links bootstrap-->
<!--default-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Trà sữa Kimochi - Trà sữa của sự Sung Sướng</title>
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css
    ">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="public/JQuery/style.css">
    <script src="public/JQuery/js/jquery-1.4.3.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.4/TweenMax.min.js"></script>
    <script src="public/JQuery/js/java.js"></script>

    <link rel="stylesheet" href="public/css/owl.carousel.css">
    <link rel="stylesheet" href="public/style.css">
    <link rel="stylesheet" href="public/css/responsive.css">
    <link rel="stylesheet" type="text/css" href="public/myCSS.css">
</head>
<body>	
<div class="container-fluid"  style="background-color: #35313a;">
	<div class="row col-md-12">
		<h2 style="color: white;">Danh sách tất cả đơn hàng chưa xử lý</h2>
		<div class="box-content">
	        <div class="btn-toolbar pull-right clearfix">
	            <div class="btn-group">
	                <a class="btn btn-circle show-tooltip" title="Làm mới" href="admin_order.php"><i class="fa fa-repeat"></i></a>
	            </div>
	        </div>
	    </div>
    	<table class="table table-condensed table-bordered" style="color: white;">
        	<thead>
            	<tr>
                    <th>Mã hóa đơn</th>
                    <th>Tên khách hàng</th>
                    <th>Tên người nhận</th>
                    <th>Thông tin sản phẩm</th>
                    <th>Tổng đơn hàng</th>
                    <th>Địa chỉ nhận</th>
                    <th>Số điện thoại người nhận</th>
                    <th>Xác nhận đơn hàng</th>
                </tr>    
            </thead>
            <tbody id="data">
            	<?php
                    foreach ($orderss as $order) {
                        ?>
                        <tr>
                            <td><?=$order->mahd?></td>
                            <td><?=$order->tenkh?></td>
                            <td><?=$order->tennguoinhan?></td>
                            <td><a href="admin_detail_order.php?mahd=<?=$order->mahd?>" class="text text-info">Xem chi tiết</a></td>
                            <td><?=$order->tongtien_hd?></td>
                            <td><?=$order->diachi_nhan?></td>
                            <td><?=$order->sdt_nhan?></td>
                            <td><a class="btn btn-circle show-tooltip" title="Xác nhận đơn hàng" href='admin_xuly_order.php?mahd=<?=$order->mahd?>&to=<?=$order->email?>' onClick="javascript: return confirm('Bạn có chắc muốn xác nhận hóa đơn này ?');"><i class="fa fa-check"></i></a></td>
                        </tr>
                        <?php
                    }
                ?>
            </tbody>
        </table>
    </div>
    <br>
    <br>
    <br />
</div>
</body>
</html>