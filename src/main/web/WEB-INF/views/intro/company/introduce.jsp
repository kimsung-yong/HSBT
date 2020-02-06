<%--
  Created by IntelliJ IDEA.
  User: IT
  Date: 2020-02-06
  Time: 오전 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<style>
    body {
        margin: 0;
        font-family: "Merriweather", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
        font-size: 1rem;
        font-weight: 400;
        line-height: 1.5;
        color: #212529;
        text-align: left;
        background-color: #fff;
    }
    .container {
        width: 100%;
        padding-right: 15px;
        padding-left: 15px;
        margin-right: auto;
        margin-left: auto;
    }
    .navbar {
        position: relative;
        display: flex;
        flex-wrap: wrap;
        align-items: center;
        justify-content: space-between;
        padding: 0.5rem 1rem;
    }
    #mainNav {
        display: block;
        box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
        background-color: #fff;
        transition: background-color 0.2s ease;
    }

    #mainNav .navbar-brand {
        font-family: "Merriweather Sans", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
        font-weight: 700;
        color: #212529;
    }

    #mainNav .navbar-nav .nav-item .nav-link {
        color: #6c757d;
        font-family: "Merriweather Sans", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
        font-weight: 700;
        font-size: 0.9rem;
        padding: 0.75rem 0;
    }

    #mainNav .navbar-nav .nav-item .nav-link:hover, #mainNav .navbar-nav .nav-item .nav-link:active {
        color: #f4623a;
    }

    #mainNav .navbar-nav .nav-item .nav-link.active {
        color: #f4623a !important;
    }



    .col-md-3
    {
        width: 25%;
        height: 400px;
        border: 1px solid gray;
        float: left;
        margin: 0px;
    }
    .container h-100{
        width: 74%;
        height: 400px;
        border: 1px solid gray;
        float: left;
        margin: 0px;
    }



</style>


<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Start Bootstrap</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto my-2 my-lg-0">
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#about">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#services">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#portfolio">Portfolio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>



<!-- Masthead -->
<header class="masthead">

    <%--start사이드바--%>
    <div class="col-md-3">
        <!-- 사이드 바 메뉴-->
        <!-- 패널 타이틀1 -->
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">Panel Title</h3>
            </div>
            <!-- 사이드바 메뉴목록1 -->
            <ul class="list-group">
                <li class="list-group-item"><a href="#">HTML</a></li>
                <li class="list-group-item"><a href="#">CSS</a></li>
                <li class="list-group-item"><a href="#">ECMAScript5</a></li>
            </ul>
        </div>
        <!-- 패널 타이틀2 -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Panel Title</h3>
            </div>
            <!-- 사이드바 메뉴목록2 -->
            <ul class="list-group">
                <li class="list-group-item"><a href="#">jQuery</a></li>
                <li class="list-group-item"><a href="#">BootStrap</a></li>
            </ul>
        </div>
        <!-- 패널 타이틀3 -->
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">Panel Title</h3>
            </div>
            <!-- 사이드바 메뉴목록3 -->
            <ul class="list-group">
                <li class="list-group-item"><a href="#">About</a></li>
                <li class="list-group-item"><a href="#">Help</a></li>
            </ul>
        </div>
    </div>
    <%--end사이드바--%>

    <div class="container h-100">
        <div class="row h-100 align-items-center justify-content-center text-center">
            <div class="col-lg-10 align-self-end">
                <h1 class="text-uppercase text-white font-weight-bold">Your Favorite Source of Free Bootstrap Themes</h1>
                <hr class="divider my-4">
            </div>
            <div class="col-lg-8 align-self-baseline">
                <p class="text-white-75 font-weight-light mb-5">
                    Start Bootstrap can help you build better websites using the Bootstrap framework! Just download a theme and start customizing, no strings attached!
                </p>
                <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Find Out More</a>
            </div>
        </div>
    </div>

</header>


</body>
</html>
