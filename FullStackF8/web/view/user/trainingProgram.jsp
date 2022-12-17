<%-- 
    Document   : traningProgarm
    Created on : Dec 5, 2022, 10:31:28 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lộ trình học cho người mới tại F8</title>
        <link rel="icon" type="image/x-icon" href="https://yp.vn/wp-content/uploads/2022/04/f8-icon.7ad2b161d5e80c87e516.png">
    </head>
    <body>
        <jsp:include page="../../common/header.jsp"/>

        <h1 style="margin-top: 60px; margin-left: 100px">Lộ Trình Học</h1>
        <p style="margin-top: 40px; margin-left: 100px">Để bắt đầu một cách thuận lợi, bạn nên tập trung vào một lộ trình học. Ví dụ: Để đi làm với vị trí “Lập trình viên Front-end” bạn nên tập trung vào lộ trình “Front-end”.</p>
        <div class="container" style="margin-top: 60px">
            <div class="container">
                <div class="row">
                    <c:forEach items="${listP}" var="o">
                        <div class="card" style="width: 500px; margin-left: 30px">
                            <div class="row no-gutters">
                                <div class="col-sm-7">
                                    <div class="card-body">
                                        <h5 class="card-title">${o.title}</h5>
                                        <p class="card-text">${o.des}</p>
                                        <a href="TrainingProgramDetailController" class="btn btn-primary" style="background-color: orangered; border-radius: 10px 10px">Xem chi tiết</a>
                                    </div>
                                </div>
                                <div class="col-sm-5">
                                    <img class="card-img" src="${o.image}" style="height: 150px; width: 150px; border-radius: 50%; border: 4px solid orangered; margin-top: 18px" alt="Suresh Dasari Card">
                                </div>                               
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 50px">
            <div class="col-sm-7">
                <h1 style="margin-top: 200px; margin-left: 100px">Tham gia cộng đồng học viên F8 trên Facebook</h1>
                <p style="margin-top: 60px; margin-left: 100px">Hàng nghìn người khác đang học lộ trình giống như bạn. Hãy tham gia hỏi đáp, chia sẻ và hỗ trợ nhau trong quá trình học nhé.</p>
                <a target="_blank" href="https://www.facebook.com/hailongvu111/" class="btn btn-primary" style="margin-left: 100px; color:  #000; background: #e9ecef; border: 2px solid #000">Tham gia nhóm</a>
            </div>
            <div class="col-sm-5">
                <img style="width: 400px; height: 400px" src="https://fullstack.edu.vn/static/media/fb-group-cards.4bd525b1b8baf7b1e5a2.png">
            </div>  
        </div>
        <div class="row" style="margin-top: 80px">
                <jsp:include page="../../common/footer.jsp"/>
            </div>
    </body>
</html>

