<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Giỏ hàng</title>
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
                <script src="themes/js/respond.min.js"></script>
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
                            <li><a href="#">Tài khoản</a></li>
                            <li><a href="cart.jsp">Giỏ hàng</a></li>
                            <li><a href="#">Checkout</a></li>					
                            <li><a href="login.jsp">Đăng nhập</a></li>			
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="wrapper" class="container">
            <section class="navbar main-menu">
                <div class="navbar-inner main-menu">				
                    <a href="indexKH.jsp" class="logo pull-left"><img src="themes/images/logo.png" class="site_logo" alt=""></a>
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
                <h4><span>Giỏ hàng</span></h4>
            </section>
            <%--
            <section class="main-content">				
                <div class="row">
<div class="span9">	--%>				
            <h4 class="title"><span class="text"><strong>Giỏ</strong> hàng</span></h4>
            <c:set var="shop" value="${sessionScope.SHOP}"/>
            <c:if test="${not empty shop}">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <td>STT</td>
                            <td>Xóa</td>
                            <td>Ảnh</td>
                            <td>Mã sản phẩm</td>
                            <td>Tên sản phẩm</td>
                            <td>Số Lượng</td>
                            <td>Giá</td>
                            <td>Tổng</td>
                        </tr>
                    </thead>
                    <tbody>
                    <form action="">
                        <c:set var="count" value="0"/>
                        <c:forEach var="rows" items="${shop}">
                            <c:set var="count" value="${count + 1}"/>
                            <tr>
                                <td>${count}</td>

                                <td><input type="checkbox" name="rmv"
                                           value="${rows.value.sanpham.id}"/></td>

                                <td><img src="images/${rows.value.sanpham.images}"</td>

                                <td>${rows.value.sanpham.id}</td>

                                <td>${rows.value.sanpham.name}</td>

                                <td><input type="text" value="${rows.value.quantity}" name="quantity"></td>

                                <td>${rows.value.sanpham.price}</td>
                                
                                <td>${rows.value.sanpham.price * rows.value.quantity}00</td>
                                
                                
                            </tr>
                        </c:forEach>

                    </form>
                    </tbody>
                </table>
            </c:if>


            <form action="CartController" method="post">
                <p class="buttons center">				
                    <input class="btn" type="submit" value="Update" name="action"></input>
                    <input class="btn" type="submit" value="Delete" name="action"></input>
                    <input class="btn" type="submit" value="Continue" name="action"></button>
                    <input class="btn btn-inverse" type="submit" id="checkout" value="Checkout" name="action"></input>
                </p>
            </form>

            <%-- </div>
        
    </div>
</section>	--%>		
            <section id="footer-bar">
                <div class="row">
                    <div class="span3">
                        <h4>Navigation</h4>
                        <ul class="nav">
                            <li><a href="index.jsp">Home</a></li>  
                            <li><a href="#">Giới thiệu</a></li>
                            <li><a href="#">Liên lạc</a></li>
                            <li><a href="cart.jsp">Giỏ hàng</a></li>
                            <li><a href="login.jsp">Đăng nhập</a></li>							
                        </ul>					
                    </div>
                    <div class="span4">
                        <h4>My Account</h4>
                        <ul class="nav">
                             <li><a href="#">Bán chạy nhất</a></li>  
                            <li><a href="#">Sản phẩm mới</a></li>
                            <li><a href="#">Hàng hiệu</a></li>
                        </ul>
                    </div>
                    				
                </div>	
            </section>
            <section id="copyright">
                
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