<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../slider.jsp"></jsp:include>
<link rel="stylesheet" href="static/css/wangEditor.css">
<style>
table{
	table-layout: fixed;
}
td{
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
</style>
<div class="content-wrapper">
<section class="content-header">
		<h1>
			超链接查看
			<small>${article.atitle }</small>
	    </h1>
		
</section>
<section class="content">
 	<div class="col-md-6">
 	<form id="iform" action="admin/article/updateImg" method=POST enctype="multipart/form-data">	
 		<input type="hidden" name="pid" value="${article.pid }" >
		<input type="hidden" name="aid" value="${article.aid }" >
	 	<div class="form-group">
			<label class="control-label">图片描述：</label>
			<input type="text" name="atitle" class="form-control" value="${article.atitle }" />
		</div>
		
		<div class="form-group">
			<label class="control-label">修改图片：</label>
			<input class="form-control" type="file" name="file"/>
		</div>
		
		<div class="form-group">
			<label class="control-label">超链接地址：</label>
			<input class="form-control" id="aurl" name="aurl" value="${article.aurl }"/>
		</div>
		
		<div class="form-group">
 			<input type="submit" class="btn btn-primary" value="更新"/>
 			<a  onclick="history.go(-1);" class="btn btn-warning">返回</a>
 		</div>
 	</form>
 	</div>
 	<div class="col-md-6">
 		<img class="img-responsive" src="${article.avalue }" alt="${article.atitle }" />
 	</div>
</section>
<div style="display:none">
</div>
<script src="static/myjs/admin-panel.js"></script>
<script>
</script>
</div>
<jsp:include page="../footer.jsp"></jsp:include>