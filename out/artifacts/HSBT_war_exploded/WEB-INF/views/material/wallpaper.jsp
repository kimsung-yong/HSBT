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

            <h2>WallPaper</h2>
            <br>

            <div class="row">

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="/resources/img/material/wallpaper/wallpaper1.jpg" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">서울 실크벽지 2205-1</a>
                            </h5>
                            <p class="card-text">
                                <table>
                                    <tr>
                                        <td>규격</td>
                                        <td>106cm * 1,550cm/16㎡</td>
                                    </tr>
                                    <tr>
                                        <td>재질</td>
                                        <td>Silk</td>
                                    </tr>
                                    <tr>
                                        <td>용도</td>
                                        <td>인테리어용</td>
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
                        <a href="#"><img class="card-img-top" src="/resources/img/material/wallpaper/wallpaper2.jpg" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">서울 실크벽지 2205-4</a>
                            </h5>
                            <p class="card-text">
                                <table>
                                    <tr>
                                        <td>규격</td>
                                        <td>106cm * 1,550cm/16㎡</td>
                                    </tr>
                                    <tr>
                                        <td>재질</td>
                                        <td>Silk</td>
                                    </tr>
                                    <tr>
                                        <td>용도</td>
                                        <td>인테리어용</td>
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
                        <a href="#"><img class="card-img-top" src="/resources/img/material/wallpaper/wallpaper3.jpg" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">서울 실크벽지 2205-6</a>
                            </h5>
                            <p class="card-text">
                                <table>
                                    <tr>
                                        <td>규격</td>
                                        <td>106cm * 1,550cm/16㎡</td>
                                    </tr>
                                    <tr>
                                        <td>재질</td>
                                        <td>Silk</td>
                                    </tr>
                                    <tr>
                                        <td>용도</td>
                                        <td>인테리어용</td>
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
                        <a href="#"><img class="card-img-top" src="/resources/img/material/wallpaper/wallpaper4.jpg" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">서울 실크벽지 2205-10</a>
                            </h5>
                            <p class="card-text">
                                <table>
                                    <tr>
                                        <td>규격</td>
                                        <td>106cm * 1,550cm/16㎡</td>
                                    </tr>
                                    <tr>
                                        <td>재질</td>
                                        <td>Silk</td>
                                    </tr>
                                    <tr>
                                        <td>용도</td>
                                        <td>인테리어용</td>
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
                        <a href="#"><img class="card-img-top" src="/resources/img/material/wallpaper/wallpaper5.jpg" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">서울 실크벽지 2295-11</a>
                            </h5>
                            <p class="card-text">
                                <table>
                                    <tr>
                                        <td>규격</td>
                                        <td>106cm * 1,550cm/16㎡</td>
                                    </tr>
                                    <tr>
                                        <td>재질</td>
                                        <td>Silk</td>
                                    </tr>
                                    <tr>
                                        <td>용도</td>
                                        <td>인테리어용</td>
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

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="/resources/img/material/wallpaper/wallpaper6.jpg" alt=""></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="#">서울 실크벽지 2295-12</a>
                            </h5>
                            <p class="card-text">
                                <table>
                                    <tr>
                                        <td>규격</td>
                                        <td>106cm*1,550cm/16㎡</td>
                                    </tr>
                                    <tr>
                                        <td>재질</td>
                                        <td>Silk</td>
                                    </tr>
                                    <tr>
                                        <td>용도</td>
                                        <td>인테리어용</td>
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

            </div>
            <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

</div>
<!-- /.container -->
<jsp:include page="../material/includes/materialFooter.jsp"/>
