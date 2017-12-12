<%-- 
    Document   : index
    Created on : Jun 6, 2017, 11:59:22 PM
    Author     : PVT
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Home</title>
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
                            <li><a>Sản phẩm</a>				
                                <ul>
                                    <li><a href="add_Product.jsp">Thêm sản phẩm</a></li>									
                                    <li><a href="add_Product.jsp">Sửa thông tin sản phẩm</a></li>
                                    <li><a href="add_Product.jsp">Xóa sản phẩm</a></li>
                                    
                                </ul>
                            </li>															
                            <li><a>Tài khoản</a>
                                <ul>
                                    <li><a href="add_User.jsp">Thêm tài khoản</a></li>									
                                    <li><a href="add_User.jsp">Sửa thông tin tài khoản</a></li>
                                    <li><a href="add_User.jsp">Xóa tài khoản</a></li>
                                    
                                </ul>
                            </li>
                            

                        </ul>
                    </nav>

                </div>
            </section>
            
            <section class="main-content">
                <div class="row">
                    <div class="span12">													
                        <div class="row">
                            <div class="span12">
                                <h4 class="title">
                                    <span class="pull-left"><span class="text"><span class="line"></span></span></span>
                                    <%--<span class="pull-right">
                                        <a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
                                    </span>--%>
                                </h4>
                                <div id="myCarousel" class="myCarousel carousel slide">
                                    <div class="carousel-inner">
                                        <div class="active item">
                                            <ul class="thumbnails">

                                                <%
                                                    Product x = new Product();
                                                    ArrayList<Product> list = x.getProductList();
                                                    for (Product sp : list) {
//                                                        HttpSession sess = request.getSession(true);
//                                                        sess.setAttribute("idSP", sp.getId());
//                                                        sess.setAttribute("tenSP", sp.getName());
//                                                        sess.setAttribute("giaSP", sp.getPrice());
//                                                        sess.setAttribute("anhSP", sp.getImages());
//                                                        sess.setAttribute("motaSP", sp.getDetails());
                                                        out.print("<li class='span3'>");
//                                                        out.print("<form action='Controller' method='post'" );
                                                        out.print("<div class='product-box'>");
                                                        out.print("<span class='sale_tag'></span>");
                                                        
                                                        out.print("<input type='hidden' name='txtIdSP' value='"+sp.getId()+"'>");
                                                        out.print("<input type='hidden' name='txttenSP' value='"+sp.getName()+"'>");
                                                        out.print("<input type='hidden' name='txtGiaSP' value='"+sp.getPrice()+"'>");
                                                        out.print("<input type='hidden' name='txtAnhSP' value='"+sp.getImages()+"'>");
                                                        out.print("<input type='hidden' name='txtMoTaSP' value='"+sp.getDetails()+"'");
                                                        
                                                        
                                                        out.print("<p><a href='products_details.jsp'><img src='images/" + sp.getImages() + "' alt=''/>");
                                                        out.print("</a></p>");

                                                        //out.print("<a href='#' class='title'>"+sp.getId()+"1</a><br/>");
                                                        
                                                        out.print("<a href='products.html' class='category'>" + sp.getName() + "</a>");
                                                        out.print("<p class='price'>" + sp.getPrice() + "</p>");
                                                        //out.print("<input tabindex='3' class='btn btn-inverse large' type='submit' value='Add to cart' name='action'>");
                                                        out.print("<input tabindex='3' class='btn btn-inverse large' type='submit' value='Add to cart' name='action'>");
                                                        out.print("</div>");
                                                        // out.print("</form>");
                                                        out.print("</li>");

                                                    }

                                                %>


                                            </ul>
                                        </div>
                                        
                                    </div>							
                                </div>
                            </div>						
                        </div>
                        <br/>
                        <div class="row">
                            <div class="span12">
                                <h4 class="title">
                                    <span class="pull-left"><span class="text"><span class="line"><strong></strong></span></span></span>
                                    
                                </h4>
                                
                            </div>						
                        </div>
                        <div class="row feature_box">						
                            <div class="span4">
                                <div class="service">
                                    <div class="responsive">	
                                        <img src="themes/images/feature_img_2.png" alt="" />
                                        <h4>THIẾT KẾ <strong>HIỆN ĐẠI</strong></h4>
                                        <p>Cung cấp các mặt hàng thời trang với thiết kế hiện đại.</p>									
                                    </div>
                                </div>
                            </div>
                            <div class="span4">	
                                <div class="service">
                                    <div class="customize">			
                                        <img src="themes/images/feature_img_1.png" alt="" />
                                        <h4>VẬN CHUYỂN <strong>MIỄN PHÍ</strong></h4>
                                        <p>Dịch vụ Ship hàng miễn phí.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="span4">
                                <div class="service">
                                    <div class="support">	
                                        <img src="themes/images/feature_img_3.png" alt="" />
                                        <h4>HỖ TRỢ <strong>24/7</strong></h4>
                                        <p>Đội ngũ nhân viên hỗ trợ luôn thường trực.</p>
                                    </div>
                                </div>
                            </div>	
                        </div>		
                    </div>				
                </div>
            </section>
            <section class="our_client">
                <h4 class="title"><span class="text">Nhà sản xuất</span></h4>
                <div class="row">					
                    <div class="span2">
                        <img alt="" src="themes/images/clients/14.png">
                    </div>
                    <div class="span2">
                        <img alt="" src="themes/images/clients/35.png">
                    </div>
                    <div class="span2">
                        <img alt="" src="themes/images/clients/1.png">
                    </div>
                    <div class="span2">
                        <img alt="" src="themes/images/clients/2.png">
                    </div>
                    <div class="span2">
                        <img alt="" src="themes/images/clients/3.png">
                    </div>
                    <div class="span2">
                        <img alt="" src="themes/images/clients/4.png">
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
        <script src="themes/js/jquery.flexslider-min.js"></script>
        <script type="text/javascript">
            $(function () {
                $(document).ready(function () {
                    $('.flexslider').flexslider({
                        animation: "fade",
                        slideshowSpeed: 4000,
                        animationSpeed: 600,
                        controlNav: false,
                        directionNav: true,
                        controlsContainer: ".flex-container" // the container that holds the flexslider
                    });
                });
            });
        </script>
    </body>
</html>
