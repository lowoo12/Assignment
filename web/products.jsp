<%-- 
    Document   : sanpham
    Created on : Jun 9, 2017, 10:53:01 AM
    Author     : PVT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Sản phẩm</title>
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
                <h4><span>Sản phẩm mới</span></h4>
            </section>
            <section class="main-content">

                <div class="row">						
                    <div class="span9">								
                        <ul class="thumbnails listing-products">
                            <li class="span3">
                                <div class="product-box">
                                    <span class="sale_tag"></span>												
                                    <a href="product_detail.html"><img alt="" src="themes/images/ladies/9.jpg"></a><br/>
                                    <a href="product_detail.html" class="title">1</a><br/>
                                    <a href="#" class="category">Phasellus</a>
                                    <p class="price">$341</p>
                                </div>
                            </li>       
                            <li class="span3">
                                <div class="product-box">												
                                    <a href="product_detail.html"><img alt="" src="themes/images/ladies/8.jpg"></a><br/>
                                    <a href="product_detail.html" class="title">2</a><br/>
                                    <a href="#" class="category">Erat gravida</a>
                                    <p class="price">$28</p>
                                </div>
                            </li>
                            <li class="span3">
                                <div class="product-box">
                                    <span class="sale_tag"></span>												
                                    <a href="product_detail.html"><img alt="" src="themes/images/ladies/7.jpg"></a><br/>
                                    <a href="product_detail.html" class="title">Wuam ultrices rutrum</a><br/>
                                    <a href="#" class="category">Suspendisse aliquet</a>
                                    <p class="price">$341</p>
                                </div>
                            </li>
                            <li class="span3">
                                <div class="product-box">												
                                    <span class="sale_tag"></span>
                                    <a href="product_detail.html"><img alt="" src="themes/images/ladies/6.jpg"></a><br/>
                                    <a href="product_detail.html" class="title">3</a><br/>
                                    <a href="#" class="category">Nam imperdiet</a>
                                    <p class="price">$49</p>
                                </div>
                            </li>
                            <li class="span3">
                                <div class="product-box">                                        												
                                    <a href="product_detail.html"><img alt="" src="themes/images/ladies/1.jpg"></a><br/>
                                    <a href="product_detail.html" class="title">4</a><br/>
                                    <a href="#" class="category">Congue diam congue</a>
                                    <p class="price">$35</p>
                                </div>
                            </li>       
                            <li class="span3">
                                <div class="product-box">												
                                    <a href="product_detail.html"><img alt="" src="themes/images/ladies/2.jpg"></a><br/>
                                    <a href="product_detail.html" class="title">5</a><br/>
                                    <a href="#" class="category">Gravida placerat</a>
                                    <p class="price">$61</p>
                                </div>
                            </li>
                            <li class="span3">
                                <div class="product-box">												
                                    <a href="product_detail.html"><img alt="" src="themes/images/ladies/3.jpg"></a><br/>
                                    <a href="product_detail.html" class="title">6</a><br/>
                                    <a href="#" class="category">Orci</a>
                                    <p class="price">$233</p>
                                </div>
                            </li>
                            <li class="span3">
                                <div class="product-box">												
                                    <a href="product_detail.html"><img alt="" src="themes/images/ladies/4.jpg"></a><br/>
                                    <a href="product_detail.html" class="title">7</a><br/>
                                    <a href="#" class="category">Urna</a>
                                    <p class="price">$134</p>
                                </div>
                            </li>
                            <li class="span3">
                                <div class="product-box">												
                                    <a href="product_detail.html"><img alt="" src="themes/images/ladies/5.jpg"></a><br/>
                                    <a href="product_detail.html" class="title">8</a><br/>
                                    <a href="#" class="category">Suspendisse</a>
                                    <p class="price">$261</p>
                                </div>
                            </li>
                        </ul>								
                        <hr>
                        <div class="pagination pagination-small pagination-centered">
                            <ul>
                                <li><a href="#">Prev</a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">Next</a></li>
                            </ul>
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
    </body>
</html>
