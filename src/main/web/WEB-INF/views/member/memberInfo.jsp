<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<jsp:include page="../includeslogin/header.jsp"/>
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
    #estList {
        width: 100%;
        border-top: 1px solid #444444;
        border-collapse: collapse;
    }
    #estList th, #estList td {
        border-bottom: 1px solid #444444;
        padding: 20px;
    }
    input[type='checkbox']{
        margin-left: 50px;
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
                    <button type="button" data-toggle="modal" data-target="#infoModal" class="btn btn-dark">수정</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="button" data-toggle="modal" data-target="#delModal" class="btn btn-danger">탈퇴</button>
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
                    <input type="text" class="form-control" data-id="${vo.id}" value="<c:out value="${vo.id}"/>" readonly="readonly"
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
            <%--  /.<div class="modal-content">  --%>
        </div>
        <%-- <div class="modal-dialog">--%>
    </div>
    <%--         /.infoModal   --%>
</div>
<%--/.delModal--%>
<div class="modal fade" id ="delModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">회원 탈퇴</h4>
            </div>
            <div class="modal-body">
                <h5>탈퇴를 원하시면 비밀번호를 입력해주십시오.</h5>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="비밀번호"
                           name="pw" maxlength="20">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="비밀번호 확인"
                           name="pwd" maxlength="20">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" id="delBtn" class="btn btn-danger">탈퇴</button>
                <button type="button" data-dismiss="modal" class="btn btn-dark">취소</button>
            </div>
            <%--              /.<div class="modal-content">  --%>
        </div>
        <%--                <div class="modal-dialog">--%>
    </div>
    <%--         /.delModal   --%>
</div>
<%--estModal--%>
<div class="modal fade" id ="estModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="max-width:100%;width:auto;display:table">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">${vo.name}님의 견적 신청 내역</h4>
            </div>
            <div class="modal-body">
                <div id="estMod">
                <table id="estList">
                    <tr>
                        <th>견적신청번호</th>
                        <th>주소</th>
                        <th>면적</th>
                        <th>예산</th>
                        <th>시공항목</th>
                        <th>문의사항</th>
                        <th>신청날짜</th>
                    </tr>
                    <tr data-e_no="1">
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
            </div>
            <div class="modal-footer">
                <button type="button" data-dismiss="modal" class="btn btn-dark">닫기</button>
            </div>
            <%--              /.<div class="modal-content">  --%>
        </div>
        <%--                <div class="modal-dialog">--%>
    </div>
    <%--         /.estModal   --%>
</div>
<div class="modal fade" id ="modModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">견적신청사항 수정</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label>견적신청번호</label>
                    <input class="form-control" name="e_no" value="" readonly="readonly">
                </div>
                <div class="form-group">
                    <label>주소</label>
                    <input class="form-control" name="e_address" value="">
                </div>
                <div class="form-group">
                    <label>면적</label>
                    <input class="form-control onlyNo" name="e_area" value="">
                </div>
                <div class="form-group">
                    <label>예산</label>
                    <input class="form-control onlyNo" name="e_price" value="">
                </div>
                <div class="form-group">
                    <label>시공항목</label>
                    <div class="form-control" style="border-color: white;text-align: center">
                        <input type="checkbox" name="e_construction" value="tile">타일
                        <input type="checkbox" name="e_construction" value="wallpaper">벽지
                        <input type="checkbox" name="e_construction" value="window">창호
                        <input type="checkbox" name="e_construction" value="paint">페인트
                    </div>
                </div>
                <div class="form-group">
                    <label>문의사항</label>
                    <input class="form-control" name="e_content" value="">
                </div>
                <div class="form-group">
                    <label>신청날짜</label>
                    <input class="form-control" name="e_regtime" value="">
                </div>
            </div>
            <div class="modal-footer">
                <button id="mModalModBtn" type="button" class="btn btn-warning">수정</button>
                <button id="mModalRemoveBtn" type="button" class="btn btn-danger">삭제</button>
                <button id="modalCloseBtn" type="button" data-dismiss="modal" class="btn btn-dark">닫기</button>
            </div>
            <%--              /.<div class="modal-content">  --%>
        </div>
        <%--                <div class="modal-dialog">--%>
    </div>
    <%--         /.modal   --%>
</div>
</body>
<script type="text/javascript" src="/resources/js/userNoh.js"></script>
<script type="text/javascript" src="/resources/js/estimate.js"></script>
<script type="text/javascript">
$(function () {
    var mModal = $("#modModal");
    var idValue = '<c:out value="${vo.id}"/>';
    var estMod = $("#estMod");

    var mModalModBtn = $("#mModalModBtn");
    var mModalRemoveBtn = $("#mModalRemoveBtn");

    var modalInputNo = mModal.find("input[name = 'e_no']");
    var modalInputAddress = mModal.find("input[name = 'e_address']");
    var modalInputArea = mModal.find("input[name ='e_area']");
    var modalInputPrice = mModal.find("input[name='e_price']");
    var modalCheckCon = mModal.find("input[name='e_construction']");
    var modalInputContent = mModal.find("input[name='e_content']");
    var modalInputRegtime = mModal.find("input[name='e_regtime']");
    var construction = new Array();

    estMod.on("click", "tr", function (e) {
        $("input[type=checkbox]").prop("checked", false);

        var e_no = $(this).data("e_no");
        estService.get(e_no, function (estReq) {
            var cons = estReq.e_construction.split(", ");

            modalInputNo.val(estReq.e_no).attr("readonly", "readonly");
            modalInputAddress.val(estReq.e_address);
            modalInputArea.val(estReq.e_area);
            modalInputPrice.val(estReq.e_price);
            modalCheckCon.each(function () {
                if(cons.indexOf(this.value) > -1) {
                    $(this).prop('checked', true);
                }
            });
            modalInputContent.val(estReq.e_content);
            modalInputRegtime.val(estService.displayTime(estReq.e_regtime)).attr("readonly", "readonly");
            mModal.data("e_no", estReq.e_no);

            $("#modModal").modal("show");
        });
    });

    function showList() {
        estService.getList({id:idValue}, function (list) {
            var str = "<table id='estList'><tr><th>견적신청번호</th><th>주소</th>" +
                "<th>면적</th><th>예산</th><th>시공항목</th><th>문의사항</th><th>신청날짜</th></tr>";

            if(list == null || list.length == 0) {
                estMod.html(str);
                return;
            }

            for(var i = 0, len = list.length||0; i < len; i++) {
                str += "<tr data-e_no='" + list[i].e_no + "'><td>" + list[i].e_no + "</td>";
                str += "<td>" + list[i].e_address + "</td>";
                str += "<td>" + list[i].e_area + "평</td>";
                str += "<td>" + list[i].e_price + "원</td>";
                str += "<td>" + list[i].e_construction + "</td>";
                str += "<td>" + list[i].e_content + "</td>";
                str += "<td>" + estService.displayTime(list[i].e_regtime) + "</td></tr>";
            }
            str += "</table>";
            estMod.html(str);
        });
    }

    mModalModBtn.on("click", function (e) {
        construction = [];
        $("input[name='e_construction']:checked").each(function () {
            construction.push($(this).val());
        });

        var modalInputCon = construction.join(", ");

        var est = {
            e_no:mModal.data("e_no"),
            e_address:modalInputAddress.val(),
            e_area:modalInputArea.val(),
            e_price:modalInputPrice.val(),
            e_construction:modalInputCon,
            e_content:modalInputContent.val()
        };

        if(modalInputAddress.val() == "") {
            alert("주소를 입력해주세요.");
        } else if(modalInputArea.val() == "") {
            alert("평수를 입력해주세요.");
        } else if(modalInputPrice.val() == "") {
            alert("예산을 입력해주세요.");
        } else if(modalInputCon == "") {
            alert("시공항목을 최소 한개 이상 선택해주세요.");
        }

        estService.update(est, function (result) {
            alert(result);
            mModal.modal("hide");
            showList();
            // $("#estModal").modal("hide");
            // location.reload();
        });
    });

    mModalRemoveBtn.on("click", function (e) {
        var e_no = mModal.data("e_no");
        estService.remove(e_no, function (result) {
            alert(result);
            mModal.modal("hide");
            showList();
        });
    });

    showList();

    //회원정보 수정 or 삭제

    var infoModal = $("#infoModal");
    var delModal = $("#delModal");

    var inputPW = infoModal.find("input[name='pw']");
    var inputPWD = infoModal.find("input[name='pwd']");
    var inputName = infoModal.find("input[name='name']");
    var inputPhone = infoModal.find("input[name='phone']");
    var inputAdd = infoModal.find("input[name='address']");

    $("#infoModBtn").on("click", function (e) {
        var id = '<c:out value="${vo.id}"/>';

        if(inputPW.val() != inputPWD.val()) {
            alert("두 비밀번호가 일치하지 않습니다.");
            return;
        }

        var user = {
            id:id,
            pw:inputPW.val(),
            name:inputName.val(),
            phone:inputPhone.val(),
            address:inputAdd.val()
        }

        userService.update(user, function () {
            alert("수정 완료.");
            infoModal.modal("hide");
            location.reload();
        });
    });

    var deletePW = delModal.find("input[name='pw']");
    var deletePWD = delModal.find("input[name='pwd']");

    $("#delBtn").on("click", function (e) {
        var id = '<c:out value="${vo.id}"/>';
        var pw = '<c:out value="${vo.pw}"/>';

        if(deletePW.val() != pw) {
            alert("비밀번호를 확인하세요.");
            return;
        }
        if(deletePW.val() != deletePWD.val()) {
            alert("입력하신 두 비밀번호가 일치하지 않습니다.");
            return;
        }

        userService.remove(id, function () {
            alert("탈퇴 완료. 이용해주셔서 감사합니다.");
            delModal.modal("hide");
            location.replace("/member/logout");
        });
    });

    $('.onlyNo').on("keyup", function () {
        $(this).val($(this).val().replace(/[^0-9]/g,""));
    });
});
</script>