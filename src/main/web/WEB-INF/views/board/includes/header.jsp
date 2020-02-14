<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
    .pagination {
        display: inline-block;
        padding-left: 0;
        margin: 20px 0;
        border-radius: 4px;
    }
    .pagination > li {
        display: inline;
    }
    .pagination > li > a,
    .pagination > li > span {
        position: relative;
        float: left;
        padding: 6px 12px;
        margin-left: -1px;
        line-height: 1.42857143;
        color: #337ab7;
        text-decoration: none;
        background-color: #fff;
        border: 1px solid #ddd;
    }
    .pagination > li:first-child > a,
    .pagination > li:first-child > span {
        margin-left: 0;
        border-top-left-radius: 4px;
        border-bottom-left-radius: 4px;
    }
    .pagination > li:last-child > a,
    .pagination > li:last-child > span {
        border-top-right-radius: 4px;
        border-bottom-right-radius: 4px;
    }
    .pagination > li > a:hover,
    .pagination > li > span:hover,
    .pagination > li > a:focus,
    .pagination > li > span:focus {
        z-index: 2;
        color: #23527c;
        background-color: #eee;
        border-color: #ddd;
    }
    .pagination > .active > a,
    .pagination > .active > span,
    .pagination > .active > a:hover,
    .pagination > .active > span:hover,
    .pagination > .active > a:focus,
    .pagination > .active > span:focus {
        z-index: 3;
        color: #fff;
        cursor: default;
        background-color: #337ab7;
        border-color: #337ab7;
    }
    .pagination > .disabled > span,
    .pagination > .disabled > span:hover,
    .pagination > .disabled > span:focus,
    .pagination > .disabled > a,
    .pagination > .disabled > a:hover,
    .pagination > .disabled > a:focus {
        color: #777;
        cursor: not-allowed;
        background-color: #fff;
        border-color: #ddd;
    }
    .pagination-lg > li > a,
    .pagination-lg > li > span {
        padding: 10px 16px;
        font-size: 18px;
        line-height: 1.3333333;
    }
    .pagination-lg > li:first-child > a,
    .pagination-lg > li:first-child > span {
        border-top-left-radius: 6px;
        border-bottom-left-radius: 6px;
    }
    .pagination-lg > li:last-child > a,
    .pagination-lg > li:last-child > span {
        border-top-right-radius: 6px;
        border-bottom-right-radius: 6px;
    }
    .pagination-sm > li > a,
    .pagination-sm > li > span {
        padding: 5px 10px;
        font-size: 12px;
        line-height: 1.5;
    }
    .pagination-sm > li:first-child > a,
    .pagination-sm > li:first-child > span {
        border-top-left-radius: 3px;
        border-bottom-left-radius: 3px;
    }
    .pagination-sm > li:last-child > a,
    .pagination-sm > li:last-child > span {
        border-top-right-radius: 3px;
        border-bottom-right-radius: 3px;
    }
    .pager {
        padding-left: 0;
        margin: 20px 0;
        text-align: center;
        list-style: none;
    }
    .pager li {
        display: inline;
    }
    .pager li > a,
    .pager li > span {
        display: inline-block;
        padding: 5px 14px;
        background-color: #fff;
        border: 1px solid #ddd;
        border-radius: 15px;
    }
    .pager li > a:hover,
    .pager li > a:focus {
        text-decoration: none;
        background-color: #eee;
    }
    .pager .next > a,
    .pager .next > span {
        float: right;
    }
    .pager .previous > a,
    .pager .previous > span {
        float: left;
    }
    .pager .disabled > a,
    .pager .disabled > a:hover,
    .pager .disabled > a:focus,
    .pager .disabled > span {
        color: #777;
        cursor: not-allowed;
        background-color: #fff;
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