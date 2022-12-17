<%-- 
    Document   : traningProgramDatail
    Created on : Dec 6, 2022, 3:17:09 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <title>Lộ trình học</title>
        <link rel="icon" type="image/x-icon" href="https://yp.vn/wp-content/uploads/2022/04/f8-icon.7ad2b161d5e80c87e516.png">
    </head>
    <body>
        <jsp:include page="../../common/header.jsp"/>
        <div class="container" style="margin-bottom: 80px">
            <h1 style="margin-top: 60px; margin-left: 100px">Lộ trình học Front-end</h1>
            <p style="margin-top: 40px; margin-left: 100px; width:900px;word-wrap:break-word;">Hầu hết các websites hoặc ứng dụng di động đều có 2 phần là Front-end và Back-end. Front-end là phần giao diện người dùng nhìn thấy và có thể tương tác, đó chính là các ứng dụng mobile hay những website bạn đã từng sử dụng. Vì vậy, nhiệm vụ của lập trình viên Front-end là xây dựng các giao diện đẹp, dễ sử dụng và tối ưu trải nghiệm người dùng.</p>     
            <p style="margin-top: 20px; margin-left: 100px;width:900px;word-wrap:break-word;">Tại Việt Nam, lương trung bình cho lập trình viên front-end vào khoảng 16.000.000đ / tháng.</p>
            <p style="margin-top: 20px; margin-left: 100px;width:900px;word-wrap:break-word">Dưới đây là các khóa học F8 đã tạo ra dành cho bất cứ ai theo đuổi sự nghiệp trở thành một lập trình viên Front-end.</p>
            <h1 style="margin-top: 60px; margin-left: 100px">1. Tìm hiểu về ngành IT</h1>
            <p style="margin-top: 40px; margin-left: 100px; width:900px;word-wrap:break-word;">Để theo ngành IT - Phần mềm cần rèn luyện những kỹ năng nào? Bạn đã có sẵn tố chất phù hợp với ngành chưa? Cùng thăm quan các công ty IT và tìm hiểu về văn hóa, tác phong làm việc của ngành này nhé các bạn.</p>
            <div class="row">
                <div style="margin-left: 100px" class="col-sm-7">
                    <div class="card mb-3 max-width-540">
                        <div class="row g-0">
                            <c:forEach items="${listIT}" var="o">
                                <div class="col-md-4">
                                    <img style="width: 230px; height: 180px; padding: 20px; border-radius: 20% " src="${o.image}" class="card-image"
                                         alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">${o.course_Name}</h5>
                                        <p class="card-text" style="color: red">${o.price}</p>
                                        <p class="card-text">${o.des}</p>
                                        <a href="#" class="btn btn-primary" style="background-color: orangered">Xem khóa học</a>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            <h1 style="margin-top: 60px; margin-left: 100px">2. HTML và CSS</h1>
            <p style="margin-top: 40px; margin-left: 100px; width:900px;word-wrap:break-word;">Để theo ngành IT - Phần mềm cần rèn luyện những kỹ năng nào? Bạn đã có sẵn tố chất phù hợp với ngành chưa? Cùng thăm quan các công ty IT và tìm hiểu về văn hóa, tác phong làm việc của ngành này nhé các bạn.</p>
            <div class="row">
                <div style="margin-left: 100px" class="col-sm-7">
                    <c:forEach items="${listHC}" var="o">
                        <div class="card mb-3 max-width-540" style="margin-top: 20px">
                            <div class="row g-0">

                                <div class="col-md-4">
                                    <img style="width: 230px; height: 180px; padding: 20px; border-radius: 20% " src="${o.image}" class="card-image"
                                         alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">${o.course_Name}</h5>
                                        <p class="card-text" style="color: red">${o.price}</p>
                                        <p class="card-text">${o.des}</p>
                                        <a href="#" class="btn btn-primary" style="background-color: orangered">Xem khóa học</a>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </c:forEach>
                </div>
            </div>
            <h1 style="margin-top: 60px; margin-left: 100px">3. Java</h1>
            <p style="margin-top: 40px; margin-left: 100px; width:900px;word-wrap:break-word;">Với HTML, CSS bạn mới chỉ xây dựng được các websites tĩnh, chỉ bao gồm phần giao diện và gần như chưa có xử lý tương tác gì. Để thêm nhiều chức năng phong phú và tăng tính tương tác cho website bạn cần học Javascript.</p>
            <div class="row">
                <div style="margin-left: 100px" class="col-sm-7">
                    <c:forEach items="${listJ}" var="o">
                        <div class="card mb-3 max-width-540" style="margin-top: 20px">
                            <div class="row g-0">

                                <div class="col-md-4">
                                    <img style="width: 230px; height: 180px; padding: 20px; border-radius: 20% " src="${o.image}" class="card-image"
                                         alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">${o.course_Name}</h5>
                                        <p class="card-text" style="color: red">${o.price}</p>
                                        <p class="card-text">${o.des}</p>
                                        <a href="#" class="btn btn-primary" style="background-color: orangered">Xem khóa học</a>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </c:forEach>
                </div>
            </div>
            
            <h1 style="margin-top: 60px; margin-left: 100px">Các khóa học Pro tại F8</h1>
            <p style="margin-top: 40px; margin-left: 100px; width:900px;word-wrap:break-word;">Các khóa học Pro được thiết kế đầy đủ chi tiết, bài bản. Với đa dạng các loại bài học và bài tập thực hành đi kèm, code luôn ở trang web. Cuối khóa học sẽ được thực hành từ 8 - 10 dự án thực chiến với cấp độ từ dễ đến khó.</p>
            
            <div class="row">
                    <c:forEach items="${listPro}" var="o">
                        <div class="col-sm-3" style="margin-left: 100px; margin-top: 20px">
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
        <jsp:include page="../../common/footer.jsp"/>
    </body>
</html>
