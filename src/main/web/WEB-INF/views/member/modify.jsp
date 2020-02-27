<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/views/member/header.jsp"/>


<div class="col-lg-9">

    <div class="row">
        <div class="col-lg-12">
            <br>
            <h1 class="page-header">사용자</h1>
            <br>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">

                </div>
                <!-- /.panel-heading -->

                <div class="panel-body">
                    <form action="/member/modify" method="post">
                    <div class="form-group">
                        <label>아이디</label> <input class="form-control" name="id"
                                                  value="<c:out value="${list.id}"/>">
                    </div>

                    <div class="form-group">
                        <label>비밀번호</label> <input type="password" class="form-control" name="pw"
                                                   value="<c:out value="${list.pw}"/>">
                    </div>

                    <div class="form-group">
                        <label>이름</label>
                        <input class="form-control" name="name" value="<c:out value="${list.name}"/>">
                    </div>

                    <div class="form-group">
                        <label>휴대폰 번호</label>
                        <input class="form-control" name="phone" value="<c:out value="${list.phone}"/>">
                    </div>
                    <div class="form-group">
                        <label>주소</label>
                        <input class="form-control" name="address" value="<c:out value="${list.address}"/>">
                    </div>
                    <div class="form-group">
                        <label>관리자</label>
                        <input class="form-control" name="manager" value="<c:out value="${list.manager}"/>">
                    </div>
                </div>
                <button data-oper="modify" type="submit" class="btn btn-danger">저장</button>
                <button data-oper="remove" type="submit" class="btn btn-danger">삭제</button>
                <button data-oper="list" type="submit" class="btn btn-danger">목록</button>
                </form>
            </div>

        </div>
    </div>
</div>

<!-- /#page-wrapper -->


<script>
    $(document).ready(function () {
        var formObj = $("form");

        $('button').on("click",function (e) {

            e.preventDefault();

            var operation = $(this).data("oper");

            console.log(operation);
            if(operation === 'modify'){
                // e.preventDefault();
                formObj.append("<input type='hidden' name='pageNum' value='${cri.pageNum}'>");
                formObj.append("<input type='hidden' name='amount' value='${cri.amount}'>");
                formObj.append("<input type='hidden' name='type' value='${cri.type}'>");
                formObj.append("<input type='hidden' name='keyword' value='${cri.keyword}'>");
            }else if(operation === 'remove'){
                formObj.attr("action", "/member/remove");
                formObj.append("<input type='hidden' name='pageNum' value='${cri.pageNum}'>");
                formObj.append("<input type='hidden' name='amount' value='${cri.amount}'>");
                formObj.append("<input type='hidden' name='type' value='${cri.type}'>");
                formObj.append("<input type='hidden' name='keyword' value='${cri.keyword}'>");
            }else if (operation === 'list'){
                // self.location = "/board/list";
                formObj.attr("action","/member/list").attr("method","get");
                formObj.empty();
                formObj.append("<input type='hidden' name='pageNum' value='${cri.pageNum}'>");
                formObj.append("<input type='hidden' name='amount' value='${cri.amount}'>");
                formObj.append("<input type='hidden' name='type' value='${cri.type}'>");
                formObj.append("<input type='hidden' name='keyword' value='${cri.keyword}'>");

            }
            formObj.submit();
        });

    });
</script>
<%--<%@include file="/WEB-INF/views/board/includes/footer.jsp"%>--%>
