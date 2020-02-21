<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<jsp:include page="../includes/header.jsp"/>
<style>
    td {
        padding: 10px;
        color: white;
    }
    hr {
        border-color: white;
    }
</style>
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
                <div style="width: 500px; margin: auto auto;border-style: solid; border-color: white;padding: 30px;border-radius: 20px">
                    <h3 style="text-align: center; color: white">회원 정보</h3>
                    <hr>
                    <table style="margin: auto auto;">
                        <tr>
                            <td>ID</td>
                            <td>${vo.id}</td>
                        </tr>
                        <tr>
                            <td>성명</td>
                            <td>${vo.name}</td>
                        </tr>
                        <tr>
                            <td>휴대폰 번호</td>
                            <td>${vo.phone}</td>
                        </tr>
                        <tr>
                            <td>주소</td>
                            <td>${vo.address}</td>
                        </tr>
                    </table>
                    <hr>
                    <button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-dark">수정</button>
                </div>
            </div>
        </div>
    </div>
</header>

<div class="modal fade" id ="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">회원 정보 수정</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <input type="text" class="form-control" value="<c:out value="${vo.id}"/>" readonly="readonly"
                           name="id" maxlength="20">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="비밀번호"
                           name="pw" maxlength="20">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="비밀번호 확인"
                           name="pwd" maxlength="20">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="이름"
                           name="name" maxlength="20">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="휴대폰번호"
                           name="phone" maxlength="20">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="주소"
                           name="address" maxlength="50">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" id="infoModBtn" class="btn btn-dark">저장</button>
                <button type="button" data-dismiss="modal" class="btn btn-dark">취소</button>
            </div>
            <%--              /.<div class="modal-content">  --%>
        </div>

        <%--                <div class="modal-dialog">--%>
    </div>
    <%--         /.modal   --%>
</div>
</body>

<script type="text/javascript">
$(function () {
    var modal = $(".modal");

});
</script>