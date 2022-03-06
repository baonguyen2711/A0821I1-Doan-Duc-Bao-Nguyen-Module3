<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/3/2022
  Time: 11:19 PM
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
        }

        .menu {
            width: 100%;
        }

        .welcome {
            width: 70%;
        }

        .content_1 {
            display: flex;
            justify-content: space-around;
        }

        .backgruond {
            width: 100%;
            background-size: cover;
        }

        .backgruond img {
            display: block;
            width: 100%;
            height: 50%;
        }


        .footer {
            clear: both;
            background-color: #20c997;
        }

        .room {
            float: left;
            margin: 20px;
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
        <img src="https://bit.ly/35A5Sf4" width=100%; height=50%; alt="...">
        <div style="position: absolute; bottom: 40%; left: 40%; width: 100%; font-weight: bold; color: #fff;">
            <h2>ROOMS &amp; SUITES
            </h2>
        </div>
    </div>
</div>
<div class="content">
    <div class="content_1">
        <div class="row">
            <div class="col-sm">
                <div class="room">

                    <a href="https://furamavietnam.com/rooms/ocean-suite/">
                        <img src="https://bit.ly/3hBVdD8" alt="..." height=300 width=400>
                        <h5>OCEAN SUITE</h5>
                        <p style="color: black;">Room size: 85.8 m2</p>
                    </a>

                </div>
                <div class="room">
                    <a href="https://furamavietnam.com/rooms/ocean-studio-suite/">
                        <img src="https://bit.ly/374sPaP" alt="..." height=300 width=400>
                        <h5>OCEAN STUDIO SUITE</h5>
                        <p style="color: black;">Room size: 40.1 m2</p>
                    </a>

                </div>
                <div class="room">
                    <a href="https://furamavietnam.com/rooms/ocean-deluxe/">
                        <img src="https://bit.ly/3sJEDI1" alt="..." height=300 width=400>
                        <h5>OCEAN DELUXE</h5>
                        <p style="color: black;">Room size: 43.7 m2</p>
                    </a>

                </div>
            </div>
        </div>
    </div>
    <div class="content_1">
        <div class="row">
            <div class="col-sm">
                <div class="room">

                    <a href="https://furamavietnam.com/rooms/lagoon-superior/">
                        <img src="https://bit.ly/3KlK9WX" alt="..." height=300 width=400>
                        <h5>LAGOON SUPERIOR</h5>
                        <p style="color: black;">Room size: 40.1 m2</p>
                    </a>

                </div>
                <div class="room">
                    <a href="https://furamavietnam.com/rooms/garden-superior/">
                        <img src="https://bit.ly/3tzjFKO" alt="..." height=300 width=400>
                        <h5>GARDEN SUPERIOR</h5>
                        <p style="color: black;">Room size: 40.1 m2</p>
                    </a>

                </div>
                <div class="room">
                    <a href="https://furamavietnam.com/rooms/garden-deluxe/">
                        <img src="https://bit.ly/3IMqTBB" alt="..." height=300 width=400>
                        <h5>GARDEN DELUXE</h5>
                        <p style="color: black;">Room size: 43.7 m2</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="content_1">
        <div class="row">
            <div class="col-sm">
                <div class="room">

                    <a href="https://furamavietnam.com/rooms/presidential-suite/">
                        <img src="https://bit.ly/3sIoSAR" alt="..." height=300 width=400>
                        <h5>PRESIDENTIAL SUITE</h5>
                        <p style="color: black;">Room size: 130 m2</p>
                    </a>

                </div>
                <div class="room">
                    <a href="https://furamavietnam.com/rooms/beach-front-villas/">
                        <img src="https://bit.ly/3HKNrl8" alt="..." height=300 width=400>
                        <h5>BEACH FRONT VILLAS</h5>
                        <p style="color: black;">Room size: 900 m2</p>
                    </a>

                </div>
                <div class="room">
                    <a href="https://furamavietnam.com/rooms/pool-villa/">
                        <img src="https://bit.ly/3KgtVhP" alt="..." height=300 width=400>
                        <h5>POOL VILLAS</h5>
                        <p style="color: black;"> Room size: 320 m2</p>
                    </a>
                </div>
            </div>
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
