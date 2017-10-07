<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../slider.jsp"></jsp:include>
<div class="content-wrapper">
<section class="content-header">
	<h1>
		面板管理
		<small>面板添加</small>
     </h1>
</section>
<section class="content">
 	<div class="row">
 	<div class="col-md-6">
 		<form class="form-horizontal" action="admin/panel/add" method="POST">
 			<div class="form-group">
				<label class="col-sm-2 control-label">面板名称</label>
				<div class="col-sm-10">
					<input type="text" name="pname" class="form-control" placeholder="请输入面板名称">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">面板尺寸</label>
				<div class="col-sm-10">
					<select name="psize" class="form-control">
						<option value="1">1/12屏幕宽度</option>
						<option value="2">2/12屏幕宽度</option>
						<option value="3">3/12屏幕宽度</option>
						<option selected="selected" value="4">4/12屏幕宽度</option>
						<option value="5">5/12屏幕宽度</option>
						<option value="6">6/12屏幕宽度</option>
						<option value="7">7/12屏幕宽度</option>
						<option value="8">8/12屏幕宽度</option>
						<option value="9">9/12屏幕宽度</option>
						<option value="10">10/12屏幕宽度</option>
						<option value="11">11/12屏幕宽度</option>
						<option value="12">12/12屏幕宽度</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">面板类型</label>
				<div class="col-sm-10">
					<select name="ptype" class="form-control">
						<option value="0">列表文章类</option>
						<option value="1">公告展示类</option>
						<option value="2">图片轮播类</option>
						<option value="3">文章标题滚动展示类</option>
						<option value="4">列表链接类</option>
						<option value="5">iframe内嵌类</option>
						<option value="6">tab聚合类</option>
						<option value="7">自由定制类</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">显示标题</label>
				<div class="col-sm-10">
					<label>
						<input type="radio" name="pshow" checked value="1">显示
					</label>
					<label>
						<input type="radio" name="pshow" value="0">不显示
					</label>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-10">
					<button type="submit" class="btn btn-primary">添加</button>
					<a onclick="history.go(-1);" class="btn btn-warning">返回</a>
				</div>
			</div>
 		</form>	
 	</div>
 	</div>
</section>
<script>
	
</script>
</div>
<jsp:include page="../footer.jsp"></jsp:include>