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
                <form method="post" action="/member/join" style="width: 300px; margin: auto auto;border-style: solid; border-color: white;padding: 30px;border-radius: 20px">
                    <h3 style="text-align: center; color: white">회원가입</h3>
                    <br>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="아이디"
                               name="id" maxlength="20">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="비밀번호"
                               name="pw" maxlength="20">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="이름"
                               name="name" maxlength="20">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="휴대폰번호"
                               name="phone" maxlength="20">
                    </div>
                    <%--                    <div class="form-group" style="text-align: center;">--%>
                    <%--                        <div class="btn-group" data-toggle="buttons">--%>
                    <%--                            <label class="btn btn-primary active"> <input--%>
                    <%--                                    type="radio" name="userGender" autocomplete="off" value="남자"--%>
                    <%--                                    checked>남자--%>
                    <%--                            </label> <label class="btn btn-primary"> <input type="radio"--%>
                    <%--                                                                            name="userGender" autocomplete="off" value="여자" >여자--%>
                    <%--                        </label>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="주소"
                               name="address" maxlength="50">
                    </div>
                    <input type="submit" class="btn btn-primary form-control"
                           value="회원가입">
                </form>
            </div>
        </div>
    </div>
</header>


