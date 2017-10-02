<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${article.atitle }</title>
</head>
<body>
	文章标题：${article.atitle }<br>
	发布时间：${article.atime }<br>
	文章内容：${article.avalue }<br>
	
	<c:forEach items="${files }" var="file">
		<a href="${file.fpath }">${file.fname }</a><br>
	</c:forEach>
</body>
</html>