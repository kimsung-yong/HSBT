<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="../includes/header.jsp"/>


<div class="col-lg-9">

    <div class="row">
        <div class="col-lg-12">
            <br>
            <h1 class="page-header">공지사항</h1>
            <br>
        </div>
        <!-- /.col-lg-12 -->
    </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
<%--                            DataTables Advanced Tables--%>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="form-group">
                            <label>글번호</label> <input class="form-control" name="n_no" value="<c:out value="${notice.n_no}"/>" readonly="readonly">
                            </div>

                            <div class="form-group">
                            <label>제목</label> <input class="form-control" name="n_title" value="<c:out value="${notice.n_title}"/>" readonly="readonly">
                            </div>

                            <div class="form-group">
                            <label>내용</label>
                            <textarea class="form-control" name="content" readonly="readonly"><c:out value="${notice.n_content}" /></textarea>
                            </div>

                            <div class="form-group">
                            <label>작성자</label> <input class="form-control" name="writer" value="<c:out value="${notice.id}"/>" readonly="readonly">
                            </div>

                            <c:if test="${notice.id == vo.id}">
                                <button data-oper="modify" class="btn btn-dark">수정</button>
                            </c:if>
                            <button data-oper="list" class="btn btn-dark">목록</button>

                            <form id="operForm" action="/board/noticeboard/modify" method="get">
<%--                                <input type="hidden" name="n_no" value="${notice.n_no}">--%>
<%--                                <input type="hidden" name="pageNum" value="${cri.pageNum}">--%>
<%--                                <input type="hidden" name="type" value="${cri.type}">--%>
<%--                                <input type="hidden" name="keyword" value="${cri.keyword}">--%>

                            </form>
                            <hr>
                        </div>
                    </div>
                </div>
            </div>

    <br>
<%--    <div class="row" style="margin: 0 ">--%>
<%--        <div class="col-lg-12">--%>
<%--            &lt;%&ndash;                    panel&ndash;%&gt;--%>
<%--            <div class="panel panel-default">--%>
<%--                &lt;%&ndash;                        <div class="panel-heading">&ndash;%&gt;--%>
<%--                &lt;%&ndash;                            <i class="fa fa-comments fa-fw"></i> Reply&ndash;%&gt;--%>
<%--                &lt;%&ndash;                        </div>&ndash;%&gt;--%>

<%--                --%>
<%--                &lt;%&ndash;                     panel-heading   &ndash;%&gt;--%>
<%--                <div class="panel-body">--%>
<%--                    <ul class="chat">--%>
<%--                        <li class="left clearfix" data-br_no="12">--%>
<%--                            <div>--%>
<%--                               --%>
<%--                                <p> Good job!</p>--%>
<%--                            </div>--%>
<%--                        </li>--%>
<%--                        &lt;%&ndash;                                end reply&ndash;%&gt;--%>
<%--                    </ul>--%>
<%--                    &lt;%&ndash;                            end ul&ndash;%&gt;--%>
<%--                </div>--%>
<%--                &lt;%&ndash;                        /.panel .chat-panel&ndash;%&gt;--%>
<%--                <div class="panel-footer">--%>
<%--                </div>--%>
            </div>

        <%--                ./end row--%>





<!-- /#page-wrapper -->
<%--<div class="modal fade" id ="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">--%>
<%--    <div class="modal-dialog">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>--%>
<%--                <h4 class="modal-title" id="myModalLabel">Reply Modal</h4>--%>
<%--            </div>--%>
<%--            <div class="modal-body">--%>
<%--                <div class="form-group">--%>
<%--                    <label>Reply</label>--%>
<%--                    <input class="form-control" name="nr_content" value="new reply">--%>
<%--                </div>--%>
<%--                <div class="form-group">--%>
<%--                    <label>id</label>--%>
<%--                    <input class="form-control" name="id" value="new replyer">--%>
<%--                </div>--%>
<%--                <div class="form-group">--%>
<%--                    <label>Reply Date</label>--%>
<%--                    <input class="form-control" name="nr_regTime" value="">--%>
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

<%--<script type="text/javascript" src="/resources/js/boardReply.js"></script>--%>
<script src="${pageContext.request.contextPath}/resourcesKIM/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resourcesKIM/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script>
    $(document).ready(function () {
        // console.log(BoardReplyService);
        var operForm = $("#operForm");
        ($("button[data-oper='modify']")).on("click",function (e) {
            operForm.append("<input type='hidden' name='n_no' value="+${notice.n_no} +">");
            operForm.append("<input type='hidden' name='pageNum' value='"+${cri.pageNum} +"'>");
            operForm.append("<input type='hidden' name=amount value='"+${cri.amount} +"'>");
            operForm.attr("action","/board/noticeboard/modify").submit();
        });

        $("button[data-oper='list']").on("click",function(e) {
            // operForm.find("#bno").remove();
            operForm.attr("action","/board/noticeboard/list");
            operForm.append("<input type='hidden' name='n_no' value="+${notice.n_no} +">");
            operForm.append("<input type='hidden' name='pageNum' value='"+${cri.pageNum} +"'>");
            operForm.append("<input type='hidden' name='amount' value='"+${cri.amount} +"'>");
            operForm.append("<input type='hidden' name='type' value='"+${cri.type} +"'>");
            operForm.append("<input type='hidden' name='keyword' value='"+${cri.keyword} +"'>");
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
<%--        var replyPageFooter =$(".panel-footer");--%>

<%--        var modal = $(".modal");--%>
<%--        var modalInputBr_content = modal.find("input[name = 'br_content']");--%>
<%--        var modalInputid = modal.find("input[name = 'id']");--%>
<%--        var modalInputBr_regtime = modal.find("input[name ='br_regTime']");--%>

<%--        var modalModBtn = $("#modalModBtn");--%>
<%--        var modalRemoveBtn = $("#modalRemoveBtn");--%>
<%--        var modalRegisterBtn = $("#modalRegisterBtn");--%>
<%--        var modalCloseBtn = $("#modalCloseBtn");--%>
<%--        $("#addReplyBtn").on("click",function (e) {--%>
<%--            modal.find("input").val("");--%>
<%--            modalInputBr_regtime.closest("div").hide();--%>
<%--            modal.find("button[id != 'modalCloseBtn']").hide();--%>
<%--            // modalInputU_id.val(br_content.u_id).attr();--%>
<%--            modalRegisterBtn.show();--%>

<%--            $(".modal").modal("show");--%>
<%--        });--%>

<%--        modalRegisterBtn.on("click",function (e) {--%>

<%--            var br_content = {--%>
<%--                br_content : modalInputBr_content.val(),--%>
<%--                id : modalInputid.val(),--%>
<%--                b_no : b_noValue--%>
<%--            };--%>

<%--            BoardReplyService.add(br_content,function (result) {--%>
<%--                alert(result);--%>

<%--                modal.find("input").val("");--%>
<%--                modal.modal("hide");--%>
<%--                showList(-1);--%>
<%--            });--%>
<%--        });--%>

<%--        modalModBtn.on("click", function (e) {--%>
<%--            var br_content = {nr_no:modal.data("nr_no"), nr_content:modalInputBr_content.val()};--%>
<%--            BoardReplyService.update(br_content, function (result) {--%>
<%--                alert(result);--%>
<%--                modal.modal("hide");--%>
<%--                showList(pageNum);--%>
<%--            });--%>
<%--        });--%>

<%--        modalRemoveBtn.on("click", function (e) {--%>
<%--            var br_no = modal.data("br_no");--%>
<%--            BoardReplyService.remove(br_no, function(result) {--%>
<%--                alert(result);--%>
<%--                modal.modal("hide");--%>
<%--                showList(pageNum);--%>
<%--            });--%>
<%--        });--%>
<%--        modalCloseBtn.on("click",function (e) {--%>
<%--            modal.modal("hide");--%>
<%--        });--%>


<%--        $(".chat").on("click","li",function (e) {--%>
<%--            var br_no = $(this).data("br_no");--%>

<%--            BoardReplyService.get(br_no,function (br_content) {--%>
<%--                modalInputBr_content.val(br_content.br_content);--%>
<%--                modalInputid.val(br_content.id).attr("readonly","readonly");--%>
<%--                modalInputBr_regtime.val(BoardReplyService.displayTime(br_content.br_regTime)).attr("readonly","readonly");--%>
<%--                modal.data("br_no",br_content.br_no);--%>

<%--                modal.find("button[id !='modalCloseBtn']").hide();--%>
<%--                modalModBtn.show();--%>
<%--                modalRemoveBtn.show();--%>

<%--                $(".modal").modal("show");--%>

<%--            });--%>

<%--            console.log(br_no);--%>
<%--        });--%>
<%--        showList(1);--%>

<%--        function showList(page) {--%>
<%--            BoardReplyService.getList({b_no : b_noValue,page : page || 1}, function (replyCnt,list) {--%>

<%--                if(page == -1){--%>
<%--                    pageNum = Math.ceil(replyCnt/10.0);--%>
<%--                    showList(pageNum);--%>
<%--                    return;--%>
<%--                }--%>
<%--                var str ="";--%>
<%--                if(list == null || list.length == 0){--%>
<%--                    replyUL.html("");--%>

<%--                    return ;--%>
<%--                }--%>
<%--                for (var i = 0, len = list.length || 0; i < len; i++){--%>
<%--                    str +="<li class='left clearfix' data-br_no='" + list[i].br_no+"'>";--%>
<%--                    str +=" <div><div class='header'><strong class='primary-font'>" + list[i].id +"</strong>";--%>
<%--                    str +="<small class='pull-right text-muted'>" + BoardReplyService.displayTime(list[i].br_regTime) + "</small></div>";--%>
<%--                    str +="<p>" + list[i].br_content + "</p></div></li>";--%>
<%--                }--%>
<%--                replyUL.html(str);--%>
<%--                showReplyPage(replyCnt);--%>
<%--            });//end function--%>
<%--        } // end show List--%>

<%--        function showReplyPage(replyCnt){--%>

<%--            var endNum = Math.ceil(pageNum / 10.0) * 10;--%>
<%--            var startNum = endNum -9;--%>

<%--            var prev = startNum != 1;--%>
<%--            var next = false;--%>

<%--            if(endNum * 10 >= replyCnt){--%>
<%--                endNum = Math.ceil(replyCnt / 10.0);--%>
<%--            }--%>
<%--            if(endNum * 10 <= replyCnt){--%>
<%--                next = true;--%>
<%--            }--%>

<%--            var str = "<ul class='pagination pull-right'>";--%>

<%--            if(prev){--%>
<%--                str += "<li class='page-item'><a class='page-link' href='" + (startNum - 1) + "'>Previous</a></li>";--%>

<%--            }--%>

<%--            for( var i = startNum; i <= endNum; i++){--%>
<%--                var active = pageNum == i ? "active" : "";--%>

<%--                str+= "<li class='page-item "+active+"'><a class='page-link' href='"+i+"'>" +i+"</a></li>";--%>
<%--            }--%>

<%--            if(next){--%>
<%--                str+= "<li class='page-item'><a class='page-link' href='"+(endNum+1)+"'>Next</a></li>";--%>
<%--            }--%>

<%--            str += "</ul></div>";--%>
<%--            console.log(str);--%>

<%--            replyPageFooter.html(str);--%>
<%--        }--%>

<%--        replyPageFooter.on("click","li a",function (e) {--%>
<%--            e.preventDefault();--%>
<%--            console.log("page click");--%>

<%--            var targetPageNum = $(this).attr("href");--%>

<%--            console.log("targetPageNum:" + targetPageNum);--%>

<%--            pageNum = targetPageNum;--%>

<%--            showList(pageNum);--%>
<%--        });--%>

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
<%--    <jsp:include page="../includes/footer.jsp"/>--%>
