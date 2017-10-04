<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../slider.jsp"></jsp:include>
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
		面板查看
		<small>${panel.pname }</small>
     </h1>
</section>
<section class="content">
 	<div class="row">
 	<div class="col-md-6">
 		<form class="form-horizontal">
 			<div class="form-group">
				<label class="col-sm-3">面板名称：</label>
				<div class="col-sm-9">
					${panel.pname }
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3">面板尺寸：</label>
				<div class="col-sm-9">
					${panel.psize }/12屏幕宽度
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3">面板类型：</label>
				<div class="col-sm-9" id="ptype"></div>
			</div>
			<div class="form-group">
				<label class="col-sm-3">显示标题：</label>
				<div class="col-sm-9">
					<c:if test="${panel.pshow == 1 }">显示</c:if>
					<c:if test="${panel.pshow == 0 }">不显示</c:if>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3">面板管理：</label>
				<div class="col-sm-9">
					<a href="admin/panel/edit?pid=${panel.pid }" class="btn btn-warning btn-mini">编辑</a>
					<button class="btn btn-danger btn-mini">删除</button>
				</div>
			</div>
			<!-- 1、5、6、7 -->
			<c:if test="${panel.ptype == 1 || panel.ptype == 7}">
			<div class="form-group">
				<label class="col-sm-3">展示内容：</label>
				<div class="col-sm-9">
					<button class="btn btn-success btn-mini">更新</button>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-12">
					<textarea class="form-control" rows="3" value="${panel.pvalue }" placeholder="Enter ..."></textarea>
				</div>
			</div>
			</c:if>
			<c:if test="${panel.ptype == 5}">
			<div class="form-group">
				<label class="col-sm-3">内嵌地址：</label>
				<div class="col-sm-9">
					<a onclick="updateValue();" class="btn btn-success btn-mini">更新</a>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-12">
					<input class="form-control" id="tarUrl" value="${panel.pvalue }"></textarea>
				</div>
			</div>
			</c:if>
			<c:if test="${panel.ptype == 6}">
			<div class="form-group">
				<label class="col-sm-3">聚合面板：</label>
				<div class="col-sm-9">
					<a onclick="updateValue();" class="btn btn-success btn-mini">更新</a>
					<a onclick="selectTabs();" class="btn btn-info btn-mini">选择</a>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-12">
					<input class="form-control" id="tarUrl" readonly="readonly" value="${panel.pvalue }"></textarea>
				</div>
			</div>
			</c:if>
 		</form>	
 	</div>
 	<div class="col-md-6">
 		<div class="col-col-12 col-box">
			<div class="box box-danger">
				<div class="box-header">
					<h3 class="box-title">文章列表</h3>
					<div class="box-tools pull-right">
						<div class="btn-group">
							<a class="btn btn-info btn-sm">添加文章</a>
						</div>
					</div>
				</div>
				<div class="box-body">
					<table class="table table-condensed table-hover">
						<c:forEach items="${articles}" var="article"><tr>
							<td width="60%"><a href="admin/article/${article.aid }">${article.atitle }</a></td>
							<td width="20%" class="times">${article.atime }</td>
							<td>
								<a href="" class="btn btn-td btn-warning">编辑</a>
								<a href="" class="btn btn-td btn-danger">删除</a>
							</td>
						</tr></c:forEach>
					</table>
				</div>
			</div>
		</div>
 	</div>
 	</div>
</section>
<div class="modal fade" id="tabSelect" tabindex="-1" role="dialog" aria-hidden="false">
	<div class="modal-dialog" style="width:80%; height:80%;">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">
						TAB页选择
				</h4>
			</div>
			<div class="modal-body" style="height:100%;overflow:auto;">
				<h3><small>已选中面板</small></h3>
				<div class="row" id="selectedPanels"></div>
				<h3><small>未选中面板</small></h3>
				<div class="row" id="allPanels"></div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button onclick="commitTab();" type="button" class="btn btn-primary">提交更改</button>
           	</div>
		</div>
	</div>
</div>
<div style="display:none">
<div id="pid">${panel.pid }</div>
</div>
<script src="static/myjs/admin-art.js"></script>
<script src="static/js/jquery-ui.min.js"></script>
<script>
	$('#ptype').html(PANEL_TYPES['${panel.ptype}']);
	genTimes();
</script>
</div>
<jsp:include page="../footer.jsp"></jsp:include>