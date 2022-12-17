<%-- 
    Document   : login
    Created on : Nov 29, 2022, 9:40:23 PM
    Author     : LongVH
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="https://yp.vn/wp-content/uploads/2022/04/f8-icon.7ad2b161d5e80c87e516.png">
        <title>F8 - Login</title>
    </head>
    <body>
        <div class="container">
            <div class="login-left">
                <div class="login-header">
                    <div class="anh">
                    <img src="../../img/f8.jpg" alt="" height="50px"" />
                    <img src="https://yt3.ggpht.com/wgneNTiW753q5G6XMnjyNLAzReR4TVFJryTKTpIqJefrKMyhABPwfnyNWIoT5NNGstFlva1tgw=s900-c-k-c0x00ffffff-no-rj" style="border-radius: 8px 8px" alt="Northern Lights" width="50" height="50">
                    </div>
                    <h1>Đăng nhập vào F8</h1>
                </div>
                <p class="text-danger" style="color: red">${errorMessage}</p>
                <form class="login-form" method="post" action="login">
                    <div class="login-form-content">
                        <div class="form-item">
                            <label for="email">Enter email</label>
                            <input type="email" id="inputEmail" name="inputEmail" value="${sessionScope.inputEmail}">
                        </div>
                        <div class="form-item">
                            <label for="password">Enter password</label>
                            <input type="password" id="inputPassword" name="inputPassword" value="${sessionScope.inputPassword}">
                        </div>
                    </div>
                    <div class="form-item">
                        <button type="submit">Sign In</button>
                    </div>
                </form>

                <a  href="register">
                    Bạn chưa có tài khoản? Đăng kí.
                </a>
                <div class="anh1">
                <p>Việc bạn tiếp tục sử dụng trang web này đồng nghĩa với bạn đồng ý với điều khoản sử dụng của chúng tôi.</p>
                </div>
            </div>
<!--            <div class="login-form-deep">
                
            </div>-->
        </div>
    </body>
</html>