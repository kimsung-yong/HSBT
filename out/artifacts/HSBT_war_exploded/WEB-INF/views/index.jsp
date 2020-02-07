<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<jsp:include page="includes/header.jsp"/>

<body id="page-top">

  <!-- Masthead -->
  <header class="masthead">
    <div class="container h-100">
      <div class="row h-100 align-items-center justify-content-center text-center">
        <div class="col-lg-10 align-self-end">
          <h1 class="text-uppercase text-white font-weight-bold">Your Favorite Source of Free Bootstrap Themes</h1>
          <hr class="divider my-4">
        </div>
        <div class="col-lg-8 align-self-baseline">
          <p class="text-white-75 font-weight-light mb-5">Start Bootstrap can help you build better websites using the Bootstrap framework! Just download a theme and start customizing, no strings attached!</p>
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
            <a class="portfolio-box" href="http://localhost:8112/intro/introduce">
            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/service/회사소개.jpg">
            <h3 class="h4 mb-2">회사 소개</h3>
            </a>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <a class="portfolio-box" href="http://localhost:9301/material/tile">
              <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/service/건축자재.jpg">
              <h3 class="h4 mb-2">건축자재</h3>
            </a>
          </div>
        </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="mt-5">
              <a class="portfolio-box" href="http://www.naver.com">
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
          <a class="portfolio-box" href="${pageContext.request.contextPath}/resources/img/portfolio/fullsize/1.jpg">
            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/1.jpg" alt="">
            <div class="portfolio-box-caption">
              <div class="project-category text-white-50">
                Category
              </div>
              <div class="project-name">
                Project Name
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="${pageContext.request.contextPath}/resources/img/portfolio/fullsize/2.jpg">
            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/2.jpg" alt="">
            <div class="portfolio-box-caption">
              <div class="project-category text-white-50">
                Category
              </div>
              <div class="project-name">
                Project Name
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="${pageContext.request.contextPath}/resources/img/portfolio/fullsize/3.jpg">
            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/3.jpg" alt="">
            <div class="portfolio-box-caption">
              <div class="project-category text-white-50">
                Category
              </div>
              <div class="project-name">
                Project Name
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="${pageContext.request.contextPath}/resources/img/portfolio/fullsize/4.jpg">
            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/4.jpg" alt="">
            <div class="portfolio-box-caption">
              <div class="project-category text-white-50">
                Category
              </div>
              <div class="project-name">
                Project Name
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="${pageContext.request.contextPath}/resources/img/portfolio/fullsize/5.jpg">
            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/5.jpg" alt="">
            <div class="portfolio-box-caption">
              <div class="project-category text-white-50">
                Category
              </div>
              <div class="project-name">
                Project Name
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-sm-6">
          <a class="portfolio-box" href="${pageContext.request.contextPath}/resources/img/portfolio/fullsize/6.jpg">
            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/portfolio/thumbnails/6.jpg" alt="">
            <div class="portfolio-box-caption p-3">
              <div class="project-category text-white-50">
                Category
              </div>
              <div class="project-name">
                Project Name
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
  </section>

  <!-- Call to Action Section -->
  <section class="page-section bg-dark text-white">
    <div class="container text-center">
      <h2 class="mb-4">Free Download at Start Bootstrap!</h2>
      <a class="btn btn-light btn-xl" href="https://startbootstrap.com/themes/creative/">Download Now!</a>
    </div>
  </section>

<jsp:include page="includes/footer.jsp"/>
