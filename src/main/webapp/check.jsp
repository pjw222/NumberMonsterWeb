<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>필드체크</title>
<link rel="stylesheet" href="./css/root.css">
<link rel="stylesheet" href="./css/check.css">
</head>
<style>
</style>
<body>
	<%
	session = request.getSession();
	session.setAttribute("fieldSize", request.getParameter("fieldSize"));
	session.setAttribute("monsterCount", request.getParameter("monsterCount"));
	out.print("monsterCount : " + session.getAttribute("monsterCount"));
	%>
	<c:if
		test="${(param.fieldSize*param.fieldSize) <= param.monsterCount || 0 >= param.monsterCount }">
		<c:redirect url="/">
			<c:param name="errorMsg" value="error" />
		</c:redirect>
	</c:if>
	<div class="container">
		<div class="item-main">
			<h1>몬스터 지정 페이지</h1>
		</div>
		<div class="item-field">
			<jsp:include page="getfield.jsp" />
			<script src="./js/select.jsp"></script>
			<div class="item-button">
				<form class="button-field" action="field.jsp" method="post">
					<input type="submit" value="필드로가기">
				</form>
			</div>
		</div>
	</div>

</body>
</html>