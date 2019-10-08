<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="<%=request.getContextPath()%>/css/main.css" rel="stylesheet" type="text/css">
<jsp:include page="top.jsp"/>
<div class="container">
<div class="row">
	<div class="col-md-10 col-md-offset-1 text-center">
		<h1>Music & Chart</h1>
		<jsp:include page="carousel.jsp"/>	
	</div>
</div>
</div>
<jsp:include page="foot.jsp"/>