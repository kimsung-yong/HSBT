<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Creative - Start Bootstrap Theme</title>

    <link href="#" rel="shortcut icon">
    <!-- Font Awesome Icons -->
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="${pageContext.request.contextPath}/resources/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Theme CSS - Includes Bootstrap -->
    <link href="${pageContext.request.contextPath}/resources/css/creative.min.css" rel="stylesheet">

    <%-- 견적 모달 CSS --%>
    <link href="${pageContext.request.contextPath}/resources/css/eModal.css" rel="stylesheet" type="text/css">
</head>

<body id="page-top">



<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="/"><h4>KNLS</h4></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto my-2 my-lg-0">
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
                        <a class="nav-link js-scroll-trigger" href="#">${vo.name}님 환영합니다</a>
                    </c:if>
                </li>
            </ul>
        </div>
    </div>
</nav>


<%--<header class="masthead">--%>
<%--    <div class="rows">--%>
<%--        <div class="col-lg-12">--%>
<%--            <h1 class="page-header">Tables</h1>--%>
<%--        </div>--%>
<%--        <!-- /.col-lg-12 -->--%>
<%--    </div>--%>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>