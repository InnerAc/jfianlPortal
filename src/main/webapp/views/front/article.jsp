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
		<table class="table table-condensed table-hover">
			<tr>
				<th width="80%">文章列表</th>
			</tr>
			<tbody>
				<c:forEach items="${articles }" var="article">
					<tr>
					<td><a href="article/${article.aid }">${article.atitle }</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="col-md-9 front-back">
		<div class="col-md-12" style="text-align:center;">
	 		<h1><c:out value="${article.atitle }" escapeXml="true"></c:out></h1>
	 		<h3><small class="times" >${article.atime }</small></h3>
	 	</div>
	 	<div class="col-md-12">
	 		<div>${article.avalue }</div>
	 	</div>
 		<div class="col-md-12">
	 		<c:if test="${files != null}">
	 			<h3><small>附件列表</small></h3>
	 		<ul>
	 		  <c:forEach items="${files }" var="file">
			    <li><a href="file/${file.fid }"><c:out value="${file.fname }" escapeXml="true"></c:out></a></li>
			  </c:forEach>
			 </c:if>
			 </ul>
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