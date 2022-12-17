<%-- 
    Document   : VideoLesson
    Created on : Dec 11, 2022, 8:42:26 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">      
        <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'><link rel="stylesheet" href="./style.css">

        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css'>
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700i,800'>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link href="http://localhost:8080/FullStackF8/css/vid.css" rel="stylesheet" type="text/css"/>
        <link href="http://localhost:8080/FullStackF8/css/editpopup.css" rel="stylesheet" type="text/css"/>
        <link href="http://localhost:8080/FullStackF8/css/rightSideBar.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdn.ckeditor.com/4.20.1/standard/ckeditor.js"></script>
    <body>
        <header style="background: #29303B">
            <nav class="navbar navbar-expand-lg" style="background: #29303B">
                <div class="col-6 col-sm-9">
                    <a href="home" style="margin-left: 25px">
                        <img src="https://cdn.iconscout.com/icon/free/png-256/back-arrow-1767523-1502427.png" style="border-radius: 8px 8px" alt="Northern Lights" width="45" height="45">
                    </a>   
                    <a href="home" style="margin-left: 25px">
                        <img src="https://yt3.ggpht.com/wgneNTiW753q5G6XMnjyNLAzReR4TVFJryTKTpIqJefrKMyhABPwfnyNWIoT5NNGstFlva1tgw=s900-c-k-c0x00ffffff-no-rj" style="border-radius: 8px 8px" alt="Northern Lights" width="45" height="45">
                    </a>   
                    <b style="margin-left: 10px; color: #ffffff">
                        Học Lập Trình Để Đi Làm
                    </b>
                </div>
                <div class="col-6 col-sm-2">

                    <div class="text-center">
                        <img src="https://www.clipartmax.com/png/middle/44-447563_notes-icon-stationery-icon-png.png" style="border-radius: 8px 8px" alt="Northern Lights" width="35" height="35">
                        <button type="button" class="btn btn-demo" data-toggle="modal" data-target="#myModal2">
                            Ghi chú 
                        </button>
                    </div>

                    <!-- Modal -->
                    <div class="modal right fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">

                                <div class="modal-header">
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <h4 style="font-weight: bold; color: orangered" class="modal-title" id="myModalLabel2">Note của tôi</h4>
                                        </div>
<!--                                        <div class="col-sm-5">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Sắp xếp theo chương
                                                </button>
                                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                                    <li><a class="dropdown-item" href="#">Trong chương hiện tại</a></li>
                                                    <li><a class="dropdown-item" href="#">Trong tất cả các chương</a></li>
                                                </ul>
                                            </div>
                                        </div>-->
                                        <div class="col-sm-6">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Sắp xếp theo thời gian
                                                </button>
                                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                                    <li><a class="dropdown-item" href="#">Mới nhất</a></li>
                                                    <li><a class="dropdown-item" href="#">Cũ nhất</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-sm-1">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        </div>
                                    </div>
                                </div>

                                <div class="modal-body">
                                    <c:forEach items="${listNote}" var="o">
                                        <div class="card" style="width: 100%;">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-sm-7">
                                                        <h5 style="font-weight: bold" class="card-title">${o.title}</h5>
                                                        <p class="card-text">${o.note}</p>
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <a href="#"  class="card-link btn-edit-note" data-id="${o.lesson_note_id}">Edit</a>
                                                    </div>
                                                    <div class="col-sm-3">
                                                        <a href="#"onclick="showMess(${o.lesson_note_id})"  class="card-link">Delete</a>
                                                    </div>
                                                    <div class="card-footer">
                                                        ${o.time}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>

                            </div><!-- modal-content -->
                        </div><!-- modal-dialog -->
                    </div><!-- modal -->
                </div>
            </nav>
        </header>
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <iframe width="750" height="500" src="${listLe.get(0).link_video}">
                    </iframe>

                    <h2>${listLe.get(0).title}</h2>
                    <div class="row">
                        <div class="col-6 col-sm-10">
                            <p style="font-size: 20px">Tham gia các cộng đồng để cùng học hỏi, chia sẻ và “thám thính” xem F8 sắp có gì mới nhé!</p>
                        </div>                      

                        <div class="col-6 col-sm-2">
                            <form class="note-form" method="post" action="NoteController">
                                <button ONCLICK="popup()" type="button" style="background: #FF4500; color: #ffffff; border-radius: 8px 8px; border: 0px solid #ff3333;font-size: 12px; padding: 10px 16px">Thêm ghi chú</button>
                                <DIV class="popup">
                                    <DIV class="popup-div">
                                        <DIV class="popup-header">
                                            <div class="col-6 col-sm-10">Thêm ghi chú</div>
                                            <div class="col-6 col-sm-2">
                                                <input type="hidden" id="user_id" name="user_id" value="${sessionScope.user.user_id}">
                                                <input type="hidden" id="lesson_id" name="lesson_id" value="${listLe.get(0).lesson_id}">
                                            </div>

                                        </DIV>
                                        <DIV class="popup-main">
                                            <div class="mb-3">
                                                <textarea type="text" id="editor" name="inputNote" style="height: 250px;width:100%" rows="3"></textarea>
                                            </div>
                                        </DIV>
                                        <DIV class="popup-bottom">
                                            <!--<CENTER><BUTTON  ONCLICK="popup()">OK</BUTTON></CENTER>-->

                                            <button ONCLICK="popup()" type="button" style="background: #FF4500; color: #ffffff; border-radius: 8px 8px; border: 0px solid #ff3333;font-size: 12px; padding: 10px 16px">Hủy bỏ</button>
                                            <button ONCLICK="popup()" type="submit" style="background: #FF4500; color: #ffffff; border-radius: 8px 8px; border: 0px solid #ff3333;font-size: 12px; padding: 10px 16px">Tạo ghi chú</button>
                                        </DIV>
                                    </DIV>
                                </DIV>
                            </form>
                        </div>                      
                    </div>


                    <div class="container">
                        <div class="row">
                            <c:forEach items="${listSo}" var="o">
                            <div class="col-sm-1">${o.name}</div>
                            <div class="col-sm-11">
                                <a target="0" href="${o.link}" style="color: orangered">${o.link}</a>
                            </div>
                           </c:forEach>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <h3>Nội dung khóa học</h3>
                    <c:forEach items="${listChap}" var="o">
                        ${o.title}
                    </c:forEach>
                    <c:forEach items="${listLe}" var="o">
                        <div class="row" style="border: 1px solid #29303B">

                            <div class="col-sm-6" >
                                <a class="popup-youtube" 
                                   href="${o.link_video}">
                                    <img class="img-responsive" style="width: 100px; height: 60px; border: 0px solid #98ACB9; border-radius: 15px 15px "
                                         src="https://fullstack.edu.vn/static/media/f8-og-image.245ebc1d5d7a5240254c.png"
                                         alt="builder app video" />
                                </a>

                            </div>
                            <div class="col-sm-6">
                                <b>${o.title}</b>
                            </div>

                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>


        <footer style="background: #98ACB9; margin-bottom: 0px" >
            <nav class="navbar">
                <div class="container">
                    <div class="row row-cols-2 row-cols-lg-3">
                        <div class="col-4 col-lg-2"></div>
                        <div class="col-4 col-lg-5">< Bài trước</div>
                        <div class="col-4 col-lg-5">Bài Sau > </div>
                        <div class="col-4 col-lg-2"></div>
                    </div>
                </div>
            </nav>
        </footer>
        <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js'></script>
        <script src="http://localhost:8080/FullStackF8/js/scrips.js" type="text/javascript"></script>
        <script src="http://localhost:8080/FullStackF8/js/popup.js" type="text/javascript"></script>
        <script src="http://localhost:8080/FullStackF8/js/editpopup.js" type="text/javascript"></script>
        
        <script>
                                                function showMess(lesson_note_id) {
                                                    var option = confirm("Bạn có chắc chắn muốn xóa note không?");
                                                    if (option === true) {
                                                        window.location.href = 'delete?sid=' + lesson_note_id;
                                                    }
                                                }
        </script>
        
        <script 
            type="text/javascript">
                $(document).ready(function () {
                    var edit = CKEDITOR.replace('editor');
                });
        </script>


    </body>
</html>
