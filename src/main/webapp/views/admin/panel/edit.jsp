<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${panel.pname }</title>
</head>
<body>
	<form action="update" method="POST">
		<input type="hidden" name="pid" value="${panel.pid }">
		面板标题：<input type="text" name="pname" value="${panel.pname }"><br>
		面板尺寸：<input type="text" name="psize" value="${panel.psize }"><br>
		面板类型：
		<select id="ptype" name="ptype">
			<option value="0">列表文章</option>
			<option value="1">公告展示</option>
			<option value="2">图片轮播</option>
			<option value="3">标题滚动</option>
			<option value="4">列表链接</option>
			<option value="5">iframe内嵌</option>
			<option value="6">tab聚合</option>
		</select>
		<input type="submit" value="更新">
	</form>
	<script>
		document.getElementById("ptype")["${panel.ptype }"].selected=true;
	</script>
</body>
</html>