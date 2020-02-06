<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../includes/header.jsp"%>

             <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            DataTables Advanced Tables
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <form role="form" action="/board/register" method="post">
                                <div class="form=group">
                                    <label>title</label>
                                    <input class="form-control" name="title">
                                </div>
                                <div class="form-group">
                                    <label>Text area</label>
                                    <textarea class="form-control" rows="3" name="content"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Writer</label>
                                    <input type="text" name="writer" class="form-control">
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
<%@include file="../includes/footer.jsp"%>
