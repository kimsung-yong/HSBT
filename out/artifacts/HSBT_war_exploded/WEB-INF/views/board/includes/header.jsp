<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
    /*footer {*/

    /*    position:relative;*/
    /*    left:0px;*/
    /*    bottom:0px;*/
    /*    width: 100%;*/
    /*    text-align: center;*/
    /*    margin-top: 10px;*/
    /*}*/
    .pull-right {
        float: right !important;
    }
    /*html, body {*/
    /*    margin:0px;*/
    /*    padding:0;*/
    /*    height:100%;*/
    /*}*/
    /*.table-hover {*/
    /*    !*min-height:80%;*!*/
    /*    position:relative;*/
    /*    !*padding-bottom:100px;!* footer height *!*!*/
    /*}*/
    footer {
        /*padding: auto;*/
        width:100%;
        height:100px;
        position:absolute;
        bottom:0;
        background:#5eaeff;
        text-align: center;
        color: white;
    }

</style>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop Homepage - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <%--    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">--%>
    <link href="${pageContext.request.contextPath}/resourcesKIM/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resourcesKIM/css/paging.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resourcesKIM/css/shop-homepage.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="/">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Content -->
<div class="container">

    <div class="row">

        <div class="col-lg-3">

            <h1 class="my-4">커뮤니티</h1>
            <div class="list-group">
                <a href="/board/noticeboard/list" class="list-group-item">공지사항</a>
                <a href="/board/freeboard/list" class="list-group-item">자유게시판</a>
                <a href="/board/reviewboard/list" class="list-group-item">후기</a>
                <a href="/board/tipboard/list" class="list-group-item">Tip</a>
                <a href="/board/qnaboard/list" class="list-group-item">Q＆A</a>
            </div>

        </div>
        <!-- /.col-lg-3 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>