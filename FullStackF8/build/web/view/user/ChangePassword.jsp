<%-- 
    Document   : ChangePassword
    Created on : Dec 3, 2022, 9:57:57 PM
    Author     : PHANH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title> Change Password </title>
        <!-- Bootstrap 5 CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link href="../../css/UserProfile.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="../../common/header.jsp"/>
        <div class="container">
            <!-- left nav bar -->
            <div class="left-nav">
                <div class="logo">
                    <img src="images/logo.png" alt="logo">
                </div>
                <div class="nav-links">
                    <ul>
                        <li><a href="UserProfile.jsp">Thông tin cá nhân</a></li>
                        <li><a href="#">Đơn hàng của tôi</a></li>
                        <li><a href="ChangePassword.jsp">Đổi mật khẩu</a></li>
                        <li><a href="login.jsp">Đăng xuất </a></li>
                    </ul>
                </div>
            </div>
            <div class="content">
                <h1>Đổi mật khẩu </h1>
                <form action="ChangePassword.jsp" method="POST">
                    
                    <div class="input-group">
                        <div class="left">
                            <div class="inputt">
                                <label for="email">Email</label>
                                <input id="email" name="email" type="email" placeholder="Nhập email" value="">
                            </div>
                            <div class="inputt">
                                <label for="password">Mật khẩu mới</label>
                                <input id="password" name="password" type="password" placeholder="Nhập mật khẩu mới" value="">
                            </div>
                            <div class="inputt">
                                <label for="rePassword">Xác nhận mật khẩu mới</label>
                                <input id="rePassword" name="rePassword" type="password" placeholder="Xác nhận lại mật khẩu" value="">
                            </div>
                            <div>
                                <p class="${messageType}">${message}</p>
                            </div>
                            <div class="form-item1">

                                <button type="submit">Đổi mật khẩu</button>
                            </div>
                        </div>
                    </div>
                </form>


            </div>
            
    </body>
    <%--<jsp:include page="../../common/footer.jsp"/>--%>
</html>