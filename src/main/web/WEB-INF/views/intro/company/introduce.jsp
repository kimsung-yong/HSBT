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
