<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../includes/header.jsp"%>

<div class="col-lg-9">

    <div class="row">
        <div class="col-lg-12">
            <br>
            <h1 class="page-header">자유게시판</h1>
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
                            <form role="form" action="/board/freeboard/register" method="post">
                                <div class="form=group">
                                    <label>title</label>
                                    <input class="form-control" name="b_title">
                                </div>
                                <div class="form-group">
                                    <label>Text area</label>
                                    <textarea class="form-control" rows="3" name="b_content"></textarea>
                                </div>
                                <div class="form-group">

                                    <input type="text" name="id" class="form-control">
                                </div>
                                <button type="submit" class="btn btn-dark">저장</button>
                                <button type="reset" class="btn btn-dark">재작성</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        <!-- /#page-wrapper -->
</div>
</div>
</div>
<%@include file="../includes/footer.jsp"%>
