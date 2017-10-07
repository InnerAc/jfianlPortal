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
		<h1 style="padding-left:0;" class="col-md-6">
			文章查看
			<small>${article.atitle }</small>
	    </h1>
	    <div style="float:right;"><a href="admin/article/edit?aid=${article.aid }" class="btn btn-warning">修改文章</a></div>
		
</section>
<section class="content">
 	<div class="row" style="margin-left:5%;margin-right:5%;">
	 	<div class="col-md-12" style="text-align:center;">
	 		<h1>${article.atitle }</h1>
	 		<h3><small class="times" >${article.atime }</small></h3>
	 	</div>
	 	<div class="col-md-12">
	 		<div>${article.avalue }</div>
	 	</div>
 		<div class="col-md-12">
	 		<c:if test="${files != null}">
	 			<h3><small>附件列表</small></h3>
	 		<ul>
	 		  <c:forEach items="${files }" var="file">
			    <li><a href="file/${file.fid }">${file.fname }</a></li>
			  </c:forEach>
			 </c:if>
			 </ul>
	 	</div>
 	</div>
</section>
<div style="display:none">
</div>
<script src="static/myjs/admin-panel.js"></script>
<script src="static/js/jquery-ui.min.js"></script>
<script>
genTimes();
</script>
</div>
<jsp:include page="../footer.jsp"></jsp:include>