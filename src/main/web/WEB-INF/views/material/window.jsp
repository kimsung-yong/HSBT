<%--
  Created by IntelliJ IDEA.
  User: IT
  Date: 2020-02-06
  Time: 오후 2:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Materials - 창호</title>

    <!-- Bootstrap core CSS -->
    <link href="/resourcesKIM/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resourcesKIM/css/shop-homepage.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Start Bootstrap</a>
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

            <h1 class="my-4">Materials</h1>
            <div class="list-group">
                <a href="http://localhost:9301/material/tile" class="list-group-item">타일</a>
                <a href="http://localhost:9301/material/wallpaper" class="list-group-item">벽지</a>
                <a href="http://localhost:9301/material/window" class="list-group-item">창호</a>
                <a href="http://localhost:9301/material/paint" class="list-group-item">페인트</a>
            </div>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">
            <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <img class="d-block img-fluid" src="/resources/img/material/tile/tile1.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid" src="/resources/img/material/tile/tile2.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid" src="/resources/img/material/tile/tile3.jpg" alt="Third slide">
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

            <h2>Window</h2>
            <br>

            <div class="row">

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="/resources/img/material/window/LGziin.jpg" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">Z:IN 창호 파워세이브 단창</a>
                            </h5>
                            <p class="card-text">
                                <table>
                                    <tr>
                                        <td>색상</td>
                                        <td>백색, 칼라시트</td>
                                    </tr>
                                    <tr>
                                        <td>구성품</td>
                                        <td>창틀, 유리, 창짝 등</td>
                                    </tr>
                                    <tr>
                                        <td>주요소재</td>
                                        <td>PL창, 보강철물 등</td>
                                    </tr>
                                    <tr>
                                        <td>제조국</td>
                                        <td>KOREA</td>
                                    </tr>
                                </table>
                            </p>
                        </div>
                        <%--<div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>--%>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="/resources/img/material/window/P-250.jpg" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">Z:IN 창호 파워세이브 이중창</a>
                            </h5>
                            <p class="card-text">
                                <table>
                                    <tr>
                                        <td>색상</td>
                                        <td>백색, 칼라시트</td>
                                    </tr>
                                    <tr>
                                        <td>구성품</td>
                                        <td>창틀, 유리, 창짝 등</td>
                                    </tr>
                                    <tr>
                                        <td>주요소재</td>
                                        <td>PL창, 보강철물 등</td>
                                    </tr>
                                    <tr>
                                        <td>제조국</td>
                                        <td>KOREA</td>
                                    </tr>
                                </table>
                            </p>
                        </div>
                        <%--<div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>--%>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="/resources/img/material/window/P-230W.jpg" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">Z:IN 창호 파워세이브 광폭단창</a>
                            </h5>
                            <p class="card-text">
                                <table>
                                    <tr>
                                        <td>색상</td>
                                        <td>백색, 칼라시트</td>
                                    </tr>
                                    <tr>
                                        <td>구성품</td>
                                        <td>창틀, 유리, 창짝 등</td>
                                    </tr>
                                    <tr>
                                        <td>주요소재</td>
                                        <td>PL창, 보강철물 등</td>
                                    </tr>
                                    <tr>
                                        <td>제조국</td>
                                        <td>KOREA</td>
                                    </tr>
                                </table>
                            </p>
                        </div>
                        <%--<div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>--%>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="/resources/img/material/window/Turning.jpg" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">Z:IN 창호 파워세이브 터닝도어</a>
                            </h5>
                            <p class="card-text">
                                <table>
                                    <tr>
                                        <td>색상</td>
                                        <td>그린 + 투명</td>
                                    </tr>
                                    <tr>
                                        <td>구성품</td>
                                        <td>창틀, 유리, 창짝 등</td>
                                    </tr>
                                    <tr>
                                        <td>주요소재</td>
                                        <td>PL창, 보강철물 등</td>
                                    </tr>
                                    <tr>
                                        <td>제조국</td>
                                        <td>KOREA</td>
                                    </tr>
                                </table>
                            </p>
                        </div>
                        <%--<div class="card-footer">
                            <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                        </div>--%>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="/resources/img/material/window/S3-235.jpg" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">Z:IN 창호 수퍼세이브3 이중창</a>
                            </h5>
                            <p class="card-text">
                                <table>
                                    <tr>
                                        <td>색상</td>
                                        <td>백색, 칼라시트</td>
                                    </tr>
                                    <tr>
                                        <td>구성품</td>
                                        <td>창틀, 유리, 창짝 등</td>
                                    </tr>
                                    <tr>
                                        <td>주요소재</td>
                                        <td>PL창, 보강철물 등</td>
                                    </tr>
                                    <tr>
                                        <td>제조국</td>
                                        <td>KOREA</td>
                                    </tr>
                                </table>
                            </p>
                        </div>
                        <%-- <div class="card-footer">
                             <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                         </div>--%>
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
<script src="/resourcesKIM/vendor/jquery/jquery.min.js"></script>
<script src="/resourcesKIM/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
