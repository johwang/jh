<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page contentType="text/html; charset=UTF-8"%>
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
<title>상품 편집</title>
</head>
<%
	String edit = request.getParameter("edit");
%>
<body>
	<jsp:include page="menu.jsp" />
	
		<div class="container">
			<h3 class="display-3">상품 편집</h3>
		</div>
	
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp"%>
			<%
				String sql = "select * from product";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
			%>
			<div class="col-md-4">
				<img src="./resources/images/<%=rs.getString("p_fileName")%>"
					style="width: 100%">
				<h3><%=rs.getString("p_name")%></h3>
				<p><%=rs.getString("p_description")%></p>
				<p><%=rs.getString("p_unitPrice")%>원
				</p>
				<p>
					<%
						if (edit.equals("update")) {
					%>
					<a href="./updateProduct.jsp?id=<%=rs.getString("p_id")%>"
						class="btn btn-success" role="button">수정 &raquo;></a>
					<%
						} else if (edit.equals("delete")) {
					%>
					<a href="#" onclick="deleteConfirm('<%=rs.getString("p_id")%>')"
						class="btn btn-danger" role="button">삭제 &raquo;></a>
					<%
						}
					%>
				</p>
			</div>
			<%
				}
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
<script>
	function deleteConfirm(id) {
		if (confirm("해당 상품 " + id + "을 삭제합니다.!!") == true) {
			location.href = './deleteProduct.jsp?id=' + id;
		} else {
			return;
		}
	}
</script>