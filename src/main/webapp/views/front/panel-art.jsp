<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<div class="content-wrapper">
<section class="content-header">
  <div style="height:250px;overflow:hidden;margin:-15px -15px 0 -15px;">
  	<img class="img-responsive" src="static/artimage/felled1507464478542.jpeg">
  </div>
</section>
<div class="main-div div-image">
<section class="content-header">
  <h1>
	${panel.pname }
  </h1>
  <ol class="breadcrumb">
    <li><a href=""><i class="fa fa-dashboard"></i> 首页</a></li>
    <li class="active"><a href="panel/list/${panel.pid }">${panel.pname }</a></li>
  </ol>
</section>
<section class="content">
<div class="row">
	<div class="col-md-3">
		<c:forEach items="${panels }" var="paneli">
			<div class="box">
			<div class="box-header">
				<h3 class="box-title"><a href="panel/list/${paneli.pid }">${paneli.pname }</a></h3>
			</div>
			</div>
		</c:forEach>
	</div>
	<div class="col-md-9">
	<div class="box box-info front-back">
		<div class="box-header">
			<h3 class="box-title">文章列表</h3>
		</div>
		<div class="box-body front-back">
		<table class="table table-condensed table-hover">
			<tr>
				<th width="80%">文章标题</th>
				<th>发布时间</th>
			</tr>
			<tbody>
				<c:forEach items="${articles }" var="article">
					<tr>
					<td width="80%"><a href="article/${article.aid }">${article.atitle }</a></td>
					<td class="times">${article.atime }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</div>
	</div>
</div>
</section>
</div>
</div>
<script>
genTimes();
</script>
<jsp:include page="footer.jsp"></jsp:include>