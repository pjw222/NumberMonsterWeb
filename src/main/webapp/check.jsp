<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>필드체크</title>
<link rel="stylesheet" href="./css/NewFile.css">
<link rel="stylesheet" href="./css/field.css">
<link rel="stylesheet" href="./css/grid.css">
</head>
<style>
.move {
	display: block;
	margin: auto;
}
.item-main{
	grid-column: 1/3;
	grid-row: 1/2;
	width: 300px;
	margin:auto;
}
.item-field{
	grid-column: 1/3;
	grid-row: 2/3;
	width: 300px;
	margin:auto;
}
.item-button{
	grid-column: 1/3;
	grid-row: 4/5;
	width: 300px;
	margin:auto;
}
.button-field{
	display:block;
	margin:auto;
}
</style>
<body>
	<c:if
		test="${(param.fieldSize*param.fieldSize) <= param.monsterCount }">
		<c:redirect url="/">
			<c:param name="errorMsg" value="error" />
		</c:redirect>
	</c:if>
	<div class="container">
	<div class="item-main">
	<h1>몬스터 지정 페이지</h1>
	</div>
		<div class="item-field">
			<jsp:include page="getfield.jsp"></jsp:include>
		</div>
		<div class="item-button">
			<input class="button-field"type="button" value="필드로가기"
				onclick="location.href='field.jsp'">
		</div>
	</div>
	<%-- <jsp:forward page="./field.jsp" />--%>
	<%-- 
	<c:choose>
		<c:when
			test="${(param.fieldSize*param.fieldSize) <= param.monsterCount }">
			<%
			response.sendRedirect("index.jsp");
			%>
		</c:when>
		<c:when
			test="${(param.fieldSize*param.fieldSize) == param.monsterCount }">
			<%
			response.sendRedirect("index.jsp");
			%>
		</c:when>
	</c:choose>
	<div class="field"
		style="width: ${(param.fieldSize*200)}px;
	grid-template-columns: repeat(${param.fieldSize } , 1fr);
    ">
		<c:forEach var="i" begin="1"
			end="${(param.fieldSize*param.fieldSize)}" step="1" varStatus="loop">
			<div class="monster">monster${i }</div>
		</c:forEach>
		
	</div>--%>
</body>
</html>