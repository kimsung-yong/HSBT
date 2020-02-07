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

    <title>Materials - 페인트</title>

    <!-- Bootstrap core CSS -->
    <link href="/resourcesKIM/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resourcesKIM/css/shop-homepage.css" rel="stylesheet">

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
                    <a class="nav-link" href="/">Home
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
                <a href="/material/tile" class="list-group-item">타일</a>
                <a href="/material/wallpaper" class="list-group-item">벽지</a>
                <a href="/material/window" class="list-group-item">창호</a>
                <a href="/material/paint" class="list-group-item">페인트</a>
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

            <h2>Paint</h2>
            <br>

            <div class="row">

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="/resources/img/material/paint/Pantone.png" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">팬톤 에어프레쉬</a>
                            </h5>
                            <p class="card-text">
                                <table>
                                    <tr>
                                        <td>타입</td>
                                        <td>아크릴 에멀젼 수성</td>
                                    </tr>
                                    <tr>
                                        <td>색상</td>
                                        <td>백색 및 기타색</td>
                                    </tr>
                                    <tr>
                                        <td>희석제</td>
                                        <td>상수도 물</td>
                                    </tr>
                                    <tr>
                                        <td>희석률</td>
                                        <td>최대 20%, 부피비</td>
                                    </tr>
                                    <tr>
                                        <td>광택</td>
                                        <td>무광</td>
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
                        <a href="#"><img class="card-img-top" src="/resources/img/material/paint/PW.png" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">팬톤 우드&메탈 페인트</a>
                            </h5>
                            <p class="card-text">
                                <table>
                                    <tr>
                                        <td>타입</td>
                                        <td>우레탄 알키드 에멀젼</td>
                                    </tr>
                                    <tr>
                                        <td>색상</td>
                                        <td>백색 및 기타색</td>
                                    </tr>
                                    <tr>
                                        <td>희석제</td>
                                        <td>무희석</td>
                                    </tr>
                                    <tr>
                                        <td>희석률</td>
                                        <td>최대 10%, 부피비</td>
                                    </tr>
                                    <tr>
                                        <td>광택</td>
                                        <td>반광</td>
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
                        <a href="#"><img class="card-img-top" src="/resources/img/material/paint/SX.jpg" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">팬톤 타일페인트</a>
                            </h5>
                            <p class="card-text">
                                <table>
                                    <tr>
                                        <td>타입</td>
                                        <td>수성 2액형 에폭시</td>
                                    </tr>
                                    <tr>
                                        <td>색상</td>
                                        <td>백색 및 지정색상</td>
                                    </tr>
                                    <tr>
                                        <td>희석제</td>
                                        <td>필요시 상수도물</td>
                                    </tr>
                                    <tr>
                                        <td>희석률</td>
                                        <td> - </td>
                                    </tr>
                                    <tr>
                                        <td>광택</td>
                                        <td>유광</td>
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
                        <a href="#"><img class="card-img-top" src="/resources/img/material/paint/PXI.jpg" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">팬톤 페인트 멀티</a>
                            </h5>
                            <p class="card-text">
                                <table>
                                    <tr>
                                        <td>타입</td>
                                        <td>Pure Acrylic 에멀젼</td>
                                    </tr>
                                    <tr>
                                        <td>색상</td>
                                        <td>백색 및 기타색</td>
                                    </tr>
                                    <tr>
                                        <td>희석제</td>
                                        <td>상수도물</td>
                                    </tr>
                                    <tr>
                                        <td>희석률</td>
                                        <td>최대 10%, 부피비</td>
                                    </tr>
                                    <tr>
                                        <td>광택</td>
                                        <td>반무광</td>
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
                        <a href="#"><img class="card-img-top" src="/resources/img/material/paint/PXH.jpg" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">팬톤페인트 익스테리어</a>
                            </h5>
                            <p class="card-text">
                                <table>
                                    <tr>
                                        <td>타입</td>
                                        <td>Pure Acrylic 에멀젼</td>
                                    </tr>
                                    <tr>
                                        <td>색상</td>
                                        <td>백색 및 기타색</td>
                                    </tr>
                                    <tr>
                                        <td>희석제</td>
                                        <td>상수도물</td>
                                    </tr>
                                    <tr>
                                        <td>희석률</td>
                                        <td>최대 10%, 부피비</td>
                                    </tr>
                                    <tr>
                                        <td>광택</td>
                                        <td>반무광</td>
                                    </tr>
                                </table>
                            </p>
                        </div>
                        <%-- <div class="card-footer">
                             <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                         </div>--%>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="/resources/img/material/paint/Soonsu.jpg" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">순&수 원터치</a>
                            </h5>
                            <p class="card-text">
                                <table>
                                    <tr>
                                        <td>타입</td>
                                        <td>에멀젼 수성</td>
                                    </tr>
                                    <tr>
                                        <td>색상</td>
                                        <td>백색 및 담색</td>
                                    </tr>
                                    <tr>
                                        <td>희석제</td>
                                        <td>상수도물</td>
                                    </tr>
                                    <tr>
                                        <td>희석률</td>
                                        <td>최대 20%, 부피비</td>
                                    </tr>
                                    <tr>
                                        <td>광택</td>
                                        <td>무광</td>
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
                        <a href="#"><img class="card-img-top" src="/resources/img/material/paint/SoonWood.jpg" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">순&수 우드스테인</a>
                            </h5>
                            <p class="card-text">
                            <table>
                                <tr>
                                    <td>타입</td>
                                    <td>수성 아크릭계 수지</td>
                                </tr>
                                <tr>
                                    <td>색상</td>
                                    <td>카카오색</td>
                                </tr>
                                <tr>
                                    <td>희석제</td>
                                    <td>원액사용</td>
                                </tr>
                                <tr>
                                    <td>희석률</td>
                                    <td> - </td>
                                </tr>
                                <tr>
                                    <td>광택</td>
                                    <td>무광</td>
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
                        <a href="#"><img class="card-img-top" src="/resources/img/material/paint/SoonB.png" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">순&수 수성바니쉬</a>
                            </h5>
                            <p class="card-text">
                            <table>
                                <tr>
                                    <td>타입</td>
                                    <td>아크릭/우레탄 수지</td>
                                </tr>
                                <tr>
                                    <td>색상</td>
                                    <td>투명</td>
                                </tr>
                                <tr>
                                    <td>희석제</td>
                                    <td>상수도물</td>
                                </tr>
                                <tr>
                                    <td>희석률</td>
                                    <td>최대 10%, 부피비</td>
                                </tr>
                                <tr>
                                    <td>광택</td>
                                    <td>반광</td>
                                </tr>
                            </table>
                            </p>
                        </div>
                        <%--<div class="card-footer">
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
