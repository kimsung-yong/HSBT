<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<jsp:include page="../includes/header.jsp"/>
<style>
    table {
        margin: auto auto;
    }
    #estMod td {
        padding: 10px;
    }
    #memberInfo td {
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
                    <table id="memberInfo">
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
                    <a data-toggle="modal" href="#estModal">견적신청 내역 보기</a>
                    <hr>
                    <button type="button" data-toggle="modal" data-target="#infoModal" class="btn btn-dark">수정</button>
                </div>
            </div>
        </div>
    </div>
</header>
<%--infoModal--%>
<div class="modal fade" id ="infoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
    <%--         /.infoModal   --%>
</div>
<%--estModal--%>
<div class="modal fade" id ="estModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">${vo.name}님의 견적 신청 내역</h4>
            </div>
            <div class="modal-body">
                <table id="estMod">
                    <th>
                        <td>견적신청번호</td>
                        <td>주소</td>
                        <td>면적</td>
                        <td>예산</td>
                        <td>시공항목</td>
                        <td>문의사항</td>
                        <td>신청날짜</td>
                    </th>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" id="estModalModBtn" class="btn btn-dark">수정</button>
                <button type="button" data-dismiss="modal" class="btn btn-dark">취소</button>
            </div>
            <%--              /.<div class="modal-content">  --%>
        </div>

        <%--                <div class="modal-dialog">--%>
    </div>
    <%--         /.estModal   --%>
</div>
</body>

<script type="text/javascript">

</script>