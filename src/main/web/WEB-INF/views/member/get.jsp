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
                    <div class="form-group">
                        <label>아이디</label> <input class="form-control" name="id"
                                                  value="<c:out value="${list.id}"/>" readonly="readonly">
                    </div>

                    <div class="form-group">
                        <label>비밀번호</label> <input type="password" class="form-control" name="pw"
                                                   value="<c:out value="${list.pw}"/>" readonly="readonly">
                    </div>

                    <div class="form-group">
                        <label>이름</label>
                        <input class="form-control" name="name" value="<c:out value="${list.name}"/>"
                               readonly="readonly">
                    </div>

                    <div class="form-group">
                        <label>휴대폰 번호</label>
                        <input class="form-control" name="phone" value="<c:out value="${list.phone}"/>"
                               readonly="readonly">
                    </div>
                    <div class="form-group">
                        <label>주소</label>
                        <input class="form-control" name="address" value="<c:out value="${list.address}"/>"
                               readonly="readonly">
                    </div>
                    <div class="form-group">
                        <label>관리자</label>
                        <input class="form-control" name="manager" value="<c:out value="${list.manager}"/>"
                               readonly="readonly">
                    </div>
                    <button data-oper="modify" class="btn btn-dark">수정</button>
                    <button data-oper="list" class="btn btn-dark">목록</button>

                    <form id="operForm" action="/member/modify" method="get">
<%--                        <input type="hidden" name="id" value="${list.id}">--%>
<%--                        <input type="hidden" name="pageNum" value="${cri.pageNum}">--%>
<%--                        <input type="hidden" name="type" value="${cri.type}">--%>
<%--                        <input type="hidden" name="keyword" value="${cri.keyword}">--%>

                    </form>
                    <hr>
                </div>
            </div>
        </div>
    </div>

    <br>
    <div class="row" style="margin: 0 ">
        <div class="col-lg-12">
            <%--                    panel--%>
            <div class="panel panel-default">
                <%--                        <div class="panel-heading">--%>
                <%--                            <i class="fa fa-comments fa-fw"></i> Reply--%>
                <%--                        </div>--%>

<%--                <div class="panel-heading">--%>
<%--                    &lt;%&ndash;                            <i class="btn btn-outline-dark"><a style="font-size: 25px">reply</a></i>&ndash;%&gt;--%>
<%--                    <i class="fa fa-comment fa-fw"><a style="font-size: 25px">reply</a></i>--%>
<%--                    <button id="addReplyBtn" class="btn btn-primary btn-xs pull-right" style="padding-top: 10px">new--%>
<%--                        Reply--%>
<%--                    </button>--%>
<%--                </div>--%>
<%--                <hr>--%>
                <%--                     panel-heading   --%>
<%--                <div class="panel-body">--%>
<%--                    <ul class="chat">--%>
<%--                        <li class="left clearfix" data-br_no="12">--%>
<%--                            <div>--%>
<%--                                <div class="header">--%>
<%--                                    <strong class="primary-font">user00</strong>--%>
<%--                                    <small class="pull-right text-muted">2020-01-31</small>--%>
<%--                                </div>--%>
<%--                                <p> Good job!</p>--%>
<%--                            </div>--%>
<%--                        </li>--%>
<%--                        &lt;%&ndash;                                end reply&ndash;%&gt;--%>
<%--                    </ul>--%>
<%--                    &lt;%&ndash;                            end ul&ndash;%&gt;--%>
<%--                </div>--%>
<%--                &lt;%&ndash;                        /.panel .chat-panel&ndash;%&gt;--%>
                <div class="panel-footer">
                </div>
            </div>
        </div>
        <%--                ./end row--%>
    </div>
</div>
</div>


<!-- /#page-wrapper -->
<%--<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">--%>
<%--    <div class="modal-dialog">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>--%>
<%--                <h4 class="modal-title" id="myModalLabel">Reply Modal</h4>--%>
<%--            </div>--%>
<%--            <div class="modal-body">--%>
<%--                <div class="form-group">--%>
<%--                    <label>Reply</label>--%>
<%--                    <input class="form-control" name="br_content" value="new reply">--%>
<%--                </div>--%>
<%--                <div class="form-group">--%>
<%--                    <label>id</label>--%>
<%--                    <input class="form-control" name="id" value="new replyer">--%>
<%--                </div>--%>
<%--                <div class="form-group">--%>
<%--                    <label>Reply Date</label>--%>
<%--                    <input class="form-control" name="br_regTime" value="">--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="modal-footer">--%>
<%--                <button id="modalModBtn" type="button" class="btn btn-warning">Modify</button>--%>
<%--                <button id="modalRemoveBtn" type="button" class="btn btn-danger">Remove</button>--%>
<%--                <button id="modalRegisterBtn" type="button" class="btn btn-primary">Register</button>--%>
<%--                <button id="modalCloseBtn" type="button" class="btn btn-default">Close</button>--%>
<%--            </div>--%>
<%--            &lt;%&ndash;              /.<div class="modal-content">  &ndash;%&gt;--%>
<%--        </div>--%>

<%--        &lt;%&ndash;                <div class="modal-dialog">&ndash;%&gt;--%>
<%--    </div>--%>
<%--    &lt;%&ndash;         /.modal   &ndash;%&gt;--%>
<%--</div>--%>
</div>

<script type="text/javascript" src="/resources/js/boardReply.js"></script>
<script src="${pageContext.request.contextPath}/resourcesKIM/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resourcesKIM/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script>
    $(document).ready(function () {
        var operForm = $("#operForm");
        ($("button[data-oper='modify']")).on("click", function (e) {
            var listId = '<c:out value="${list.id}"/>'
            operForm.append("<input type='hidden' name='id' value='" + listId +"'>");
            operForm.append("<input type='hidden' name='pageNum' value='" + ${cri.pageNum} +"'>");
            operForm.append("<input type='hidden' name='amount' value='" + ${cri.amount} +"'>");
            operForm.attr("action", "/member/modify").submit();
        });

        $("button[data-oper='list']").on("click", function (e) {
            // operForm.find("#bno").remove();
            operForm.attr("action", "/member/list");
            operForm.append("<input type='hidden' name='pageNum' value='" + ${cri.pageNum} +"'>");
            operForm.append("<input type='hidden' name='amount' value='" + ${cri.amount} +"'>");
            operForm.append("<input type='hidden' name='type' value='" + ${cri.type} +"'>");
            operForm.append("<input type='hidden' name='keyword' value='" + ${cri.keyword} +"'>");
            operForm.submit();
        })


    })
</script>

<%--<script type="text/javascript">--%>
<%--    $(document).ready(function () {--%>
<%--        console.log("=======================");--%>
<%--        console.log("JS TEST");--%>

<%--        var b_noValue = '<c:out value="${board.b_no}"/>';--%>
<%--        var replyUL = $(".chat");--%>

<%--        var pageNum = 1;--%>
<%--        var replyPageFooter = $(".panel-footer");--%>

<%--        var modal = $(".modal");--%>
<%--        var modalInputBr_content = modal.find("input[name = 'br_content']");--%>
<%--        var modalInputid = modal.find("input[name = 'id']");--%>
<%--        var modalInputBr_regtime = modal.find("input[name ='br_regTime']");--%>

<%--        var modalModBtn = $("#modalModBtn");--%>
<%--        var modalRemoveBtn = $("#modalRemoveBtn");--%>
<%--        var modalRegisterBtn = $("#modalRegisterBtn");--%>
<%--        var modalCloseBtn = $("#modalCloseBtn");--%>
<%--        $("#addReplyBtn").on("click", function (e) {--%>
<%--            modal.find("input").val("");--%>
<%--            modalInputBr_regtime.closest("div").hide();--%>
<%--            modal.find("button[id != 'modalCloseBtn']").hide();--%>
<%--            // modalInputU_id.val(br_content.u_id).attr();--%>
<%--            modalRegisterBtn.show();--%>

<%--            $(".modal").modal("show");--%>
<%--        });--%>

<%--        modalRegisterBtn.on("click", function (e) {--%>

<%--            var br_content = {--%>
<%--                br_content: modalInputBr_content.val(),--%>
<%--                id: modalInputid.val(),--%>
<%--                b_no: b_noValue--%>
<%--            };--%>

<%--            BoardReplyService.add(br_content, function (result) {--%>
<%--                alert(result);--%>

<%--                modal.find("input").val("");--%>
<%--                modal.modal("hide");--%>
<%--                showList(-1);--%>
<%--            });--%>
<%--        });--%>

<%--        modalModBtn.on("click", function (e) {--%>
<%--            var br_content = {br_no: modal.data("br_no"), br_content: modalInputBr_content.val()};--%>
<%--            BoardReplyService.update(br_content, function (result) {--%>
<%--                alert(result);--%>
<%--                modal.modal("hide");--%>
<%--                showList(pageNum);--%>
<%--            });--%>
<%--        });--%>

<%--        modalRemoveBtn.on("click", function (e) {--%>
<%--            var br_no = modal.data("br_no");--%>
<%--            BoardReplyService.remove(br_no, function (result) {--%>
<%--                alert(result);--%>
<%--                modal.modal("hide");--%>
<%--                showList(pageNum);--%>
<%--            });--%>
<%--        });--%>
<%--        modalCloseBtn.on("click", function (e) {--%>
<%--            modal.modal("hide");--%>
<%--        });--%>


<%--        $(".chat").on("click", "li", function (e) {--%>
<%--            var br_no = $(this).data("br_no");--%>

<%--            BoardReplyService.get(br_no, function (br_content) {--%>
<%--                modalInputBr_content.val(br_content.br_content);--%>
<%--                modalInputid.val(br_content.id).attr("readonly", "readonly");--%>
<%--                modalInputBr_regtime.val(BoardReplyService.displayTime(br_content.br_regTime)).attr("readonly", "readonly");--%>
<%--                modal.data("br_no", br_content.br_no);--%>

<%--                modal.find("button[id !='modalCloseBtn']").hide();--%>
<%--                modalModBtn.show();--%>
<%--                modalRemoveBtn.show();--%>

<%--                $(".modal").modal("show");--%>

<%--            });--%>

<%--            console.log(br_no);--%>
<%--        });--%>
<%--        showList(1);--%>

<%--        function showList(page) {--%>
<%--            BoardReplyService.getList({b_no: b_noValue, page: page || 1}, function (replyCnt, list) {--%>

<%--                if (page == -1) {--%>
<%--                    pageNum = Math.ceil(replyCnt / 10.0);--%>
<%--                    showList(pageNum);--%>
<%--                    return;--%>
<%--                }--%>
<%--                var str = "";--%>
<%--                if (list == null || list.length == 0) {--%>
<%--                    replyUL.html("");--%>

<%--                    return;--%>
<%--                }--%>
<%--                for (var i = 0, len = list.length || 0; i < len; i++) {--%>
<%--                    str += "<li class='left clearfix' data-br_no='" + list[i].br_no + "'>";--%>
<%--                    str += " <div><div class='header'><strong class='primary-font'>" + list[i].id + "</strong>";--%>
<%--                    str += "<small class='pull-right text-muted'>" + "</small></div>";--%>
<%--                    str += "<p>" + list[i].br_content + "</p></div></li>";--%>
<%--                }--%>
<%--                replyUL.html(str);--%>

<%--            });//end function--%>
<%--        } // end show List--%>



<%--        //저장--%>
<%--        // BoardReplyService.add(--%>
<%--        //     {br_content : "js test", u_id : "as", b_no:b_noValue}--%>
<%--        //     ,--%>
<%--        //     function (result) {--%>
<%--        //         alert("Result : " +result);--%>
<%--        //     }--%>
<%--        // );--%>
<%--        //목록--%>
<%--        // BoardReplyService.getList({b_no:b_noValue, page : 1}, function (list) {--%>
<%--        //--%>
<%--        //     for(var i = 0, len = list.length || 0; i < len; i ++){--%>
<%--        //         console.log(list[i]);--%>
<%--        //     }--%>
<%--        // })--%>
<%--        //삭제--%>
<%--        // BoardReplyService.remove(3,function (count) {--%>
<%--        //     console.log(count);--%>
<%--        //--%>
<%--        //     if(count === "success"){--%>
<%--        //         alert("remove");--%>
<%--        //     }--%>
<%--        // }, function (err) {--%>
<%--        //     alert("error");--%>
<%--        //--%>
<%--        // });--%>
<%--        //수정--%>
<%--        // BoardReplyService.update({--%>
<%--        //     br_no : 4,--%>
<%--        //     b_no : b_noValue,--%>
<%--        //     br_content : "수정 리플이다"--%>
<%--        // }, function (result) {--%>
<%--        //     alert("수정완료");--%>
<%--        // });--%>
<%--        //특정리플 조회--%>
<%--        // BoardReplyService.get(5,function (data) {--%>
<%--        //     console.log(data);--%>
<%--        // });--%>
<%--    });--%>


</script>
<%--<%@include file="/WEB-INF/views/board/includes/footer.jsp"%>--%>
