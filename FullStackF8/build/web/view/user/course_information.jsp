<%-- 
    Document   : newjsp1
    Created on : Dec 11, 2022, 2:50:47 AM
    Author     : ADMIN
--%>

<%@page import="entity.Chapter"%>
<%@page import="entity.Lesson"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.LearnDao"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css'>
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700i,800'>
        <link href="http://localhost:8080/FullStackF8/css/vid.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="../../common/header.jsp"/>  


        <div class="container" style="margin-top: 50px">
            <div class="row">
                <div class="col-6 col-sm-8">
                    <h1 style="font-size: 35px;">${detail.get(0).course_name}</h1>
                    <p style="font-size: 15px;">${detail.get(0).des}</p>
                    <h3 style="margin-top: 30px; font-size: 27px;">Bạn sẽ học được gì?</h3>
                    <c:forEach items="${detail}" var="de">
                        <div class="row">
                            <img style="width: 25px; height: 25px" src="http://localhost:8080/FullStackF8/img/tick.png">
                            <div style="font-size: 15px;" class="col-6">${de.target}</div>
                        </div>
                    </c:forEach>
                    <h3 style="margin-top: 30px; font-size: 27px;">Nội dung khóa học</h3>
                    <div class="row">
                        <div class="col-sm-4">
                            <ul class="list-group">
                                <li class="list-group-item active" aria-current="true" style="font-size: 20px">Chapter</li>
                                    <c:forEach items="${listCo}" var="o">
                                    <li class="list-group-item" style="font-size: 16px">${o.content}</li>
                                    </c:forEach>
                            </ul>
                        </div>
                        <div class="col-sm-8">
                            <ul class="list-group">
                                <li class="list-group-item active" aria-current="true" style="font-size: 20px">Lesson</li>
                                    <c:forEach items="${listCo}" var="o">
                                    <li class="list-group-item" style="font-size: 16px">${o.title}</li>
                                    </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <h3 style="margin-top: 30px; font-size: 27px;">Yêu cầu</h3>
                    <c:forEach items="${detail}" var="de">
                        <div class="row">
                            
                            <div style="font-size: 15px;" class="col-6">${de.request}</div>
                        </div>
                    </c:forEach>
                </div>


                <div class="col-6 col-sm-4"> 
                    <a class="popup-youtube" 
                       href="https://drive.google.com/file/d/1lLjgF6e4qcKzPSwMQgeE-PZG9IRfOmNo/preview">
                        <img class="img-responsive" style="width: 400px; height: 280px; border: 0px solid #98ACB9; border-radius: 15px 15px "
                             src="${detail.get(0).image}"
                             alt="builder app video" />

                    </a>
                    <p style="font-size: 30px; color: orangered; text-align: center; margin-top: 20px">Miễn Phí</p>
                    <a href="VideoLessonController?chapter_id=${listChap.get(0).chapter_id}" class="btn btn-primary" style="display: flex;min-width: 180px;font-size: 18px; padding: 10px 16px; justify-content: center; color:  #FFFFFF; background: #F05123; border: 1px solid #000; border-radius: 20px 20px">Đăng kí học</a>

                </div>

            </div>
        </div>

        <div style="margin-top: 100px"><jsp:include page="../../common/footer.jsp"/></div>
        <!-- partial -->
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js'></script>
        <script src="http://localhost:8080/FullStackF8/js/scrips.js" type="text/javascript"></script>
    </body>
</html>
