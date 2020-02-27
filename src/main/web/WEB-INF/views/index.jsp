<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<jsp:include page="includes/header.jsp"/>

<%--<body id="page-top">--%>

  <!-- Masthead -->
  <header class="masthead" id="mainHeader">
    <div class="container h-100">
      <div class="row h-100 align-items-center justify-content-center text-center">
        <div class="col-lg-10 align-self-end">
          <h1 class="text-uppercase text-white font-weight-bold"style="font-style: revert "></h1>
          <hr class="divider my-4">
        </div>
        <div class="col-lg-8 align-self-baseline">
          <p class="text-white-85 font-weight-bold mb-5" style="color: white">자신의 집에서 자신의 세계를 가지고 있는<br> 사람보다 더 행복한 사람은 없다.<br>
            -괴테<br>
          </p>
          <p class="text-hide-85 font-weight-normal" style="color: white">당신의 세계를 만들어 드리겠습니다</p>
          <a class="btn btn-primary btn-xl js-scroll-trigger" href="#services">더 보기..</a>
        </div>
      </div>
    </div>
  </header>


  <!-- /About Section -->
<%--  <section class="page-section bg-primary" id="about">--%>
<%--    <div class="container">--%>
<%--      <div class="row justify-content-center">--%>
<%--        <div class="col-lg-8 text-center">--%>
<%--          <h2 class="text-white mt-0">맞춤형 인테리어 전문!</h2>--%>
<%--          <hr class="divider light my-4">--%>
<%--          <p class="text-white-50 mb-4">당신에게 맞는 당신을 위한 인테리어</p>--%>
<%--          <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">더 보기..</a>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </section>--%>

  <!-- Services Section -->
  <section class="page-section" id="services">
    <div class="container">
      <h2 class="text-center mt-0">Service</h2>
      <hr class="divider my-4">
      <div class="row">
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <a class="portfolio-box" href="/intro/introduce">
            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/service/dice1.png">
            <h3 class="h4 mb-2">회사 소개</h3>
            </a>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <a class="portfolio-box" href="/material/tile">
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/service/dice2.png">
              <h3 class="h4 mb-2">건축자재</h3>
            </a>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <a class="portfolio-box" href="/board/noticeboard/list">
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/service/dice3.png">
              <h3 class="h4 mb-2">Community</h3>
            </a>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <a class="portfolio-box" id="eModal-btn" data-toggle="modal" href="#myModal">
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/service/dice4.png">
              <h3 class="h4 mb-2">견적 신청</h3>
            </a>
          </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <c:choose>
              <c:when test="${!empty vo}">
                <div class="modal-content" style="background: linear-gradient(-135deg, black, whitesmoke) fixed; color: white">
                  <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">견적 신청</h4>
                  </div>
                  <div class="modal-body">
                    <table class="emodal-table" style="color: white">
                      <tr style="background-color: rgba( 255, 255, 255, 0)">
                        <td class="tableDiv">성명</td>
                        <td><b>${vo.name}</b>님</td>
                      </tr>
                      <tr style="background-color: rgba( 255, 255, 255, 0)">
                        <td class="tableDiv">주소</td>
                        <td><input type="text" name="e_address" style="width: 94%"></td>
                      </tr>
                      <tr style="background-color: rgba( 255, 255, 255, 0)">
                        <td class="tableDiv">공간 면적</td>
                        <td><input type="text" name="e_area" class="onlyNo" style="width: 94%; text-align: right">평</td>
                      </tr>
                      <tr style="background-color: rgba( 255, 255, 255, 0)">
                        <td class="tableDiv">인테리어 예산</td>
                        <td><input type="text" name="e_price" class="onlyNo" style="width: 94%; text-align: right">원</td>
                      </tr>
                      <tr style="background-color: rgba( 255, 255, 255, 0)">
                        <td class="tableDiv">시공 항목</td>
                        <td style="text-align: center">
                          <input type="checkbox" class="est-box" name="e_construction" value="tile">타일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <input type="checkbox" class="est-box" name="e_construction" value="wallpaper">벽지&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <input type="checkbox" class="est-box" name="e_construction" value="window">창호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <input type="checkbox" class="est-box" name="e_construction" value="paint">페인트
                        </td>
                      </tr>
                      <tr style="background-color: rgba( 255, 255, 255, 0)">
                        <td class="tableDiv">문의사항</td>
                        <td><textarea name="e_content"></textarea></td>
                      </tr>
                    </table>
                  </div>
                  <div class="modal-footer">
                    <button type="button" id="modalEstimateBtn" class="btn btn-dark">신청</button>
                    <button type="button" class="btn btn-dark" data-dismiss="modal">취소</button>
                  </div>
                </div>
                <!-- /.modal-content -->
              </c:when>
              <c:when test="${empty vo}">
                <div class="modal-content">
                  <div class="modal-header">
                    <h4 class="modal-title">알림</h4>
                  </div>
                  <div class="modal-body">
                    로그인이 필요한 서비스입니다.
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-dark" data-dismiss="modal">확인</button>
                  </div>
                </div>
                <!-- /.modal-content -->
              </c:when>
            </c:choose>
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
      </div>
    </div>
  </section>

  <!-- Portfolio Section -->
  <section id="portfolio">
    <div class="container-fluid p-0">
      <div class="row no-gutters">
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="${pageContext.request.contextPath}/resources/img/portfolio/fullsize/인테리어1-1.PNG">
            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/인테리어1.PNG" alt="">
            <div class="portfolio-box-caption">
              <div class="project-category text-white-50">
              </div>
              <div class="project-name">
                주방 인테리어
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="${pageContext.request.contextPath}/resources/img/portfolio/fullsize/인테리어2-2.PNG">
            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/인테리어2.PNG" alt="">
            <div class="portfolio-box-caption">
              <div class="project-category text-white-50">
              </div>
              <div class="project-name">
                욕실 인테리어
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="${pageContext.request.contextPath}/resources/img/portfolio/fullsize/인테리어3-3.PNG">
            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/인테리어3.PNG" alt="">
            <div class="portfolio-box-caption">
              <div class="project-category text-white-50">
              </div>
              <div class="project-name">
                거실 인테리어
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="${pageContext.request.contextPath}/resources/img/portfolio/fullsize/인테리어4-4.PNG">
            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/인테리어4.PNG" alt="">
            <div class="portfolio-box-caption">
              <div class="project-category text-white-50">
              </div>
              <div class="project-name">
                드레스룸 인테리어
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="${pageContext.request.contextPath}/resources/img/portfolio/fullsize/인테리어5-5.PNG">
            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/인테리어5.PNG" alt="">
            <div class="portfolio-box-caption">
              <div class="project-category text-white-50">
              </div>
              <div class="project-name">
                원룸 인테리어
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="${pageContext.request.contextPath}/resources/img/portfolio/fullsize/인테리어6-6.PNG">
            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/인테리어6.PNG" alt="">
            <div class="portfolio-box-caption p-3">
              <div class="project-category text-white-50">
              </div>
              <div class="project-name">
                사무실 인테리어
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
  </section>

<%--  <!-- Call to Action Section -->
  <section class="page-section bg-dark text-white">
    <div class="container text-center">
      <h2 class="mb-4">Free Download at Start Bootstrap!</h2>
      <a class="btn btn-light btn-xl" href="https://startbootstrap.com/themes/creative/">Download Now!</a>
    </div>
  </section>--%>

<jsp:include page="includes/footer.jsp"/>
<script type="text/javascript" src="/resources/js/estimate.js"></script>
<script type="text/javascript">
$(function () {
  var modal = $('.modal');
  var e_noValue = '<c:out value="${est.e_no}"/>';

  var modalInputId = '<c:out value="${vo.id}"/>';
  var modalInputAddress = modal.find("input[name='e_address']");
  var modalInputArea = modal.find("input[name='e_area']");
  var modalInputPrice = modal.find("input[name='e_price']");
  var modalInputContent = modal.find("textarea[name='e_content']");
  var modalInputRegTime = modal.find("input[name='e_regtime']");
  var construction = new Array();

  modal.on('hidden.bs.modal', function (e) {
    $(".modal-body input, textarea").val("");
    $("input[type=checkbox]").prop("checked", false);
  });

  $('.onlyNo').on("keyup", function () {
    $(this).val($(this).val().replace(/[^0-9]/g,""));
  });

  $('#modalEstimateBtn').on("click", function () {
    $("input[name='e_construction']:checked").each(function () {
      construction.push($(this).val());
    });

    var modalInputCon = construction.join(", ");

    var est = {
      e_no:e_noValue,
      id:modalInputId,
      e_address:modalInputAddress.val(),
      e_area:modalInputArea.val(),
      e_price:modalInputPrice.val(),
      e_construction:modalInputCon,
      e_content:modalInputContent.val(),
      e_regtime:modalInputRegTime.val()
    };

    if(modalInputAddress.val() == "") {
      alert("주소를 입력해주세요.");
    } else if(modalInputArea.val() == "") {
      alert("평수를 입력해주세요.");
    } else if(modalInputPrice.val() == "") {
      alert("예산을 입력해주세요.");
    } else if(modalInputCon == "") {
      alert("시공항목을 최소 한개 이상 선택해주세요.");
    }

    estService.add(est, function (result) {
      alert(result);
      modal.modal("hide");
      location.replace("/");
    });
  });
});

</script>