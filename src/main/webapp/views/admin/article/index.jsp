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
		文章查看
		<small>${article.atitle }</small>
     </h1>
</section>
<section class="content">
 	<div class="row" style="margin-left:5%;margin-right:5%;">
	 	<div class="col-md-12">
	 		<center><h1>${article.atitle }</h1>
	 		<h3><small class="times" >${article.atime }</small></h3></center>
	 		<div>${article.avalue }</div>
	 	</div>
 		<div class="col-md-12">
	 		  <c:forEach items="${files }" var="file">
			    <a href="file/${file.fid }">${file.fname }</a><br>
			  </c:forEach>
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