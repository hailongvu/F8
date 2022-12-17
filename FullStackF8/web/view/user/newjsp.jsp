<%-- 
    Document   : newjsp
    Created on : Dec 8, 2022, 5:24:12 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Carousel</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <style>
            /* Custom style to prevent carousel from being distorted 
               if for some reason image doesn't load */
            .carousel-item{
                min-height: 280px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://fullstack.edu.vn/static/media/f8-og-image.245ebc1d5d7a5240254c.png" class="d-block w-100" height="300px alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="https://cdn.tgdd.vn/Files/2020/02/28/1239138/fb_f8_conference_850x450-800-resize.jpg" class="d-block w-100" height="300px alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.viblo.asia/0d1a4128-43b8-4ec4-8884-fde98f3972c9.png" class="d-block w-100" height="300px" alt="...">
                    </div>
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
        </div>
    </body>
</html>                            
