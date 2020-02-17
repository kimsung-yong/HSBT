<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../includes/header.jsp"%>

             <div class="row">
                <div class="col-lg-12">
                    <br>
                    <h1 class="page-header">Q&A</h1>
                    <br>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <br><br><br><br>
                            <h3>게시글 수정</h3>
                            <hr>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <form action="/board/qnaboard/modify" method="post">
                                <div class="form-group">
                                    <label>글번호</label>
                                    <input class="form-control" name="q_no" value="<c:out value="${qna.q_no}"/>">
                                </div>

                                <div class="form-group">
                                    <label>제목</label>
                                    <input class="form-control" name="q_title" value="<c:out value="${qna.q_title}"/>" >
                                </div>

                                <div class="form-group">
                                    <label>내용</label>
                                    <textarea class="form-control" name="q_content"><c:out value="${qna.q_content}"/></textarea>
                                </div>

                                <div class="form-group">
                                    <label>작성자</label>
                                    <input class="form-control" name="id" value="<c:out value="${qna.id}"/>">
                                </div>

                                <input type="hidden" name="pageNum" value="<c:out value="${cri.pageNum}"/>">
                                <input type="hidden" name="amount" value="<c:out value="${cri.amount}"/>">
                                <input type="hidden" name="type" value="<c:out value="${cri.type}"/>">
                                <input type="hidden" name="keyword" value="<c:out value="${cri.keyword}"/>">

                                <button data-oper="modify" type="submit" class="btn btn-danger">저장</button>
                                <button data-oper="remove" type="submit" class="btn btn-danger">삭제</button>
                                <button data-oper="list" type="submit" class="btn btn-danger">목록</button>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        <!-- /#page-wrapper -->
    </div>
    <script>
        $(document).ready(function () {
            var formObj = $("form");
            
            $('button').on("click",function (e) {

                e.preventDefault();

                var operation = $(this).data("oper");

                console.log(operation);

                if(operation === 'remove') {
                    formObj.attr("action", "/board/qnaboard/remove");
                } else if(operation === 'list') {
                    formObj.attr("action", "/board/qnaboard/list").attr("method", "get");
                    var pageNumTag = $("input[name='pageNum']").clone();
                    var amountTag = $("input[name='amount']").clone();
                    var keywordTag = $("input[name='keyword']").clone();
                    var typeTag = $("input[name='type']").clone();

                    formObj.empty();
                    formObj.append(pageNumTag);
                    formObj.append(amountTag);
                    formObj.append(keywordTag);
                    formObj.append(typeTag);
                }
                formObj.submit();
            });
            
        });
    </script>
<%@include file="../includes/footer.jsp"%>
