<%--
  Created by IntelliJ IDEA.
  User: IT
  Date: 2020-02-06
  Time: 오후 2:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%--ddd--%>
<jsp:include page="../material/includes/materialHeader.jsp"/>
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
<jsp:include page="../material/includes/materialFooter.jsp"/>
