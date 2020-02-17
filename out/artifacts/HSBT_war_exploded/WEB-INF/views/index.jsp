<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<jsp:include page="includes/header.jsp"/>

<body id="page-top">

  <!-- Masthead -->
  <header class="masthead">
    <div class="container h-100">
      <div class="row h-100 align-items-center justify-content-center text-center">
        <div class="col-lg-10 align-self-end">
          <h1 class="text-uppercase text-white font-weight-bold"style="font-style: revert "></h1>
          <hr class="divider my-4">
        </div>
        <div class="col-lg-8 align-self-baseline">
          <p class="text-white-85 font-weight-bold mb-5">자신의 집에서 자신의 세계를 가지고 있는<br> 사람보다 더 행복한 사람은 없다.<br>
            -괴테<br>
          </p>
          <p class="text-hide-85 font-weight-normal">당신의 세계를 만들어 드리겠습니다</p>
          <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Find Out More</a>
        </div>
      </div>
    </div>
  </header>


  <!-- /About Section -->
  <section class="page-section bg-primary" id="about">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-8 text-center">
          <h2 class="text-white mt-0">We've got what you need!</h2>
          <hr class="divider light my-4">
          <p class="text-white-50 mb-4">Start Bootstrap has everything you need to get your new website up and running in no time! Choose one of our open source, free to download, and easy to use themes! No strings attached!</p>
          <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Get Started!</a>
        </div>
      </div>
    </div>
  </section>

  <!-- Services Section -->
  <section class="page-section" id="services">
    <div class="container">
      <h2 class="text-center mt-0">Service</h2>
      <hr class="divider my-4">
      <div class="row">
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <a class="portfolio-box" href="/intro/introduce">
            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/service/회사소개.jpg">
            <h3 class="h4 mb-2">회사 소개</h3>
            </a>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <a class="portfolio-box" href="/material/tile">
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/service/건축자재.jpg">
              <h3 class="h4 mb-2">건축자재</h3>
            </a>
          </div>
        </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="mt-5">
              <a class="portfolio-box" href="/board/noticeboard/list">
                <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/service/Community.jpg">
                <h3 class="h4 mb-2">Community</h3>
              </a>
            </div>
          </div>
            <div class="col-lg-3 col-md-6 text-center">
              <div class="mt-5">
                <a class="portfolio-box" href="http://www.naver.com">
                  <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/service/회사소개.jpg">
                  <h3 class="h4 mb-2">회사 소개</h3>
                </a>
              </div>
            </div>
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
