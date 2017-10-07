<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="slider.jsp"></jsp:include>
<div class="content-wrapper">
<section class="content-header">
	<h1>
		面板管理
		<small>面板管理</small>
     </h1>
</section>
<section class="content">
 	<div class="row">
 		<div class="col-md-3 col-sm-6 col-xs-12">
			<a href="admin/panel/add" class="btn btn-info"><i class="fa fa-plus"></i>增加面板</a>
     	</div>
 	</div>
 	<div>
		<h2><small>面板列表</small></h2>
 	</div>
 	<div class="row">
 		<c:forEach items="${panels }" var="panel">
 		<div class="col-md-3">
			<div class="box box-info box-solid">
				<div class="box-header with-border">
					<h3 class="box-title"><c:out value="${panel.pname }" escapeXml="true"></c:out></h3>
					<c:if test="${panel.ptype == 0 || panel.ptype == 2 || panel.ptype == 3 || panel.ptype == 4 }">
					<div class="box-tools pull-right">
						<a href="admin/article/add/${panel.pid }" class="btn btn-box-tool"><i class="fa fa-plus"></i></a>
					</div>
					</c:if>
				</div>
				<div class="box-body">
					<a href="admin/panel/${panel.pid }" class="btn btn-sm btn-info">查看</a>
					<a href="admin/panel/edit?pid=${panel.pid }" class="btn btn-sm btn-warning">编辑</a>
					<a class="btn btn-sm btn-danger">删除</a>
				</div>
			</div>
		</div>
		</c:forEach>
 	</div>
 </section>
		
</div>
<jsp:include page="footer.jsp"></jsp:include>