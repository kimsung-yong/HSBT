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

                <%--슬라이드--%>
                    <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">

                    </div>

                </div>


            </div>

            <div class="row">
                <div>
                    <hr>
                    <div>
                        <p style="font-size: 20px; font-weight: bolder;font-style: oblique">KNLS의 설계는 가구가 아니라</p>
                        <p style="font-size: 20px; font-weight: bolder;font-style: oblique">공간을 제안합니다</p>
                        <p style="font-size: 13px;">KNLS는 가구,조명패브릭,생활용품에 있는 모든 인테리어 아이템을 침실,거실,</p>
                        <p style="font-size: 13px;">자녀방,부엌,서재,욕실 등 주택의 모든 공간별로 코디네이션한 패키지 설계를 제공합니다.</p>
                        <p style="font-size: 13px;">세계적 수준의 디자인 역략과 품질을 바탕으로 아름답고 개성있는 주거 공간을 제안하고 있습니다.</p>
                        <br/><br/>
                        <img class="d-block img-fluid" src="${pageContext.request.contextPath}\resourcesKIM\img\intro\introduce1.jpg" alt="">
                        <hr>
                        <br/><br/>
                        <p style="font-size: 20px; font-weight: bolder;font-style: oblique">동북아시아대를 이끌어갈</p>
                        <p style="font-size: 20px; font-weight: bolder;font-style: oblique">홈인테리어 유통 전문 기업</p>
                        <p style="font-size: 13px;">1970년 부엌가구에서 시작한 한샘은 1997년에 인테리어 가구를 공급하기 시작하였으며 욕실, 창호, 마루 등 </p>
                        <p style="font-size: 13px;">건재아이템까지 확대하고 있습니다. 주거공간과 관련된 모든 아이템을 대형직매장, 건설사 특판, 부엌과 인테리어</p>
                        <p style="font-size: 13px;">전문 매장 뿐만 아니라 온라인 쇼핑몰, 인테리어 제휴점 등의 유통망을 통해서도 공급해 나가고 있습니다.</p>
                        <p style="font-size: 13px;">이를 통해 ‘세계 최강의 주거환경 전문회사’ 라는 비전을 달성해 나갈 것입니다.</p>
                        <img class="d-block img-fluid" src="${pageContext.request.contextPath}\resourcesKIM\img\intro\introduce2.jpg" alt="">

                        <hr>
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
