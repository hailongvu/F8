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
        <style> .pagination a {
                color: black;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
                transition: background-color .3s;
            }
            .pagination a.active {
                background-color: dodgerblue;
                color: white;
            }
            .pagination a:hover:not(.active) {
                background-color: #f0735a;
            }</style>
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="../../common/header.jsp"/>
        <div class="container" style="margin-bottom: 80px">
            <h1 style="margin-top: 60px">Bài viết nổi bật</h1>
            <p style="margin-top: 40px width:900px;word-wrap:break-word;">Tổng hợp các bài viết chia sẻ về kinh nghiệm tự học lập trình online và các kỹ thuật lập trình web.</p>     
            <div class="row">
                <div class="col-8">
                    <c:forEach items="${listBlogPu}" var="o">
                        <div class="card mb-3 max-width-540" style="margin-top: 20px">
                            <div class="row g-0" >
                                <div class="row"">
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-1">
                                                    <img style="width: 25px;height: 25px; border-radius: 50%" src="${o.userAvatar}">
                                                </div>
                                                <div class="col-md-11">
                                                    <h5 class="card-title">${o.userName}</h5>
                                                </div>
                                            </div>
                                            <p class="card-text">${o.title}</p>
                                            <p class="card-text" style="width: 500px;overflow: hidden;white-space: nowrap; text-overflow: ellipsis;">${o.excerpt}</p>
                                            <div class="row">
                                                <div class="col-md-4">                                           
                                                    <form action="#">
                                                        <button style="padding: 5px 20px;border-radius: 20px;-moz-border-radius: 20px;-webkit-border-radius: 20px; border: none;background: #dbdbdb; color: #000; cursor: pointer;">${o.tag}</button>
                                                    </form>
                                                </div>
                                                <div class="col-md-4">
                                                    <p class="card-text">${o.time}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <img style="width: 230px; height: 180px; padding: 20px; border-radius: 20% " src="${o.image}" class="card-image"
                                             alt="...">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="col-4">
                    <h5 style="margin-left: 40px; color: #757575">CÁC CHỦ ĐỀ ĐƯỢC ĐỀ XUẤT</h5>
                    <div class="row" style="margin-top: 30px">
                        <div class="col-md-6">
                            <form action="#">
                                <button style="padding: 5px 20px;border-radius: 20px;-moz-border-radius: 20px;-webkit-border-radius: 20px; border: none;background: #dbdbdb; color: #000; cursor: pointer;">Front-end/Mobile apps</button>
                            </form>
                        </div>
                        <div class="col-md-6">
                            <form action="#">
                                <button style="padding: 5px 20px;border-radius: 20px;-moz-border-radius: 20px;-webkit-border-radius: 20px; border: none;background: #dbdbdb; color: #000; cursor: pointer;">Back-end/Devops</button>
                            </form>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 20px">
                        <div class="col-md-6">
                            <form action="#">
                                <button style="padding: 5px 20px;border-radius: 20px;-moz-border-radius: 20px;-webkit-border-radius: 20px; border: none;background: #dbdbdb; color: #000; cursor: pointer;">UI/UX/Design</button>
                            </form>
                        </div>
                        <div class="col-md-6">
                            <form action="#">
                                <button style="padding: 5px 20px;border-radius: 20px;-moz-border-radius: 20px;-webkit-border-radius: 20px; border: none;background: #dbdbdb; color: #000; cursor: pointer;">Others</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="pagination">
                <c:forEach begin="1" end="${endP}" var="i">
                    <a href="BlogController?index=${i}">${i}</a>           
                </c:forEach>
            </div>
            <div class="row" style="margin-top: 80px">
                <jsp:include page="../../common/footer.jsp"/>
            </div>
    </body>
</html>
