<%-- 
    Document   : login
    Created on : Nov 29, 2022, 9:40:23 PM
    Author     : LongVH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../css/register.css" rel="stylesheet" type="text/css"/>
        <link href="css/register.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="https://yp.vn/wp-content/uploads/2022/04/f8-icon.7ad2b161d5e80c87e516.png">
        <title>F8 - Register</title>
    </head>
    <body>
        <div class="container">
            <div class="login-left">
                <div class="login-header">
                    <div class="anh">
                        <img src="../../img/f8.jpg" alt="" height="50px"" />
                        <img src="https://yt3.ggpht.com/wgneNTiW753q5G6XMnjyNLAzReR4TVFJryTKTpIqJefrKMyhABPwfnyNWIoT5NNGstFlva1tgw=s900-c-k-c0x00ffffff-no-rj" style="border-radius: 8px 8px" alt="Northern Lights" width="50" height="50">
                    </div>
                    <h1>Đăng ký tài khoản F8</h1>
                </div>
                <form class="login-form" method="post" action="register">
                    <div class="login-form-content">
                        <div class="form-item">
                            <p class="text-danger" style="color: red">${errorMessage}</p>
                            <label for="name">Enter your name</label>
                            <input type="text" id="inputName" name="inputName" value="${sessionScope.name}">
                        </div>
                        <div class="form-item">
                            <label for="email">Enter email</label>
                            <input type="email" id="inputEmail" name="inputEmail"value="${sessionScope.EmaiExist}">
                        </div>
                        <div class="form-item">
                            <label for="password">Enter password</label>
                            <input type="password" id="inputPassword" name="inputPassword" value="${sessionScope.pass}">
                        </div>
                        <div class="form-item">
                            <p class="text-danger" style="color: red">${errorRepass}</p>
                            <label for="password">Enter Re-password</label>
                            <input type="password" id="inputRePassword" name="inputRePassword" value="${sessionScope.repass}">
                        </div>
                    </div>
                    <div class="form-item">
                        <button type="submit">Đăng ký</button>
                    </div>
                </form>

                <a href="login">
                    Bạn đã có tài khoản? Đăng nhập.
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
