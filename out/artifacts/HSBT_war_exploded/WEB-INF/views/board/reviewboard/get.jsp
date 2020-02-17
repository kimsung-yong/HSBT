<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../includes/header.jsp"%>


             <div class="row">
                <div class="col-lg-12">
                    <br>
                    <h1 class="page-header">Review</h1>
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
                            <h3>게시글</h3>
                            <hr>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body" style="width: 600px">
                            <div class="form-group">
                            <label>글번호</label> <input size="40" class="form-control" name="r_no" value="<c:out value="${review.r_no}"/>" readonly="readonly">
                            </div>

                            <div class="form-group">
                            <label>제목</label> <input class="form-control" name="r_title" value="<c:out value="${review.r_title}"/>" readonly="readonly">
                            </div>

                            <div class="form-group">
                            <label>내용</label>
                            <textarea class="form-control" name="r_content" readonly="readonly"><c:out value="${review.r_content}" /></textarea>
                            </div>

                            <div class="form-group">
                            <label>작성자</label> <input class="form-control" name="id" value="<c:out value="${review.id}"/>" readonly="readonly">
                            </div>

                            <button data-oper="modify" class="btn btn-default">수정</button>
                            <button data-oper="list" class="btn btn-info">목록</button>

                            <form id="operForm" action="board/reviewboard/modify" method="get">
                                <input type="hidden" id="r_no" name="r_no" value="<c:out value="${review.r_no}"/>">
                                <input type="hidden" name="pageNum" value="<c:out value="${cri.pageNum}"/>">
                                <input type="hidden" name="amount" value="<c:out value="${cri.amount}"/>">
                                <input type="hidden" name="type" value="<c:out value="${cri.type}"/>">
                                <input type="hidden" name="keyword" value="<c:out value="${cri.keyword}"/>">
                            </form>
                            <hr>
                        </div>
                    </div>
                <%--</div>
            </div>--%>
            <div class="row">
                <div class="col-lg-12">
<%--                    panel--%>
                    <div class="panel panel-default">
<%--                        <div class="panel-heading">--%>
<%--                            <i class="fa fa-comments fa-fw"></i> Reply--%>
<%--                        </div>--%>

                         <div class="panel-heading">
                            <%--<i class="fa fa-comments fa-fw"></i> 댓글--%>
                            <button id="addReplyBtn" class="btn btn-primary btn-xs pull-right">댓글추가</button>
                         </div>

<%--                     panel-heading   --%>
                        <div class="panel-body">
                            <ul class="chat">
                                <li class="left clearfix" data-rno="12">
                                    <div>
                                        <div class="header">
                                            <strong class="primary-font">user00</strong>
                                            <small class="pull-right text-muted">2020-01-31</small>
                                        </div>
                                        <p> Good job!</p>
                                    </div>
                                </li>
<%--                                end reply--%>
                            </ul>
<%--                            end ul--%>
                        </div>
<%--                        /.panel .chat-panel--%>
                    </div>
                </div>
<%--                ./end row--%>
            </div>
                    </div></div>
        <!-- /#page-wrapper -->
        <div class="modal fade" id ="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">Reply Modal</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Reply</label>
                            <input class="form-control" name="reply" value="new reply">
                        </div>
                        <div class="form-group">
                            <label>Replyer</label>
                            <input class="form-control" name="replyer" value="new replyer">
                        </div>
                        <div class="form-group">
                            <label>Reply Date</label>
                            <input class="form-control" name="replyDate" value="">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button id="modalModBtn" type="button" class="btn btn-warning">Modify</button>
                        <button id="modalRemoveBtn" type="button" class="btn btn-danger">Remove</button>
                        <button id="modalRegisterBtn" type="button" class="btn btn-primary">Register</button>
                        <button id="modalCloseBtn" type="button" class="btn btn-default">Close</button>
                    </div>
                    <%--              /.<div class="modal-content">  --%>
                </div>

<%--                <div class="modal-dialog">--%>
            </div>
<%--         /.modal   --%>
            </div>
        </div>
    </div>
<script type="text/javascript" ></script>
<script>
    $(document).ready(function () {
        var operForm = $("#operForm");
        ($("button[data-oper='modify']")).on("click",function (e) {
            <%--operForm.append("<input type='hidden' name='bno' value="+${board.bno} +">");--%>
            <%--operForm.append("<input type='hidden' name='pageNum' value='"+${cri.pageNum} +"'>");--%>
            <%--operForm.append("<input type='hidden' name=amount value='"+${cri.amount} +"'>");--%>
            operForm.attr("action","/board/reviewboard/modify").submit();
        });

        $("button[data-oper='list']").on("click",function(e) {
            // operForm.find("#bno").remove();
            operForm.attr("action","/board/reviewboard/list");
            <%--operForm.append("<input type='hidden' name='pageNum' value='"+${cri.pageNum} +"'>");--%>
            <%--operForm.append("<input type='hidden' name='amount' value='"+${cri.amount} +"'>");--%>
            <%--operForm.append("<input type='hidden' name='type' value='"+${cri.type} +"'>");--%>
            <%--operForm.append("<input type='hidden' name='keyword' value='"+${cri.keyword} +"'>");--%>
            operForm.submit();
    })

        
    })
</script>

<script type="text/javascript">
    $(document).ready(function () {
        console.log("=======================");
        console.log("JS TEST");

        var bnoValue = '<c:out value="${board.bno}"/>';
        var replyUL = $(".chat");
        var modal = $(".modal");
        var modalInputReply = modal.find("input[name = 'reply']");
        var modalInputReplyer = modal.find("input[name = 'replyer']");
        var modalInputReplyDate = modal.find("input[name ='replyDate']");

        var modalModBtn = $("#modalModBtn");
        var modalRemoveBtn = $("#modalRemoveBtn");
        var modalRegisterBtn = $("#modalRegisterBtn");
        $("#addReplyBtn").on("click",function (e) {
            modal.find("input").val("");
            modalInputReplyDate.closest("div").hide();
            modal.find("button[id != 'modalCloseBtn']").hide();

            modalRegisterBtn.show();

            $(".modal").modal("show");
        });
        modalRegisterBtn.on("click",function (e) {

            var reply = {reply : modalInputReply.val(),
                        replyer : modalInputReplyer.val(),
                        bno : bnoValue
            };
            replyService.add(reply,function (result) {
                alert(result);

                modal.find("input").val("");
                modal.modal("hide");
                showList(1);
            })
        });
        $(".chat").on("click","li",function (e) {
            var rno = $(this).data("rno");

            replyService.get(r_no,function (reply) {
                modalInputReply.val(reply.reply);
                modalInputReplyer.val(reply.replyer);
                modalInputReplyDate.val(replyService.displayTime(reply.replyDate)).attr("readonly","readonly");
                modal.data("rno","reply.rno");

                modal.find("button[id !='modalCloseBtn']").hide();
                modalModBtn.show();
                modalRemoveBtn.show();

                $(".modal").modal("show");

            });

            console.log(rno);
        });

        showList(1);

        

        function showList(page) {
            replyService.getList({bno:bnoValue,page: page}, function (list) {

                var str = "";
                if(list == null || list.length == 0){
                    replyUL.html("");

                    return;
                }
                for(var i=0,len = list.length || 0; i < len; i++){
                    str += "<li class='left clearfix' data-rno='"+list[i].rno+"'>";
                    str += "<div><div class='header'><strong class='primary-font'>"+ list[i].replyer+"</strong>";
                    str += "<small class='pull-right text-muted'>" +replyService.displayTime(list[i].replyDate)+"</small></div>";
                    str += "<p>" + list[i].reply+"</p></div></li>"
                }
                replyUL.html(str);
            });
        }

    //     replyService.add(
    //         {reply:"JS TEST", replyer:"tester", bno:bnoValue},
    //         function (result) {
    //             alert("Result :" + result);
    //         }
    //         );
    //     replyService.getList({bno:bnoValue, page:1},function (list) {
    //         for(var i = 0, len =list.length||0; i < len; i++){
    //             console.log(list[i]);
    //         }
    //     });
    //
    //     replyService.remove(49, function (count) {
    //         console.log(count);
    //
    //         if(count === "success"){
    //             alert("removed");
    //         }
    //     },function (err) {
    //         alert("error");
    //         }
    //     )
    //
    //     replyService.update({
    //         rno :50,
    //         bno : bnoValue,
    //         reply : "Modifyed Reply..."
    //     },function (result) {
    //         alert("수정완료");
    //     });
    //
    //     replyService.get(49, function (data) {
    //         console.log(data)
    //     })


    });


</script>
<%@include file="../includes/footer.jsp"%>
