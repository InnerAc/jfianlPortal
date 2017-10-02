<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改${article.atitle }</title>
</head>
<body>
	<form action="update" method=POST enctype="multipart/form-data">
		<input type="hidden" name="pid" value="${article.pid }" >
		<input type="hidden" name="aid" value="${article.aid }" >
		文章标题：<input type="text" name="atitle" value="${article.atitle }"><br>
		文章内容：<input type="text" name="avalue" value="${article.avalue }"><br>
	
		<input name="files" type="file" multiple="multiple"><br>
		<c:forEach items="${files }" var="file">
			<a href="${file.fpath }">${file.fname }</a><br>
		</c:forEach>
		<input type="submit" value="修改"> 
	</form>
</body>
</html>