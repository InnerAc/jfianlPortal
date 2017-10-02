<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加文章</title>
</head>
<body>
	<form action="" method=POST enctype="multipart/form-data">
		<input name="pid" type="hidden" value="${pid }">
		文章标题：<input type="text" name="atitle"><br>
		文章内容：<textarea rows="3" name="avalue"></textarea><br> 
		<input name="files" type="file" multiple="multiple"><br>
		<input type="submit" value="上传"> 
	</form>
</body>
</html>