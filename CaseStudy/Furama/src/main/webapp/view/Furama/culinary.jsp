<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/3/2022
  Time: 10:32 AM
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

        .room a {
            text-decoration: none;
        }

        .content {
            width: 100%;
            text-align: center;
            vertical-align: center;
            padding: 50px 0 0 0;
            margin: 50px 0 50px 0;
            background-color: lightblue;
        }

        .menu {
            width: 100%;
        }

        .welcome {
            width: 70%;
        }

        .backgruond {
            width: 100%;
            background-color: #ffeeba;
        }

        .backgruond img {
            display: block;
            width: 100%;
            height: 50%;

        }

        .backgruond h5 {
            text-align: center;
            vertical-align: center;

        }

        .culinary {
            text-align: -webkit-left;
            vertical-align: center;
            width: 100%;
        }

        .footer {
            clear: both;
            background-color: #20c997;
        }
        .img {
            width: 50%;
        }
        @media only screen and (max-width: 768px) {
            /* For mobile phones: */
            .img {
                width: 100%;
            }
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
<div class="backgruond">
        <div style="position: relative">
            <img src="https://bit.ly/3sKIpks" width=100%; height=50%; alt="...">
            <div style="position: absolute; bottom: 40%; left: 45%; width: 100%; font-weight: bold; color: #fff;">
                <h2>CULINARY
                </h2>
            </div>
        </div>
    </div>
    <div class="container" style="padding: 60px 0 60px 0;">
        <h5>The resort’s culinary experience features a mixture of the authentic and locally inspired Vietnamese, Asian,
            Italian and other European cuisines plus the best imported steaks.</h5><br>
        <h5>The resort presents guests with varied gastronomic venues – the hip and breezy bar overlooking the beach,
            the
            exclusive Lagoon pool surrounded by a tropical garden, the true Italian flare offered at the Don Cipriani’s,
            the refined Asian touch at Café Indochine or the authentic central Vietnam cuisine at the Danaksara.</h5>
    </div>
</div>
<div class="content">
    <div id="carouselExampleCaptions" class="carousel slide carousel-fade " data-ride="carousel"
         data-interval="3000">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="4"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="5"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                        <div class="culinary d-block">
                            <div>
                                <img  src="https://bit.ly/35KW0it" height=550 class="d-block img"  alt="..."
                                     style="float: right;padding: 50px"></div>
                            <div  style="padding: 200px 100px 200px 100px;">
                                <img class="alignnone wp-image-9937 size-full"
                                     src="https://furamavietnam.com/wp-content/uploads/2020/02/logo-indochine-2-w500-new2.png"
                                     alt="" width="500" height="100"
                                     srcset="https://furamavietnam.com/wp-content/uploads/2020/02/logo-indochine-2-w500-new2.png
                              500w, https://furamavietnam.com/wp-content/uploads/2020/02/logo-indochine-2-w500-new2-300x60.png
                               300w, https://furamavietnam.com/wp-content/uploads/2020/02/logo-indochine-2-w500-new2-370x74.png
                                370w, https://furamavietnam.com/wp-content/uploads/2020/02/logo-indochine-2-w500-new2-145x29.png 145w"
                                     sizes="(max-width: 500px) 100vw, 500px">
                                <h5>This is the Furama’s signature restaurant, an Asian-style brassiere recalling the
                                    nostalgia
                                    of the French colonial period with its rattan furniture, ceiling fans, French
                                    windows and
                                    old photographs and memorabilia on the walls. </h5>
                                <a href="https://furamavietnam.com/index.php/culinary/indochina-cafe/"
                                   class="btn btn-primary "
                                   rel="">
                                    READ MORE </a>
                            </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="culinary">
                    <div >
                    <img src="https://bit.ly/3sIqCu7" height=550 class="d-block img"  alt="..."
                         style="float: right;padding: 50px"></div>
                    <div style="padding: 200px 100px 200px 100px;">
                        <img class="alignnone wp-image-5227 size-full"
                             src="https://furamavietnam.com/wp-content/uploads/2019/04/logo-don-3-w500.png" alt=""
                             width="500" height="100"
                             srcset="https://furamavietnam.com/wp-content/uploads/2019/04/logo-don-3-w500.png 500w,
                             https://furamavietnam.com/wp-content/uploads/2019/04/logo-don-3-w500-300x60.png 300w,
                             https://furamavietnam.com/wp-content/uploads/2019/04/logo-don-3-w500-370x74.png 370w,
                             https://furamavietnam.com/wp-content/uploads/2019/04/logo-don-3-w500-145x29.png 145w"
                             sizes="(max-width: 500px) 100vw, 500px">
                        <h5>The ideal setting for “al fresco” pool-side dining or in air conditioned comfort offers
                            traditional Italian cuisine in a stylish and artistic arrangement. Our experienced chefs
                            choose to use the very best of local and imported ingredients… </h5>
                        <a href="https://furamavietnam.com/culinary/don-ciprianis/" class="btn btn-primary " rel="">
                            READ MORE </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="culinary">
                    <img src="https://bit.ly/3IEAYRb" height=550 class="d-block img" alt="..."
                         style="float: right;padding: 50px">
                    <div class="d-none d-md-block" style="padding: 200px 100px 200px 100px">
                        <img class="alignnone size-full wp-image-1474"
                             src="https://furamavietnam.com/wp-content/uploads/2018/08/logo-the-DANAK-2-w500.png"
                             alt="" width="500" height="100"
                             srcset="https://furamavietnam.com/wp-content/uploads/2018/08/logo-the-DANAK-2-w500.png 500w
                             , https://furamavietnam.com/wp-content/uploads/2018/08/logo-the-DANAK-2-w500-300x60.png 300w
                             , https://furamavietnam.com/wp-content/uploads/2018/08/logo-the-DANAK-2-w500-370x74.png 370w
                             , https://furamavietnam.com/wp-content/uploads/2018/08/logo-the-DANAK-2-w500-145x29.png 145w"
                             sizes="(max-width: 500px) 100vw, 500px">
                        <h5>Located in the heart of the magnificent Furama Villas Danang, this voyage through the unique
                            taste of Authentic Central Vietnam cuisine offers an&nbsp;excellence of traditional
                            Vietnamese food.</h5>
                        <a href="https://furamavietnam.com/culinary/danaksara/" class="btn btn-primary " rel="">
                            READ MORE </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="culinary">
                    <img src="https://bit.ly/35s04oa" height=550 class="d-block img" alt="..."
                         style="float: right;padding: 50px">
                    <div class="d-none d-md-block" style="padding: 170px 100px 200px 100px">
                        <img class="alignnone size-full wp-image-1478"
                             src="https://furamavietnam.com/wp-content/uploads/2018/08/logo-the-HAI-VAN-2-w500.png"
                             alt="" width="500" height="100" style="margin-bottom: 30px"
                             srcset="https://furamavietnam.com/wp-content/uploads/2018/08/logo-the-HAI-VAN-2-w500.png 500w
                             , https://furamavietnam.com/wp-content/uploads/2018/08/logo-the-HAI-VAN-2-w500-300x60.png 300w
                             , https://furamavietnam.com/wp-content/uploads/2018/08/logo-the-HAI-VAN-2-w500-370x74.png 370w
                             , https://furamavietnam.com/wp-content/uploads/2018/08/logo-the-HAI-VAN-2-w500-145x29.png 145w"
                             sizes="(max-width: 500px) 100vw, 500px">
                        <h5>Guests enjoy cocktails and light snacks in a very relaxed colonial setting decorated with
                            cane chairs and carved Vietnamese furniture. Don’t miss out the daily unique Afternoon Tea
                            and Dessert Buffet with the selection of 20 local herbal tea. </h5>
                        <a href="https://furamavietnam.com/culinary/hai-van-lounge/" class="btn btn-primary " rel="">
                            READ MORE </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="culinary">
                    <img src="https://bit.ly/3MpDQni" height=550 class="d-block img" alt="..."
                         style="float: right;padding: 50px">
                    <div class="d-none d-md-block" style="padding: 200px 100px 200px 100px">
                        <img class="alignnone size-full wp-image-1480"
                             src="https://furamavietnam.com/wp-content/uploads/2018/08/logo-the-OCEAN-w500.png"
                             alt="" width="500" height="100"
                             srcset="https://furamavietnam.com/wp-content/uploads/2018/08/logo-the-OCEAN-w500.png 500w,
                              https://furamavietnam.com/wp-content/uploads/2018/08/logo-the-OCEAN-w500-300x60.png 300w,
                               https://furamavietnam.com/wp-content/uploads/2018/08/logo-the-OCEAN-w500-370x74.png 370w,
                                https://furamavietnam.com/wp-content/uploads/2018/08/logo-the-OCEAN-w500-145x29.png 145w"
                             sizes="(max-width: 500px) 100vw, 500px">
                        <h5>Ocean Terrace Bar sets in a beautiful ocean front setting, overlooking the tranquil&nbsp;white
                            sand of Da Nang beach. Just a short walk away from the ocean, this 60-seat casual restaurant
                            provides a peaceful, poolside and ocean view for al fresco dining. </h5>
                        <a href="https://furamavietnam.com/culinary/ocean-terrace-bar/" class="btn btn-primary " rel="">
                            READ MORE </a>
                    </div>
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
                <a href="https://www.instagram.com/furama_resort_danang/?hl=vi" target="_blank" rel="noopener">
                    <img src="https://bit.ly/3slFC0A" alt="" width="40"
                         height="32"></a>
                <a href="https://www.youtube.com/user/furamaresortvietnam/featured" target="_blank" rel="noopener">
                    <img src="https://bit.ly/3vhHB8c" alt="" width="40"
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

