<%-- 
    Document   : course
    Created on : Dec 7, 2022, 1:11:11 PM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <link rel="icon" type="image/x-icon" href="https://yp.vn/wp-content/uploads/2022/04/f8-icon.7ad2b161d5e80c87e516.png">
        <title>Danh sách các khóa học lập trình tại F8</title>
    </head>
    <body>
        <jsp:include page="../../common/header.jsp"/>
        <div class="container">
            <div class="container" style="margin-top: 100px">
                <div class="row">
                    <div class="row" style="margin-top: 30px">
                        <h2>List Course Free: </h2>
                        <c:forEach items="${listF}" var="o">
                            <div class="col-sm-3" style="margin-top: 30px">
                                <div class="col-6 col-md-4">
                                    <div class="card" style="width: 18rem;">
                                        <img class="card-img-top" src="${o.image}" style="width: 286px; height: 160px" alt="Card image cap">
                                        <div class="card-body">
                                            <p class="card-text" style="text-align: center">${o.course_Name}</p>
                                            <p class="card-text" style="color: red">${o.price}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="row" style="margin-top: 200px">
                    <h2>List Course Premium: </h2>
                    <c:forEach items="${listC}" var="o">
                        <div class="col-sm-3" style="margin-top: 30px">
                            <div class="col-6 col-md-4">
                                <div class="card" style="width: 18rem;">
                                    <img class="card-img-top" src="${o.image}" style="width: 286px; height: 160px" alt="Card image cap">
                                    <div class="card-body">
                                        <p class="card-text" style="text-align: center">${o.course_Name}</p>
                                        <p class="card-text" style="color: red">${o.price}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <div class="row" style="margin-top: 200px">
                    <h2>List Course Pro: </h2>
                    <c:forEach items="${listPro}" var="o">
                        <div class="col-sm-3" style="margin-top: 30px">
                            <div class="col-6 col-md-4">
                                <div class="card" style="width: 18rem;">
                                    <img class="card-img-top" src="${o.image}" style="width: 286px; height: 160px" alt="Card image cap">
                                    <div class="card-body">
                                        <p class="card-text" style="text-align: center">${o.course_Name}</p>
                                        <p class="card-text" style="color: red">${o.price}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="row" style="margin-top: 50px">
                    <div class="col-sm-7">
                        <h1 style="margin-top: 200px; margin-left: 100px">Bạn đang tìm kiếm lộ trình học cho người mới?</h1>
                        <p style="margin-top: 60px; margin-left: 100px">Các khóa học được thiết kế phù hợp cho người mới, lộ trình học rõ ràng, nội dung dễ hiểu.</p>
                        <a target="_blank" href="TraningDetailController" class="btn btn-primary" style="margin-left: 100px; color:  #000; background: #e9ecef; border: 2px solid #000">Xem lộ trình</a>
                    </div>
                    <div class="col-sm-5">
                        <img style="width: 400px; height: 400px" src="https://fullstack.edu.vn/static/media/fb-group-cards.4bd525b1b8baf7b1e5a2.png">
                    </div>  
                </div>

            </div>
        </div>
        <div style="margin-top: 100px"><jsp:include page="../../common/footer.jsp"/></div>
    </body>
</html>
