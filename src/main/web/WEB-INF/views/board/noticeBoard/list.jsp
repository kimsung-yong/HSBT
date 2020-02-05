<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/WEB-INF/views/includes/header.jsp" %>

<jsp:include page="/WEB-INF/views/includes/header.jsp"/>

<body id="page-top">
<header class="masthead">
    <div class="rows">
        <div class="col-lg-12">
            <h1 class="page-header">Tables</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="rows">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    DataTables Advanced Tables
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <%--                            table table-striped table-bordered table-hover--%>
                    <%--                            dataTables-example--%>
                    <table width="100%" class="table table-striped table-bordered table-hover" style="text-align: center">
                        <thead>
                        <tr>
                            <th>글번호</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>작성일</th>
                            <th>수정일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="board">
                            <tr>
                                <td><c:out value="${board.bno}"/></td>
                                    <%--                                            /board/get?bno=<c:out value="${board.bno}"/> --%>
                                <td><a id="detailPage" href="${board.bno}">
                                    <c:out value="${board.title}"/></a></td>
                                <td><c:out value="${board.writer}"/></td>
                                <td><fmt:formatDate value="${board.regdate}" pattern="yyyy-MM-dd"/></td>
                                <td><fmt:formatDate value="${board.updateDate}" pattern="yyyy-MM-dd"/></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                        <div class="pull-right">
                            <ul class="pagination">
                                <c:if test="${pageMaker.prev}">
                                    <li class="paginate_button previous"><a href="${pageMaker.realStart}">◀◀</a></li>
                                </c:if>
                                <c:if test="${pageMaker.prev}">
                                    <li class="paginate_button previous"><a href="${pageMaker.startPage -10}">◀</a></li>
                                </c:if>
                                <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                                    <%--                                            ${pageMaker.cri.pageNum = num ? "active":""}--%>
                                    <%--                                        ${pageMaker.cri.pageNum == num ? "active" : ""}--%>
                                    <%--                                            /board/list?pageNum=${num}--%>
                                    <li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":""}" style="border-color: white">
                                        <a href="${num}" style="color: white">${num}</a>
                                    </li>
                                </c:forEach>
                                <c:if test="${pageMaker.next}">
                                    <li class="paginate_button next">
                                        <a href="${pageMaker.endPage +1}" >▶</a>
                                    </li>
                                </c:if>
                                <c:if test="${pageMaker.next}">
                                    <li class="paginate_button next">
                                        <a href="${pageMaker.realEnd}">▶▶</a>
                                    </li>
                                </c:if>
                            </ul>

                        </div>
                    <div class="rows" style="text-align: center">
                        <div class="col-lg-12">
                            <form id="searchForm" action="/board/list" method="get">
                                <select name="type">
                                    <option value="" <c:out value="${pageMaker.cri.type == null ?'selected' : ''}"/> >
                                        --
                                    </option>
                                    <option value="T" <c:out value="${pageMaker.cri.type eq 'T' ?'selected' : ''}"/>>
                                        제목
                                    </option>
                                    <option value="C" <c:out value="${pageMaker.cri.type eq 'C' ?'selected' : ''}"/>>
                                        내용
                                    </option>
                                    <option value="C" <c:out value="${pageMaker.cri.type eq 'W' ?'selected' : ''}"/>>
                                        작성자
                                    </option>
                                    <option value="TC" <c:out value="${pageMaker.cri.type eq 'TC' ?'selected' : ''}"/>>
                                        제목 내용
                                    </option>
                                    <option value="TW" <c:out value="${pageMaker.cri.type eq 'TW' ?'selected' : ''}"/>>
                                        제목 작성자
                                    </option>
                                    <option value="TWC" <c:out
                                            value="${pageMaker.cri.type eq 'TWC' ?'selected' : ''}"/>>제목 내용 작성자
                                    </option>
                                </select>
                                <input type="text" name="keyword" value="${pageMaker.cri.keyword}"/>
                                <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
                                <input type="hidden" name="amount" value="${pageMaker.cri.amount}">
                                <button class="btn btn-default">검색</button>
                            </form>
                        </div>

                        <form id="actionForm" action="/board/list" method="get">
                            <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
                            <input type="hidden" name="amount" value="${pageMaker.cri.amount}">
                            <input type="hidden" name="type" value='<c:out value="${pageMaker.cri.type}"/>'>
                            <input type="hidden" name="keyword" value='<c:out value="${pageMaker.cri.keyword}"/>'>
                        </form>
                    </div>


                    <button type="button" class="btn btn-default" style="float: left" onclick="regloc()">글작성</button>
                    <!-- Modal -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        &times;
                                    </button>
                                    <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                                </div>
                                <div class="modal-body">
                                    처리가 완료되었습니다
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
                </div>
            </div>
        </div>
    </div>
    <!-- /#page-wrapper -->

    </div>
    <script>
        function regloc() {
            location.href="/board/reg";
        }

        $(document).ready(function () {
            var result = '<c:out value="${result}"/>';

            checkModal(result);

            history.replaceState({},null,null);
            function checkModal(result) {
                if(result === '' || history.state){
                    return;
                }
                if(parseInt(result) > 0){
                    $(".modal-body").html("게시글" + parseInt(result) + "번이 등록되었습니다");
                }

                $("#myModal").modal("show");
            }
            var actionForm = $("#actionForm");
            var searchForm = $("#searchForm");

            $(".paginate_button a").on("click",function (e) {
                e.preventDefault();

                console.log("click");

                searchForm.find("input[name='pageNum']").val($(this).attr("href"));
                searchForm.submit();
            });

            $("a#detailPage").on("click",function (e) {
                e.preventDefault();
                console.log("글클릭");
                actionForm.attr("action","/board/get");

                actionForm.append("<input type='hidden' name='bno' value='" + $(this).attr("href")+ "'>");
                actionForm.submit();
            });

            $("#searchForm button").on("click",function (e) {

                if(!searchForm.find("option:selected").val()){
                    alert("검색종류를 선택하세요");
                    return false;
                }
                if(!searchForm.find("input[name='keyword']").val()){
                    alert("키워드를 입력하세요");
                    return false;
                }
                searchForm.find("input[name='pageNum']").val("1");
                e.preventDefault();
                searchForm.submit();
            })

        });
    </script>
</header>


<jsp:include page="/WEB-INF/views/includes/footer.jsp"/>
