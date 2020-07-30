<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>상품 아이디 오류</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	
		<div class="container">
			<h3 class="alert alert-danger">해당 상품이 존재하지 않습니다.</h3>
		</div>
	
	<div class="container">
		<p><%=request.getRequestURL()%>?<%=request.getQueryString()%>
		<p>
			<a href="products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
	</div>


</body>
</html>