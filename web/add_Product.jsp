<%-- 
    Document   : register
    Created on : Jun 9, 2017, 10:02:45 AM
    Author     : PVT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Thêm sản phẩm</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
        <!-- bootstrap -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">      
        <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">		
        <link href="themes/css/bootstrappage.css" rel="stylesheet"/>

        <!-- global styles -->
        <link href="themes/css/flexslider.css" rel="stylesheet"/>
        <link href="themes/css/main.css" rel="stylesheet"/>

        <!-- scripts -->
        <script src="themes/js/jquery-1.7.2.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>				
        <script src="themes/js/superfish.js"></script>	
        <script src="themes/js/jquery.scrolltotop.js"></script>
        <!--[if lt IE 9]>			
                <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
                <script src="js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>		
        <div id="top-bar" class="container">
            <div class="row">
                <div class="span4">
                    <form method="POST" class="search_form">
                        <input type="text" class="input-block-level search-query" Placeholder="eg. T-sirt">
                    </form>
                </div>
                <div class="span8">
                    <div class="account pull-right">
                        <ul class="user-menu">				

                            <li><a href="cart.jsp">Giỏ hàng</a></li>

                            <li><a href="login.jsp">Đăng xuất</a></li>		
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="wrapper" class="container">
            <section class="navbar main-menu">
                <div class="navbar-inner main-menu">				
                    <a href="indexAD.jsp" class="logo pull-left"><img src="themes/images//logo.png" class="site_logo" alt=""></a>
                    <nav id="menu" class="pull-right">
                        <ul>
                            <li><a href="#">Thời trang nữ</a>					
                                <ul>
                                    <li><a href="#">Váy</a></li>									
                                    <li><a href="#">Thời trang công sở</a></li>
                                    <li><a href="#">Túi xách</a></li>
                                    <li><a href="#">Giày</a></li>
                                </ul>
                            </li>															
                            <li><a href="#">Thời trang nam</a>
                                <ul>
                                    <li><a href="#">Sơ mi</a></li>									
                                    <li><a href="#">Thắt lưng</a></li>
                                    <li><a href="#">Cà vạt</a></li>
                                    <li><a href="#">Giày</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Đồ thể thao</a>                               
                            </li>							
                            <li><a href="#">Sản phẩm mới</a></li>
                            <li><a href="#">Bán chạy nhất</a></li>

                        </ul>
                    </nav>

                </div>
            </section>			
            <section class="header_text sub">

                <h4><span>Thêm sửa xóa sản phẩm</span></h4>
            </section>			
            <section class="main-content">				
                <div class="row">
                    <div class="span5">					

                        <form action="ProductController" method="post" enctype="multipart/form-data">

                            <fieldset>
                                <div class="control-group">
                                    <label class="control-label">ID sản phẩm</label>
                                    <div class="controls">
                                        <input type="text" placeholder="Nhập ID sản phẩm" id="username" name="txtProDuctID" class="input-xlarge">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Tên sản phẩm</label>
                                    <div class="controls">
                                        <input type="text" placeholder="Nhập tên sản phẩm" id="password" name="txtProDuctName" class="input-xlarge">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Giá sản phẩm</label>
                                    <div class="controls">
                                        <input type="text" placeholder="Nhập giá sản phẩm" id="username" name="txtProDuctPrice" class="input-xlarge">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Mô tả sản phẩm</label>
                                    <div class="controls">
                                        <input type="text" placeholder="Nhập mô tả sản phẩm" id="username" name="txtProductDetails" class="input-xlarge">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Hình ảnh sản phẩm</label>
                                    <div>
                                        <input type="file" id="username" name="fileUp" class="input-xlarge">
                                    </div>
                                </div>
                                <div>
                                    <p>
                                        <font color="red">${sessionScope.AddPro}</font>
                                    </p>
                                </div>
                                <div class="control-group">
                                    <input tabindex="3" class="btn btn-inverse large" type="submit" value="Add" name="action">

                                    <input tabindex="3" class="btn btn-inverse large" type="submit" value="Update" name="action">
                                    <input tabindex="3" class="btn btn-inverse large" type="submit" value="Delete" name="action">


                                    <hr>

                                </div>
                            </fieldset>
                        </form>				
                    </div>

            </section>			
            <section id="footer-bar">
                <div class="row">
                    <div class="span3">
                        <h4>Chuyển hướng</h4>
                        <ul class="nav">
                            <li><a href="indexKH.jsp">Home</a></li>  
                            <li><a href="#">Giới thiệu</a></li>
                            <li><a href="#">Liên lạc</a></li>
                            <li><a href="cart.jsp">Giỏ hàng</a></li>
                            <li><a href="login.jsp">Đăng nhập</a></li>

                        </ul>					
                    </div>
                    <div class="span4">
                        <h4>Sản phẩm</h4>
                        <ul class="nav">
                            <li><a href="#">Bán chạy nhất</a></li>  
                            <li><a href="#">Sản phẩm mới</a></li>
                            <li><a href="#">Hàng hiệu</a></li>

                        </ul>
                    </div>
                    <div class="span5">
                        <p class="logo"><img src="themes/images/logo.png" class="site_logo" alt=""></p>
                        <p>Shopper shop cam kết cung cấp những sản phẩm chất lượng, uy tín của nhiều hãng thời trang hàng đầu trên thế giới</p>
                        <br/>

                    </div>					
                </div>	
            </section>
        </div>
        <script src="themes/js/common.js"></script>
        <script>
            $(document).ready(function () {
                $('#checkout').click(function (e) {
                    document.location.href = "checkout.html";
                })
            });
        </script>		
    </body>
</html>