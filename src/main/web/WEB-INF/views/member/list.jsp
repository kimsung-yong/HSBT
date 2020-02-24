<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<jsp:include page="../includes/header.jsp"/>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">회원 관리</h1>
    </div>
<!--/.col.lg.12-->
</div>
<!--/.row-->
<div class="row">
    <div class="col.lg.12">
        <div class="panel panel-default">
            <div class="panel-heading">회원 목록</div>
            <!--/.panel-heading-->
            <div class="panel-body">
                <table class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>아이디</th>
                            <th>비빌번호</th>
                            <th>이름</th>
                            <th>주소</th>
                            <th>휴대폰 번호</th>
                        </tr>
                    </thead>
                    <c:forEach items="${list}" var="member">
                        <tr>
                            <td><c:out value="${list.id}"/></td>
                            <td><c:out value="${list.pw}"/></td>
                            <td><c:out value="${list.name}"/></td>
                            <td><c:out value="${list.address}"/></td>
                            <td><c:out value="${list.phone}"/></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>

    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        var result = '<c:out value="${result}"/>';
    });
</script>
<%@include file="../includes/footer.jsp" %>