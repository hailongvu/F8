<%-- 
    Document   : UserProfile
    Created on : Dec 3, 2022, 9:55:59 PM
    Author     : PHANH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title> User Profile</title>
        <!-- Bootstrap 5 CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link href="../../css/UserProfile.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <div class="container">
            <!-- left nav bar -->
            <div class="left-nav">
                <div class="logo">
                    <img src="images/logo.png" alt="logo">
                    <!--<img src="../img/f8.jpg" alt=""/>-->
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
                <h1>Thay đổi thông tin cá nhân</h1>
                <form action="/" method="post">
                    <div class="input-group">
                        <div class="left">
                            <div class="inputt">
                                <label for="id">ID</label>
                                <input type="text" name="id" id="id">
                            </div>
                            <div class="inputt">
                                <label for="name">Họ tên</label>
                                <input type="text" name="name" id="name">
                            </div>
                            <div class="inputt">
                                <label for="email">Email</label>
                                <input type="text" name="email" id="email">
                            </div>
                            <div class="inputt">
                                <label for="phone">Điện thoại di động</label>
                                <input type="text" name="phone" id="phone">
                            </div>
                        </div>
                        <div class="right">
                            <div class="inputt">
                                <label for="address">User avatar</label>
                                <div class="avatar"></div>
                                <input type="button" value="Change">
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="inputt">
                            <label for="phone">Địa chỉ</label>
                            <input type="text" name="phone" id="phone">
                        </div>
                        <div class="inputt">
                            <label for="phone">Chức danh</label>
                            <input type="text" name="phone" id="phone">
                        </div>
                        <div class="inputt">
                            <label for="phone">Công ty</label>
                            <input type="text" name="phone" id="phone">
                        </div>
                        <div class="form-item1">
                            <button type="submit">Xác nhận thay đổi</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>