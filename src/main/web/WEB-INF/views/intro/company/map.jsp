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

    <link href="#" rel="shortcut icon">
    <!-- Bootstrap core CSS -->
    <%--    <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">--%>
    <link href="${pageContext.request.contextPath}/resourcesKIM/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <%--    <link href="resources/css/shop-homepage.css" rel="stylesheet">--%>
    <link href="${pageContext.request.contextPath}/resourcesKIM/css/shop-homepage.css" rel="stylesheet" type="text/css">

    <%--전화모양 팩스모양 가져오기(Font Awesome  Icon)--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
</head>

<body>

<style>
    nav.sub_title {
        width: 70%;
        height: 50px;
        position: absolute;
        top: 10%;
        left: 0%;
        transform: translate(0, -10%);
        border-bottom: 1px solid #ddd;
        line-height: 2;
    }
    nav.sub_title h2 {
        letter-spacing: 6px !important;
    }
    nav.sub_title span {
        position: absolute;
        top: 20%;
        right: 0;
        font-size: 13px;
    }


</style>



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

            <h1 class="my-4">Shop Name</h1>
            <div class="list-group">
                <a href="/intro/introduce" class="list-group-item">회사 소개</a>
                <a href="/intro/history" class="list-group-item">회사 연혁</a>
                <a href="/intro/map" class="list-group-item">오시는 길</a>
            </div>

        </div>
        <!-- /.col-lg-3 11-->

        <div class="col-lg-9">

            <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">

            </div>

            <div class="row">
                <nav class="sub_title">
                    <h2>오시는길</h2>
                    <span>HOME > 회사소개 > 오시는길</span>
                </nav>
                <div class="content">
                    <table cellpadding="0" cellspacing="0" width="536" >
                        <tr>
                            <a><br><br><br><br></a>
                            <td style="border:1px solid #cecece;">
                                <a href="https://map.naver.com/v5/search/%EB%8C%80%EC%A0%84%20%EC%84%9C%EA%B5%AC%20%EA%B3%84%EB%A3%A1%EB%A1%9C%20636%207%EC%B8%B5?c=14180329.9578669,4347305.8219196,14,0,0,0,dh" target="_blank">
                                   <img src="${pageContext.request.contextPath}/resourcesKIM/img/intro/map.png" width="534" height="418" alt="지도 크게 보기" title="지도 크게 보기" border="0" style="vertical-align:top;"/>
                                </a>
                            </td>
                        </tr>
                    </table>
                    <div class="contact" style="color: #0192dc">
                        <span><i class="fas fa-map-marker"></i></span>
                        <span class="address"> &nbsp;<b>Adress</b> &nbsp; : 아이티스쿨정보기술교육원 대전광역시 서구 계룡로 636, 7층(용문동, 도산빌딩)</span><br>
                        <span><i class="fas fa-phone-volume"></i></span>
                        <span class="address"> &nbsp; &nbsp;<b>TEL</b>  &nbsp; &nbsp; &nbsp;: 042-525-2666</span><br>
                        <span><i class="fas fa-fax"></i></span>
                        <span class="address"> &nbsp;&nbsp;<b>FAX</b>  &nbsp; &nbsp;&nbsp;: 042-522-9666</span>
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
