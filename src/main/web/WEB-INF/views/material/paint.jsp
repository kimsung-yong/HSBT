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
<jsp:include page="../material/includes/materialFooter.jsp"/>
