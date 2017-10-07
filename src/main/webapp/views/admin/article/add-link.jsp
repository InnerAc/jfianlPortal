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
		链接添加
		<small>${panel.pname }</small>
     </h1>
</section>
<section class="content">
 	<div class="row">
 	<div class="col-md-6">
 		<form id="iform" action="admin/article/add" method=POST enctype="multipart/form-data">
 			<input name="pid" type="hidden" value="${pid }">
 			<div class="form-group">
				<label class="control-label">链接标题：</label>
				<input type="text" name="atitle" class="form-control" placeholder="请输入链接标题" />
			</div>
			
			<div class="form-group">
				<label class="control-label">超链接地址：</label>
				<input class="form-control" id="aurl" name="aurl"/>
			</div>
			<div class="form-group">
	 			<input type="submit" value="添加" class="btn btn-primary"/>
	 			<a  onclick="history.go(-1);" class="btn btn-warning">返回</a>
	 		</div>
 		</form>	
 	</div>
 	<div class="col-md-6">
 		
 	</div>
 	</div>
</section>

<div style="display:none">
</div>
<script src="static/myjs/admin-art.js"></script>
<script src="static/js/jquery-ui.min.js"></script>
<script>

</script>
</div>
<jsp:include page="../footer.jsp"></jsp:include>