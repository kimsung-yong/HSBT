<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../includes/header.jsp" %>

<div class="col-lg-9">

    <div class="row">
        <div class="col-lg-12">
            <br>
            <h1 class="page-header">Tip</h1>
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
                    <div class="form-group">
                        <label>글번호</label>
                        <input class="form-control" name="t_no" value="<c:out value="${tip.t_no}"/>"
                               readonly="readonly">
                    </div>

                    <div class="form-group">
                        <label>제목</label>
                        <input class="form-control" name="t_title" value="<c:out value="${tip.t_title}"/>"
                               readonly="readonly">
                    </div>

                    <div class="form-group">
                        <label>내용</label>
                        <textarea class="form-control" name="t_content" readonly="readonly"><c:out
                                value="${tip.t_content}"/></textarea>
                    </div>

                    <div class="form-group">
                        <label>작성자</label>
                        <input class="form-control" name="id" value="<c:out value="${tip.id}"/>" readonly="readonly">
                    </div>
                    <c:if test="${tip.id == vo.id || vo.manager == 0}">
                        <button data-oper="modify" class="btn btn-dark">수정</button>
                    </c:if>
                    <button data-oper="list" class="btn btn-dark">목록</button>

                    <form id="operForm" action="board/tipboard/modify" method="get">
                        <input type="hidden" id="t_no" name="t_no" value="<c:out value="${tip.t_no}"/>">
                        <input type="hidden" name="pageNum" value="<c:out value="${cri.pageNum}"/>">
                        <input type="hidden" name="amount" value="<c:out value="${cri.amount}"/>">
                        <input type="hidden" name="type" value="<c:out value="${cri.type}"/>">
                        <input type="hidden" name="keyword" value="<c:out value="${cri.keyword}"/>">
                    </form>
                    <hr>
                </div>
            </div>
            <br>
            <div class="row" style="margin: 0">
                <div class="col-lg-12">
                    <%--                    panel--%>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <%--                            <i class="btn btn-outline-dark"><a style="font-size: 25px">reply</a></i>--%>
                            <i class="fa fa-comment fa-fw"><a style="font-size: 25px">reply</a></i>
                            <c:if test="${!empty vo.id}">
                                <button id="addReplyBtn" class="btn btn-primary btn-xs pull-right"
                                        style="padding-top: 10px">new Reply</button>
                            </c:if>
                        </div>
                        <hr>

                        <%--                        panel-heading   --%>
                        <div class="panel-body">
                            <ul class="chat">
<%--                                <li class="left clearfix" data-tr_no="12">--%>
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
                    <input class="form-control" name="tr_content" value="new reply">
                </div>
                <div class="form-group">
                    <label>ID</label>
                    <input class="form-control" name="id" value="new replyer" readonly="readonly">
                </div>
                <div class="form-group">
                    <label>Reply Date</label>
                    <input class="form-control" name="tr_regtime" value="">
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
<%--<%@include file="../includes/footer.jsp"%>--%>

<script src="${pageContext.request.contextPath}/resourcesKIM/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resourcesKIM/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="/resources/js/tipReply.js"></script>

<script>
    $(document).ready(function () {
        var operForm = $("#operForm");
        $("button[data-oper='modify']").on("click", function (e) {
            operForm.append("<input type='hidden' name='t_no' value=" + ${tip.t_no} +">");
            operForm.append("<input type='hidden' name='pageNum' value='" + ${cri.pageNum} +"'>");
            operForm.append("<input type='hidden' name=amount value='" + ${cri.amount} +"'>");
            operForm.attr("action", "/board/tipboard/modify").submit();
        });

        $("button[data-oper='list']").on("click", function (e) {
            // operForm.find("#t_no").remove();
            operForm.attr("action", "/board/tipboard/list");
            operForm.append("<input type='hidden' name='pageNum' value='" + ${cri.pageNum} +"'>");
            operForm.append("<input type='hidden' name='amount' value='" + ${cri.amount} +"'>");
            operForm.append("<input type='hidden' name='type' value='" + ${cri.type} +"'>");
            operForm.append("<input type='hidden' name='keyword' value='" + ${cri.keyword} +"'>");
            operForm.submit();
        })


    })
</script>

<script type="text/javascript">
    $(document).ready(function () {
        console.log("=======================");
        console.log("JS TEST");

        var t_noValue = '<c:out value="${tip.t_no}"/>';
        var idValue = '<c:out value="${vo.id}"/>';
        var replyUL = $(".chat");

        var modal = $(".modal");
        var modalInputTr_content = modal.find("input[name = 'tr_content']");
        var modalInputId = modal.find("input[name = 'id']");
        var modalInputTr_regtime = modal.find("input[name ='tr_regtime']");

        var modalModBtn = $("#modalModBtn");
        var modalRemoveBtn = $("#modalRemoveBtn");
        var modalRegisterBtn = $("#modalRegisterBtn");
        var modalCloseBtn = $("#modalCloseBtn");

        $("#addReplyBtn").on("click", function (e) {
            modal.find("input[name='tr_content']").val("");
            modal.find("input[name='id']").val("<c:out value="${vo.id}"/>");
            modalInputTr_regtime.closest("div").hide();
            modal.find("button[id != 'modalCloseBtn']").hide();

            modalRegisterBtn.show();

            $(".modal").modal("show");
        });

        modalRegisterBtn.on("click", function (e) {

            var tr_content = {
                tr_content: modalInputTr_content.val(),
                id: idValue,
                t_no: t_noValue
            };

            tipReplyService.add(tr_content, function (result) {
                alert(result);

                modal.find("input").val("");
                modal.modal("hide");
                showList(-1);
            });
        });

        modalModBtn.on("click", function (e) {
            var tr_content = {tr_no: modal.data("tr_no"), tr_content: modalInputTr_content.val()};
            tipReplyService.update(tr_content, function (result) {
                alert(result);
                modal.modal("hide");
                showList(pageNum);
            });
        });

        modalRemoveBtn.on("click", function (e) {
            var tr_no = modal.data("tr_no");
            tipReplyService.remove(tr_no, function (result) {
                alert(result);
                modal.modal("hide");
                showList(pageNum);
            });
        });

        modalCloseBtn.on("click", function () {
            modalInputTr_content.attr("readonly", false);
            modal.modal("hide");
        });

        $(".chat").on("click", "li", function (e) {
            var tr_no = $(this).data("tr_no");
            var voId = '<c:out value="${vo.id}"/>';
            var voM = '<c:out value="${vo.manager}"/>';
            tipReplyService.get(tr_no, function (tr_content) {
                if (tr_content.id != voId && voM != '0') {
                    modalInputTr_content.val(tr_content.tr_content).attr("readonly", "readonly");
                    modalInputId.val(tr_content.id).attr("readonly", "readonly");
                    modalInputTr_regtime.val(tipReplyService.displayTime(tr_content.tr_regtime)).attr("readonly", "readonly");
                    modal.data("tr_no", tr_content.tr_no);

                    modal.find("button[id !='modalCloseBtn']").hide();
                    $(".modal").modal("show");
                } else {
                    modalInputTr_content.val(tr_content.tr_content);
                    modalInputId.val(tr_content.id).attr("readonly", "readonly");
                    modalInputTr_regtime.val(tipReplyService.displayTime(tr_content.tr_regtime)).attr("readonly", "readonly");
                    modal.data("tr_no", tr_content.tr_no);

                    modal.find("button[id !='modalCloseBtn']").hide();
                    modalModBtn.show();
                    modalRemoveBtn.show();

                    $(".modal").modal("show");
                }

            });

            console.log(tr_no);
        });

        showList(1);

        var pageNum = 1;
        var replyPageFooter = $(".panel-footer");

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
                str += "<li class='page-item " + active + "'><a class='page-link' href='" + i + "'>" + i + "</a></li>";
            }

            if (next) {
                str += "<li class='page-item'><a class='page-link' href='" + (endNum + 1) + "'>Next</a></li>";
            }

            str += "</ul></div>";

            console.log(str);
            replyPageFooter.html(str);

        }

        function showList(page) {
            tipReplyService.getList({t_no: t_noValue, page: page || 1}, function (replyCnt, list) {

                console.log("replyCnt: " + replyCnt);
                console.log("list: " + list);
                console.log(list);

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
                    str += "<li class='left clearfix' data-tr_no='" + list[i].tr_no + "'>";
                    str += "<div><div class='header'><strong class='primary-font'>" + list[i].id + "</strong>";
                    str += "<small class='pull-right text-muted'>" + tipReplyService.displayTime(list[i].tr_regtime) + "</small></div>";
                    str += "<p>" + list[i].tr_content + "</p></div></li>"
                }
                replyUL.html(str);
                showReplyPage(replyCnt);
            });
        }

        replyPageFooter.on("click", "li a", function (e) {
            e.preventDefault();
            console.log("page click");

            var targetPageNum = $(this).attr("href");
            console.log("targetPageNum: " + targetPageNum);

            pageNum = targetPageNum;

            showList(pageNum);
        });

    });


</script>

