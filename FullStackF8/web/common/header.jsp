<%-- 
    Document   : header_footer
    Created on : Nov 29, 2022, 1:02:20 PM
    Author     : Longvh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Page Title</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>

        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">      
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">

                <a href="home">
                    <img src="https://yt3.ggpht.com/wgneNTiW753q5G6XMnjyNLAzReR4TVFJryTKTpIqJefrKMyhABPwfnyNWIoT5NNGstFlva1tgw=s900-c-k-c0x00ffffff-no-rj" style="border-radius: 8px 8px" alt="Northern Lights" width="45" height="45">
                </a>   
                <b style="margin-left: 10px">
                    Học Lập Trình Để Đi Làm
                </b>
                <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                    <form class="search">
                        <input class="form-control" type="search" placeholder="Search" aria-label="Search" style="width: 300px">
                    </form>
                    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                        <a href="TraningDetailController">
                            <img src="img/route.png" alt="Northern Lights" width="40" height="40">
                        </a>   
                        <a href="CourseListController">
                            <img src="img/learn.png" alt="Northern Lights" width="40" height="40">
                        </a>  
                        <a href="BlogController">
                            <img src="img/blog.png" alt="Northern Lights" width="40" height="40">
                        </a>  
                        <a target="_blank" href="chooselogin.jsp">
                            <img src="img/addBlog.png" alt="Northern Lights" width="40" height="40">
                        </a>
                        <c:if test="${sessionScope.user != null}">
                            <div class="dropdown" style="margin-left: 50px">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
                                    <img src="${sessionScope.user.avatar}" width="30px" />   ${sessionScope.user.name}                                   
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
                                    <li><button class="dropdown-item" type="button">Trang cá nhân</button></li>
                                    <li><button class="dropdown-item" type="button">Viết Blog</button></li>
                                    <li><button class="dropdown-item" type="button">bài viết của tôi</button></li>
                                    <li><button class="dropdown-item" type="button">Bài viết đã lưu</button></li>
                                    <li><button class="dropdown-item" type="button">Cài đặt</button></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <form action="LogOutController">
                                        <button class="dropdown-item" type="submit">Đăng xuất</button>
                                    </form>
                                </ul>
                            </div>
                        </c:if>

                        <c:if test="${sessionScope.user == null}">
                            <a href="login">
                                <button type="button" style="background: #FF4500; color: #ffffff; border-radius: 8px 8px; border: 0px solid #ff3333;font-size: 12px; padding: 10px 16px">Đăng Nhập</button>                                                       
                            </a>
                            <a href="register">
                                <button type="button" style="background: #FF4500; color: #ffffff; border-radius: 8px 8px; border: 0px solid #ff3333;font-size: 12px; padding: 10px 16px">Đăng Kí</button>  
                            </a>
                        </c:if>

                    </ul>
                </div>
            </nav>
        </header>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>

</html>
