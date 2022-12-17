<%-- 
    Document   : home
    Created on : Nov 29, 2022, 3:29:39 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>F8 - Học lập trình để đi làm</title>
        <link rel="icon" type="image/x-icon" href="https://yp.vn/wp-content/uploads/2022/04/f8-icon.7ad2b161d5e80c87e516.png">
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
        <script src='main.js'></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" type="image/png" href="/favicon.png"/>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">      
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <jsp:include page="../../common/header.jsp"/>      
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="padding-left: 40px; padding-top: 50px; padding-right: 40px">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <c:forEach items="${listSli}" var="o">
                    <div class="carousel-item active">
                        <img src="${o.slider}" class="d-block w-100" style="height: 300px; border-radius: 20px 20px"  alt="...">
                    </div></c:forEach>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        <div class="container">
            
            <div class="container" style="margin-top: 100px">
                
                <div class="row" style="margin-top: 200px">
                    <h2>List Course Free: </h2>
                    <c:forEach items="${listF}" var="o">
                        <div class="col-sm-3" style="margin-top: 30px">
                            <div class="col-6 col-md-4">
                                <div class="card" style="width: 18rem;">
                                    <a href="CourseInfomationController?course_Id=${o.course_Id}"> 
                                    <img class="card-img-top" src="${o.image}" style="width: 286px; height: 160px" alt="Card image cap">
                                    </a>
                                    <div class="card-body">
                                        <p class="card-text" style="text-align: center">${o.course_Name}</p>
                                        <div class="card-footer">
                                            <p class="card-text"><small class="text-muted">${o.price}</small></p>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="row">
                    <h2>List Course Premium: </h2>
                    <c:forEach items="${listC}" var="o">
                        <div class="col-sm-3" style="margin-top: 30px">
                            <div class="col-6 col-md-4">
                                <div class="card" style="width: 18rem;">
                                    <img class="card-img-top" src="${o.image}" style="width: 286px; height: 160px" alt="Card image cap">
                                    <div class="card-body">
                                        <p class="card-text" style="text-align: center">${o.course_Name}</p>
                                        <div class="card-footer">
                                            <p class="card-text"><small class="text-muted">${o.price}</small></p>
                                        </div>                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="row" style="margin-top: 200px">
                    <h2>List Blog: </h2>
                    <c:forEach items="${listBlog}" var="o">
                        <div class="col-sm-3" style="margin-top: 30px">
                            <div class="col-6 col-md-4">
                                <div class="card" style="width: 18rem;">
                                    <img class="card-img-top" src="${o.image}" style="width: 286px; height: 160px" alt="Card image cap">
                                    <div class="card-body">
                                        <p class="card-text" style="text-align: center">${o.title}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div style="margin-top: 100px"><jsp:include page="../../common/footer.jsp"/></div>

    </body>
</html>