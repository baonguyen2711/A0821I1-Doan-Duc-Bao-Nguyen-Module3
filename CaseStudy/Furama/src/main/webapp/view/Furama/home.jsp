<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 25/2/2022
  Time: 6:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap-4.6.1-dist\css\bootstrap.css">
    <meta name="viewport" content="target-densitydpi=device-dpi">
    <style>
        html, body {
            width: 100%;
            height: 100%;
            margin: 0px;
            padding: 0px;
            overflow-x: hidden;
        }

        .content {
            width: 100%;
            display: flex;
            margin: auto;
        }

        .left {
            width: 30%;
            float: left;
            margin: auto;
            text-align: center;
            vertical-align: center;
            padding: 50px 0 50px 0;
            margin-top: 100px;
        }

        .menu {
            width: 100%;
        }

        .welcome {
            width: 70%;
        }

        .middle {
            width: 40%;
            float: left;
            margin-top: 50px;

            text-align: center;
            vertical-align: center;
            padding: 50px 0 50px 0;

        }

        .right {
            width: 30%;
            float: left;
            text-align: center;
            vertical-align: center;
            margin: auto;
            padding: 50px 0 50px 0;
        }

        .footer {
            clear: both;
            background-color: #20c997;
        }
    </style>
</head>
<body>
<div class="headers">
    <nav class="navbar navbar-light bg-light">
        <a class="navbar-brand" href="#">
            <img src="https://bit.ly/3Inqp4F" alt="" style="padding: 0 0 0 50px">
        </a>
    </nav>
</div>
<div class="menu">

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="/home">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarScroll"
                aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarScroll">

            <ul class="navbar-nav mr-auto my-2 my-lg-0 navbar-nav-scroll" style="max-height: 100px;">
                <li class="nav-item">
                    <a class="nav-link" href="/home?action=showStaff">Staff</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/home?action=showCustomer">Customer</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
                       data-toggle="dropdown" aria-expanded="false">
                        Service
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="/home?action=viewRoom">Room & Suite</a>
                        <a class="dropdown-item" href="/home?action=viewCulinary">Culinary</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
            </ul>
            <div class="welcome">
                <h1 style="color: yellow">
                    <marquee behavior="alternate">Welcome to Furama Resort Da Nang</marquee>
                </h1>
            </div>
        </div>
    </nav>
</div>
<div class="slideshow">
    <div id="carouselExampleCaptions" class="carousel slide carousel-fade border " data-ride="carousel"
         data-interval="3000">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://bit.ly/3hB0H0T" height=600 class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block" style="text-align: left;bottom: 50%">
                    <h2 style="color: #fff; line-height: 30px;font-size: 25px;"><strong>A CULINARY
                        RESORT</strong><br>
                        <strong>ON ONE OF THE SIX MOST LUXURIOUS</strong><br>
                        <strong>BEACHES IN THE WORLD</strong></h2>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://bit.ly/3KjG8Tb" height=600 class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block" style="text-align: left;bottom: 50%">
                    <h2 style="color: #fff; line-height: 30px;font-size: 25px;"><strong>A CULINARY
                        RESORT</strong><br>
                        <strong>ON ONE OF THE SIX MOST LUXURIOUS</strong><br>
                        <strong>BEACHES IN THE WORLD</strong></h2>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://bit.ly/3IGGd2F" height=600 class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block" style="text-align: left;bottom: 50%">
                    <h2 style="color: #fff; line-height: 30px;font-size: 25px;"><strong>A CULINARY
                        RESORT</strong><br>
                        <strong>ON ONE OF THE SIX MOST LUXURIOUS</strong><br>
                        <strong>BEACHES IN THE WORLD</strong></h2>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-target="#carouselExampleCaptions" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-target="#carouselExampleCaptions" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </button>
    </div>
</div>
<div class="content navbar-expand-lg" style="display: flex;justify-content: space-around">
    <div class="row">
        <div class="col-sm">
            <div class="left">
                <h2 style="font-size: 35px;color: #cbbe73;line-height: 36px;font-family:Playfair Display;font-weight:700;font-style:normal"
                    class="vc_custom_heading">THIS WORLD CLASS RESORT, FURAMA DANANG, REPUTABLE FOR BEING A CULINARY
                    RESORT IN
                    VIETNAM</h2>
            </div>
            <div class="middle">
                <iframe width="460" height="315"
                        src="https://www.youtube.com/embed/IjlT_4mvd-c?autoplay=1&mute=1&loop=1"
                        title="YouTube video player"
                        frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
            </div>
            <div class="right"><p style="font-size: 20px">Overlooking&nbsp;the long stretch of wide white sand on Danang
                Beach,&nbsp;Furama Resort Danang&nbsp;is a gateway to three World Heritage Sites of Hoi An (20 minutes),
                My Son
                (90 minutes) and Hue (2 hours). The 198 rooms and suites plus 70 two to four bedroom pool villas feature
                tasteful décor, designed with traditional Vietnamese style and a touch of French colonial architecture
                and
                guarantee the Vietnam’s the most prestigious resort -counting royalty, presidents, movie stars and
                international
                business leaders among its celebrity guests.</p></div>
        </div>
    </div>
</div>
<div class="footer">

    <footer class=" text-center text-white">

        <div class="container p-4 pb-0">
            <div style="float: left">
                <p style="font-size: 15px;text-align: left">103 - 105 Vo Nguyen
                    Giap Street,
                    Khue My Ward, Ngu Hanh Son District, Danang City, Vietnam <br> Tel.: 84-236-3847 333/888 * Fax:
                    84-236-3847 666</p>
            </div>
            <div style="float: right">
                <a href="https://www.facebook.com/furamaresort/" target="_blank" rel="noopener">
                    <img src="https://bit.ly/3hkP7H6"
                         alt="" width="32"
                         height="32"></a>
                <a href="https://www.instagram.com/furama_resort_danang/?hl=vi" target="_blank" rel="noopener"><img
                        src="https://bit.ly/3slFC0A" alt="" width="40"
                        height="32"></a>
                <a href="https://www.youtube.com/user/furamaresortvietnam/featured" target="_blank" rel="noopener"><img
                        src="https://bit.ly/3vhHB8c" alt="" width="40"
                        height="32"></a>
            </div>
        </div>
        <div class="text-center p-3 text-white" style="background-color: rgba(0, 0, 0, 0.2);clear: both">
            COVID 19 UPDATE: The safety and well-being are our utmost priority
            <a class="text-black" href="https://furamavietnam.com/covid-19-update/">Learn more</a>
        </div>
    </footer>
</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
        crossorigin="anonymous"></script>
</body>
</html>
