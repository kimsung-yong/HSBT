<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop Homepage - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <%--    <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">--%>
    <link href="${pageContext.request.contextPath}/resourcesKIM/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <%--    <link href="resources/css/shop-homepage.css" rel="stylesheet">--%>
    <link href="${pageContext.request.contextPath}/resourcesKIM/css/shop-homepage.css" rel="stylesheet" type="text/css">

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="/">KNLS</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/#services">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/#portfolio">Portfolio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/#contact">Contact</a>
                </li>
                <li class="nav-item">
                    <c:if test="${empty vo}">
                        <a class="nav-link js-scroll-trigger" href="/member/login">Login</a>
                    </c:if>
                </li>
                <li class="nav-item">
                    <c:if test="${empty vo}">
                        <a class="nav-link js-scroll-trigger" href="/member/join">MemberShip</a>
                    </c:if>
                </li>
                <li class="nav-item">
                    <c:if test="${!empty vo}">
                        <a class="nav-link js-scroll-trigger" href="/member/logout">Logout</a>
                    </c:if>
                </li>
                <li class="nav-item">
                    <c:if test="${!empty vo}">
                        <a class="nav-link js-scroll-trigger" href="/member/memberInfo">${vo.name}님 환영합니다</a>
                    </c:if>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Content -->
<div class="container">

    <div class="row">

        <div class="col-lg-3">

            <h1 class="my-4">회사 소개</h1>
            <div class="list-group">
                <a href="/intro/introduce" class="list-group-item">회사 소개</a>
                <a href="/intro/history" class="list-group-item">회사 연혁</a>
                <a href="/intro/map" class="list-group-item">오시는 길</a>
            </div>

        </div>
        <!-- /.col-lg-3 11-->

        <div class="col-lg-9">

            <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <img class="d-block img-fluid" src="/resourcesKIM/img/intro/history1.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid" src="/resourcesKIM/img/intro/history2.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid" src="/resourcesKIM/img/intro/history3.jpg" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <div class="row">

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <%--<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>--%>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a style="font-weight: bold">2015 -</a>
                            </h4>
                            <hr style="border: solid 2px;">
                            <p class="card-text" style="font-size: 13px">03월 신문명디자인공모전 개최</p>
                            <p class="card-text" style="font-size: 13px">08월 KNLS대전둔산점 개장 (1호점)</p>
                        </div>

                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <%--<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>--%>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a style="font-weight: bold">2016 -</a>
                            </h4>
                            <hr style="border: solid 2px;">
                            <p class="card-text" style="font-size: 13px">03월 KNLS 대전 서구점 개장 (3호점)</p>
                            <p class="card-text" style="font-size: 13px">04월 대전KNLS 오픈</p>
                            <p class="card-text" style="font-size: 13px">10월 KNLS 대전 월평점 오픈</p>
                        </div>

                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <%--<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>--%>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a style="font-weight: bold">2017 -</a>
                                </h4>
                                <hr style="border: solid 2px;">
                                <p class="card-text" style="font-size: 13px">03월 KNLS 대전 대덕점 개장 (4호점)</p>
                                <p class="card-text" style="font-size: 13px">04월 통합KNLS 오픈</p>
                                <p class="card-text" style="font-size: 13px">11월 KNLS 대전 대덕점 오픈</p>
                            </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <%--<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>--%>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a style="font-weight: bold">2018 -</a>
                                </h4>
                                <hr style="border: solid 2px;">
                                <p class="card-text" style="font-size: 13px">03월 KNLS 강원 원주점 개장 (5호점)</p>
                                <p class="card-text" style="font-size: 13px">04월 통합KNLS 오픈</p>
                                <p class="card-text" style="font-size: 13px">09월 KNLS 하남 스타필드점 오픈</p>
                            </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <%--<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>--%>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a style="font-weight: bold">2019 -</a>
                                </h4>
                                <hr style="border: solid 2px;">
                                <p class="card-text" style="font-size: 13px">03월 KNLS 대전 용문점 개장 (6호점)</p>
                                <p class="card-text" style="font-size: 13px">04월 통합KNLS 오픈</p>
                                <p class="card-text" style="font-size: 13px">09월 KNLS 대전 용문점 오픈</p>
                            </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <%--<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>--%>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a style="font-weight: bold">2020 -</a>
                                </h4>
                                <hr style="border: solid 2px;">
                                <p class="card-text" style="font-size: 13px">03월 KNLS 강원 강름점 개장 (7호점)</p>
                                <p class="card-text" style="font-size: 13px">04월 통합KNLS 오픈</p>
                                <p class="card-text" style="font-size: 13px">09월 KNLS 강원 강름점 오픈</p>
                            </div>
                    </div>
                </div>

            </div>
            <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

<!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<%--<script src="resources/vendor/jquery/jquery.min.js"></script>--%>
<script src="${pageContext.request.contextPath}/resourcesKIM/vendor/jquery/jquery.min.js"></script>
<%--<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>--%>
<script src="${pageContext.request.contextPath}/resourcesKIM/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
