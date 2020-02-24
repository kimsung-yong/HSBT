<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<jsp:include page="../includeslogin/header.jsp"/>

<body id="page-top">

<!-- Masthead -->
<header class="masthead">
    <div class="container h-100">
        <div class="row h-100 align-items-center justify-content-center text-center">
            <div class="col-lg-10 align-self-end">
                <h1 class="text-uppercase text-white font-weight-bold"style="font-style: revert "></h1>
                <%--                <hr class="divider my-4">--%>
            </div>
            <div class="col-lg-8 align-self-baseline">
                <form method="post" action="/member/login" style="width: 300px; margin: auto auto;border-style: solid; border-color: white;padding: 30px;border-radius: 20px" id="loginForm">
                    <h3 style="text-align: center; color: white"> 로그인</h3>
                    <br>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="아이디" name="id" maxlength="20">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="비밀번호" name="pw" maxlength="20">
                    </div>
                    <c:if test="${check}">
                        <div>
                            <p style="color: red">아이디 또는 비밀번호가 틀립니다</p>
                        </div>
                    </c:if>

                    <button class="btn btn-primary form-control">로그인</button>
<%--                    <input type="submit" class="btn btn-primary form-control" value="로그인">--%>
                </form>
            </div>
        </div>
    </div>
</header>

    <script>

        var loginForm =$("#loginForm");
        var check = '<c:out value="${check}"/>';
        $("#loginForm button").on("click",function (e) {
            if(!loginForm.find("input[name='id']").val()){
                alert("아이디를 입력해주세요");
                loginForm.find("input[name=id]").focus();
                return false;
            }
            if(!loginForm.find("input[name='pw']").val()){
                alert("비밀번호를 입력해주세요");
                loginForm.find("input[name='pw']").focus();
                return false;
            }
            // if(check){
            //     alert("아이디 또는 비밀번호를 다시 입력해주세요");
            // }

            // e.preventDefault();
        })
    </script>



<%--<jsp:include page="../includes/footer.jsp"/>--%>
<script src="${pageContext.request.contextPath}/resourcesKIM/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resourcesKIM/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

