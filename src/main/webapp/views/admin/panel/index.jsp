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
	面板标题：${panel.pname }<br>
	面板尺寸：${panel.psize }<br>
	面板类型：
	<select id="ptype" disabled="true">
		<option value="0">列表文章</option>
		<option value="1">公告展示</option>
		<option value="2">图片轮播</option>
		<option value="3">标题滚动</option>
		<option value="4">列表链接</option>
		<option value="5">iframe内嵌</option>
		<option value="6">tab聚合</option>
	</select><br>
	面板内容：${panel.pvalue }
	
	<hr>
	
	<c:if test="${panel.ptype == 0 || panel.ptype == 2 || panel.ptype == 3 || panel.ptype == 4 }">
		<ul>
		<c:forEach items="${articles}" var="article">
			<li><td>${article.atitle }</td><td>${article.atime }</td></li>
		</c:forEach>
		</ul>
	</c:if>
	<script>
		document.getElementById("ptype")["${panel.ptype }"].selected=true;
	</script>
</body>
</html>