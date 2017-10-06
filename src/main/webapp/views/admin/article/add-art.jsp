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
		文章添加
		<small>${panel.pname }</small>
     </h1>
</section>
<section class="content">
 	<div class="row">
 	<div class="col-md-6">
 		<form id="iform" action="admin/article/add" method=POST enctype="multipart/form-data">
 			<input name="pid" type="hidden" value="${pid }">
 			<div class="form-group">
				<label class="control-label">文章标题：</label>
				<input type="text" name="atitle" class="form-control" placeholder="请输入面板名称" />
			</div>
			
			<div class="form-group">
				<label class="control-label">上传附件：</label>
				<input class="control-label" name="files" type="file" multiple="multiple">
			</div>
			
			<div class="form-group">
				<label class="control-label">文章内容：</label>
				<div style="display:none;">
					<textarea id="avalue" name="avalue"></textarea>
				</div>
			</div>
 		</form>	
 	</div>
 	<div class="col-sm-12">
		<div id="textarea1">${panel.pvalue }</div>
	</div>
	<div class="col-sm-12" style="padding-top:15px;">
		<div class="form-group">
 			<button onclick="addArt();" class="btn btn-primary">添加</button>
 			<a  onclick="history.go(-1);" class="btn btn-warning">返回</a>
 		</div>
	</div>
 	<div class="col-md-6">
 		
 	</div>
 	</div>
</section>

<div style="display:none">
<div id="pid">${panel.pid }</div>
<div id="ptype">${panel.ptype}</div>
</div>
<script src="static/myjs/admin-art.js"></script>
<script src="static/js/jquery-ui.min.js"></script>
<script src="static/js/wangEditor.js"></script>
<script>
	$('#ptype').html(PANEL_TYPES['${panel.ptype}']);
	genTimes();
	//wangEditor
	var Editor = window.wangEditor
	var editor = new Editor('#textarea1');
	editor.customConfig.menus =[
	    'head',  // 标题
	    'bold',  // 粗体
	    'italic',  // 斜体
	    'underline',  // 下划线
	    'strikeThrough',  // 删除线
	    'foreColor',  // 文字颜色
	    'backColor',  // 背景颜色
	    'link',  // 插入链接
	    'list',  // 列表
	    'justify',  // 对齐方式
	    'quote',  // 引用
	    'image',  // 插入图片
	    'table',  // 表格
	    'video',  // 插入视频
	    'code',  // 插入代码
	    'undo',  // 撤销
	    'redo'  // 重复
	]
	editor.customConfig.uploadImgServer = 'admin/article/upfile';
	editor.customConfig.uploadFileName = 'artimage';
	editor.create();
	$('#textarea1').css('background-color','white');
</script>
</div>
<jsp:include page="../footer.jsp"></jsp:include>