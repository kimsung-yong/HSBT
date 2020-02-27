<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../includes/header.jsp" %>


<div class="col-lg-9">

    <div class="row">
        <div class="col-lg-12">
            <br>
            <h1 class="page-header">Q&A</h1>
            <hr>
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
                    <%--                            table table-striped table-bordered table-hover--%>
                    <%--                            dataTables-example--%>
                    <div class="form-group">
                        <label>글번호</label>
                        <input class="form-control" name="q_no" value="<c:out value="${qna.q_no}"/>"
                               readonly="readonly">
                    </div>

                    <div class="form-group">
                        <label>제목</label>
                        <input class="form-control" name="q_title" value="<c:out value="${qna.q_title}"/>"
                               readonly="readonly">
                    </div>

                    <div class="form-group">
                        <label>내용</label>
                        <textarea class="form-control" name="q_content" readonly="readonly"><c:out
                                value="${qna.q_content}"/></textarea>
                    </div>

                    <div class="form-group">
                        <label>작성자</label>
                        <input class="form-control" name="id" value="<c:out value="${qna.id}"/>" readonly="readonly">
                    </div>
                    <c:if test="${qna.id == vo.id || vo.manager == 0}">
                        <button data-oper="modify" class="btn btn-dark">수정</button>
                    </c:if>
                    <button data-oper="list" class="btn btn-dark">목록</button>

                    <form id="operForm" action="board/qnaboard/modify" method="get">
                        <input type="hidden" name="q_no" value="${qna.q_no}">
                        <input type="hidden" name="pageNum" value="${cri.pageNum}">
                        <input type="hidden" name="amount" value="${cri.amount}">
                        <input type="hidden" name="type" value="${cri.type}">
                        <input type="hidden" name="keyword" value="${cri.keyword}">

                    </form>
                    <hr>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-lg-12">
                    <%--                    panel--%>
                    <div class="panel panel-default">
                        <%--                        <div class="panel-heading">--%>
                        <%--                            <i class="fa fa-comments fa-fw"></i> Reply--%>
                        <%--                        </div>--%>

                        <div class="panel-heading">
                            <%--                            <i class="btn btn-outline-dark"><a style="font-size: 25px">reply</a></i>--%>
                            <i class="fa fa-comment fa-fw"><a style="font-size: 25px">reply</a></i>
                            <c:if test="${!empty vo.id}">
                                <button id="addReplyBtn" class="btn btn-primary btn-xs pull-right"
                                        style="padding-top: 10px">new Reply
                                </button>
                            </c:if>
                        </div>
                        <hr>

                        <%--                     panel-heading   --%>
                        <div class="panel-body">
                            <ul class="chat">
<%--                                <li class="left clearfix" data-qr_no="12">--%>
<%--                                    <div>--%>
<%--                                        <div class="header">--%>
<%--                                            <strong class="primary-font">user00</strong>--%>
<%--                                            <small class="pull-right text-muted">2020-01-31</small>--%>
<%--                                        </div>--%>
<%--                                        <p> Good job!</p>--%>
<%--                                    </div>--%>
<%--                                </li>--%>
                                <%--                                end reply--%>
                            </ul>
                            <%--                            end ul--%>
                        </div>
                        <%--                        /.panel .chat-panel--%>
                        <div class="panel-footer">
                        </div>
                    </div>
                </div>
                <%--                ./end row--%>
            </div>
        </div>
    </div>
    <!-- /#page-wrapper -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">댓글 작성</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Reply</label>
                        <input class="form-control" name="qr_content" value="new reply">
                    </div>
                    <div class="form-group">
                        <label>ID</label>
                        <input class="form-control" name="id" value="new replyer" readonly="readonly">
                    </div>
                    <div class="form-group">
                        <label>Reply Date</label>
                        <input class="form-control" name="qr_regtime" value="">
                    </div>
                </div>
                <div class="modal-footer">
                    <button id="modalModBtn" type="button" class="btn btn-warning">Modify</button>
                    <button id="modalRemoveBtn" type="button" class="btn btn-danger">Remove</button>
                    <button id="modalRegisterBtn" type="button" class="btn btn-primary">Register</button>
                    <button id="modalCloseBtn" type="button" class="btn btn-dark">Close</button>
                </div>
                <%--              /.<div class="modal-content">  --%>
            </div>

            <%--                <div class="modal-dialog">--%>
        </div>
        <%--         /.modal   --%>

    </div>
</div>
</div>
</div>
<script type="text/javascript" src="/resources/js/qnaReply.js"></script>
<script src="${pageContext.request.contextPath}/resourcesKIM/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resourcesKIM/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script>
    $(document).ready(function () {

        var operForm = $("#operForm");

        $("button[data-oper='modify']").on("click", function (e) {
            operForm.append("<input type='hidden' name='q_no' value=" + ${qna.q_no} +">");
            operForm.append("<input type='hidden' name='pageNum' value='" + ${cri.pageNum} +"'>");
            operForm.append("<input type='hidden' name=amount value='" + ${cri.amount} +"'>");
            operForm.attr("action", "/board/qnaboard/modify").submit();
        });

        $("button[data-oper='list']").on("click", function (e) {
            // operForm.find("#q_no").remove();
            operForm.attr("action", "/board/qnaboard/list");
            operForm.append("<input type='hidden' name='pageNum' value='" + ${cri.pageNum} +"'>");
            operForm.append("<input type='hidden' name='amount' value='" + ${cri.amount} +"'>");
            operForm.append("<input type='hidden' name='type' value='" + ${cri.type} +"'>");
            operForm.append("<input type='hidden' name='keyword' value='" + ${cri.keyword} +"'>");
            operForm.submit();
        });


    });
</script>

<script type="text/javascript">
    $(document).ready(function () {
        console.log("=======================");
        console.log("JS TEST");

        var q_noValue = '<c:out value="${qna.q_no}"/>';
        var idValue = '<c:out value="${vo.id}"/>';
        var replyUL = $(".chat");

        var modal = $(".modal");
        var modalInputQr_content = modal.find("input[name = 'qr_content']");
        var modalInputId = modal.find("input[name = 'id']");
        var modalInputQr_regtime = modal.find("input[name ='qr_regtime']");

        var modalModBtn = $("#modalModBtn");
        var modalRemoveBtn = $("#modalRemoveBtn");
        var modalRegisterBtn = $("#modalRegisterBtn");
        var modalCloseBtn = $("#modalCloseBtn");

        var pageNum = 1;
        var replyPageFooter = $(".panel-footer");

        $("#addReplyBtn").on("click", function (e) {
            modal.find("input[name='qr_content']").val("");
            modal.find("input[name='id']").val("<c:out value="${vo.id}"/>");
            modalInputQr_regtime.closest("div").hide();
            modal.find("button[id != 'modalCloseBtn']").hide();

            modalRegisterBtn.show();

            $(".modal").modal("show");
        });

        modalRegisterBtn.on("click", function (e) {

            var qr_content = {
                qr_content: modalInputQr_content.val(),
                id: idValue,
                q_no: q_noValue
            };
            qnaReplyService.add(qr_content, function (result) {
                alert(result);

                modal.find("input").val("");
                modal.modal("hide");

                showList(-1);
            });
        });

        modalModBtn.on("click", function (e) {
            var qr_content = {qr_no: modal.data("qr_no"), qr_content: modalInputQr_content.val()};
            qnaReplyService.update(qr_content, function (result) {
                alert(result);
                modal.modal("hide");
                showList(pageNum);
            });
        });

        modalRemoveBtn.on("click", function (e) {
            var qr_no = modal.data("qr_no");
            qnaReplyService.remove(qr_no, function (result) {
                alert(result);
                modal.modal("hide");
                showList(pageNum);
            });
        });

        modalCloseBtn.on("click", function (e) {
            modalInputQr_content.attr("readonly", false);
            modal.modal("hide");
        });

        $(".chat").on("click", "li", function (e) {
            var qr_no = $(this).data("qr_no");
            var voId = '<c:out value="${vo.id}"/>';
            var voM = '<c:out value="${vo.manager}"/>';
            qnaReplyService.get(qr_no, function (qr_content) {
                if (qr_content.id != voId && voM != '0') {
                    modalInputQr_content.val(qr_content.qr_content).attr("readonly", "readonly");
                    modalInputId.val(qr_content.id).attr("readonly", "readonly");
                    modalInputQr_regtime.val(qnaReplyService.displayTime(qr_content.qr_regtime)).attr("readonly", "readonly");
                    modal.data("qr_no", qr_content.qr_no);

                    modal.find("button[id !='modalCloseBtn']").hide();

                    $(".modal").modal("show");
                } else {
                    modalInputQr_content.val(qr_content.qr_content);
                    modalInputId.val(qr_content.id).attr("readonly", "readonly");
                    modalInputQr_regtime.val(qnaReplyService.displayTime(qr_content.qr_regtime)).attr("readonly", "readonly");
                    modal.data("qr_no", qr_content.qr_no);

                    modal.find("button[id !='modalCloseBtn']").hide();
                    modalModBtn.show();
                    modalRemoveBtn.show();

                    $(".modal").modal("show");
                }

            });

            console.log(qr_no);
        });

        showList(1);

        function showList(page) {
            qnaReplyService.getList({q_no: q_noValue, page: page || 1}, function (replyCnt, list) {
                if (page == -1) {
                    pageNum = Math.ceil(replyCnt / 10.0);
                    showList(pageNum);
                    return;
                }

                var str = "";

                if (list == null || list.length == 0) {
                    replyUL.html("");
                    return;
                }
                for (var i = 0, len = list.length || 0; i < len; i++) {
                    str += "<li class='left clearfix' data-qr_no='" + list[i].qr_no + "'>";
                    str += "<div><div class='header'><strong class='primary-font'>" + list[i].id + "</strong>";
                    str += "<small class='pull-right text-muted'>" + qnaReplyService.displayTime(list[i].qr_regtime) + "</small></div>";
                    str += "<p>" + list[i].qr_content + "</p></div></li>"
                }
                replyUL.html(str);
                showReplyPage(replyCnt);
            });
        }

        function showReplyPage(replyCnt) {
            var endNum = Math.ceil(pageNum / 10.0) * 10;
            var startNum = endNum - 9;
            var prev = startNum != 1;
            var next = false;

            if (endNum * 10 >= replyCnt) {
                endNum = Math.ceil(replyCnt / 10.0);
            }
            if (endNum * 10 < replyCnt) {
                next = true;
            }

            var str = "<ul class='pagination pull-right'>";

            if (prev) {
                str += "<li class='page-item'><a class='page-link' href='" + (startNum - 1) + "'>Previous</a></li>";
            }

            for (var i = startNum; i <= endNum; i++) {
                var active = pageNum == i ? "active" : "";
                str += "<li class='page-item " + active + " '><a class='page-link' href='" + i + "'>" + i + "</a></li>";
            }

            if (next) {
                str += "<li class='page-item'><a class='page-link' href='" + (endNum + 1) + "'>Next</a></li>";
            }

            str += "</ul></div>";

            replyPageFooter.html(str);
        }

        replyPageFooter.on("click", "li a", function (e) {
            e.preventDefault();

            var targetPageNum = $(this).attr("href");
            pageNum = targetPageNum;
            showList(pageNum);
        })

    });


</script>
<%--<%@include file="../includes/footer.jsp"%>--%>
