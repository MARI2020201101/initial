<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<%@ include file = "../includes/header.jsp" %>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Modify/Delete Page</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Modify/Delete Page
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        <form >
                        <input type ='hidden' name = 'pageNum' value = '${cri.pageNum }'>
                        <input type ='hidden' name = 'amount' value = '${cri.amount }'>
                      
                       		<div class="form-group">
                             	<label>Bno</label>
                                <input class="form-control" name = "bno" readonly ="readonly" value ='<c:out value="${board.bno }"/>'>
                             </div>
 
							<div class="form-group">
                             	<label>Title</label>
                                <input class="form-control" name = "title" value ='<c:out value="${board.title }"/>'>
                             </div>
                             
                             <div class="form-group">
                             	<label>Content</label>
                                <textarea rows="5" cols="50" name = "content" class="form-control" ><c:out value="${board.content }"/></textarea>
                             </div>
                             
                             <div class="form-group">
                             	<label>Writer</label>
                                <input class="form-control" name = "writer" value ='<c:out value="${board.writer }"/>'>
                             </div>
                             <button class="btn btn-default" data-oper='modify'>Modify</button>
                             <button class="btn btn-danger" data-oper='remove'>Remove</button>
                             <button class="btn btn-info" data-oper='list'>List</button>
                       	</form>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
<script>
$(document).ready(function(){
	var formObj = $("form");
	$('.btn').click(function(e){
		
		e.preventDefault();
		var operation = $(this).data("oper");
		if(operation === 'list'){
			formObj.attr("action", "list")
			.attr("method","get");
			formObj.find("input[name = 'bno']").remove();
			formObj.find("input[name = 'title']").remove();
			formObj.find("textarea[name = 'content']").remove();
			formObj.find("input[name = 'writer']").remove();
			formObj.submit();
		}else if(operation === 'remove'){
			formObj.attr("action", "remove")
			.attr("method","post");
			formObj.submit();
		}
		else if(operation === 'modify'){
			formObj.attr("action", "modify")
			.attr("method","post");
			formObj.submit();
		}
	})
	
})

</script>      
        <!-- /#page-wrapper -->
<%@ include file = "../includes/footer.jsp" %>