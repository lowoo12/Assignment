<%-- 
    Document   : chitietsanpham
    Created on : Jun 9, 2017, 10:53:41 AM
    Author     : PVT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Chi tiết sản phẩm</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->

        <!-- bootstrap -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">      
        <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">		
        <link href="themes/css/bootstrappage.css" rel="stylesheet"/>

        <!-- global styles -->
        <link href="themes/css/main.css" rel="stylesheet"/>
        <link href="themes/css/jquery.fancybox.css" rel="stylesheet"/>

        <!-- scripts -->
        <script src="themes/js/jquery-1.7.2.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>				
        <script src="themes/js/superfish.js"></script>	
        <script src="themes/js/jquery.scrolltotop.js"></script>
        <script src="themes/js/jquery.fancybox.js"></script>
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

                            <li><a href="login.jsp">Đăng nhập</a></li>		
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="wrapper" class="container">
            <section class="navbar main-menu">
                <div class="navbar-inner main-menu">				
                    <a href="index.jsp" class="logo pull-left"><img src="themes/images/logo.png" class="site_logo" alt=""></a>
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
                <img class="pageBanner" src="themes/images/pageBanner.png" alt="New products" >
                <h4><span>Chi tiết sản phẩm</span></h4>
            </section>
            <section class="main-content">				
                <div class="row">						
                    <div class="span9">
                        <div class="row">
                            <div class="span4">
                                <a href="themes/images/ladies/1.jpg" class="thumbnail" data-fancybox-group="group1" title="Description 1"><img alt="" src="themes/images/ladies/1.jpg"></a>												
                                <ul class="thumbnails small">								
                                    <li class="span1">
                                        <a href="themes/images/ladies/2.jpg" class="thumbnail" data-fancybox-group="group1" title="Description 2"><img src="themes/images/ladies/2.jpg" alt=""></a>
                                    </li>								
                                    <li class="span1">
                                        <a href="themes/images/ladies/3.jpg" class="thumbnail" data-fancybox-group="group1" title="Description 3"><img src="themes/images/ladies/3.jpg" alt=""></a>
                                    </li>													
                                    <li class="span1">
                                        <a href="themes/images/ladies/4.jpg" class="thumbnail" data-fancybox-group="group1" title="Description 4"><img src="themes/images/ladies/4.jpg" alt=""></a>
                                    </li>
                                    <li class="span1">
                                        <a href="themes/images/ladies/5.jpg" class="thumbnail" data-fancybox-group="group1" title="Description 5"><img src="themes/images/ladies/5.jpg" alt=""></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="span5">
                                <address>
                                    <strong>Tên sản phẩm:</strong> <h5>${sessionScope.tenSP}</h5><br>
                                    
                                    <strong>Mã sản phẩm:</strong> <span><p>${sessionScope.idSP}</p></span><br>
                                    
                                    
                                </address>									
                                <h4><strong>Giá: ${sessionScope.giaSP}</strong></h4>
                            </div>
                            <div class="span5">
                                <form class="form-inline" action="Controller" method="post">
                                    
                                    <br/>
                                   
                                    <p>&nbsp;</p>
                                    <label>SL:</label>
                                    <input type="text" class="span1" placeholder="1">
                                    <button class="btn btn-inverse" type="submit" name="action" value="Add to cart">Add to cart</button>
                                </form>
                            </div>							
                        </div>
                        <div class="row">
                            <div class="span9">
                                <ul class="nav nav-tabs" id="myTab">
                                    <li class="active"><a href="#home">Mô tả</a>
                                        <p>${sessionScope.motaSP}</p>
                                    </li>
                                   
                                </ul>							 
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home"></div>
                                    <div class="tab-pane" id="profile">
                                        <table class="table table-striped shop_attributes">	
                                            
                                        </table>
                                    </div>
                                </div>							
                            </div>						
                            
                        </div>
                    </div>
                   
                </div>
            </section>			
            <section id="footer-bar">
                <div class="row">
                    <div class="span3">
                        <h4>Chuyển hướng</h4>
                        <ul class="nav">
                            <li><a href="index.jsp">Home</a></li>  
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
            $(function () {
                $('#myTab a:first').tab('show');
                $('#myTab a').click(function (e) {
                    e.preventDefault();
                    $(this).tab('show');
                })
            })
            $(document).ready(function () {
                $('.thumbnail').fancybox({
                    openEffect: 'none',
                    closeEffect: 'none'
                });

                $('#myCarousel-2').carousel({
                    interval: 2500
                });
            });
        </script>
    </body>
</html>
