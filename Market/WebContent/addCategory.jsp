<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="menu.jsp" />

	</div>
	<div class="container">

		<form action="processAddCategory.jsp" method="post"
			class="form-horizontal">
			<div class="form-group row">
				<label class="col-sm-3">카테고리명</label>
				<div class="col-sm-3">
					<input type="text" name="categoryName" id="categoryName"
						class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3">카테고리설명</label>
				<div class="col-sm-3">
					<input type="text" name="description" id="description"
						class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록"> <input
						type="reset" class="btn btn-primary" value="취소">
				</div>
			</div>

		</form>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>