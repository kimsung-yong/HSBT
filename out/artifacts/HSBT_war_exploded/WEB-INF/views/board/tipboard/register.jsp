<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../includes/header.jsp"%>

            <div class="row">
                <div class="col-lg-12">
                    <br>
                    <h1 class="page-header">Tip</h1>
                    <br>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <br><br><br><br>
                        <div class="panel-heading">
                            <h3>게시글 작성</h3>
                            <hr>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <form role="form" action="/board/tipboard/register" method="post">
                                <div class="form=group">
                                    <label>title</label>
                                    <input class="form-control" name="t_title">
                                </div>
                                <div class="form-group">
                                    <label>Text area</label>
                                    <textarea class="form-control" rows="3" name="t_content"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Writer</label>
                                    <input class="form-control" name="id">
                                </div>
                                <button type="submit" class="btn btn-default">저장</button>
                                <button type="reset" class="btn btn-default">재작성</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        <!-- /#page-wrapper -->
        </div>
    </div>
<%@include file="../includes/footer.jsp"%>
