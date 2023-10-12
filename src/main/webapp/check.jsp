<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>필드체크</title>
<link rel="stylesheet" href="./css/NewFile.css">
</head>
<style>
.move{
display:block;
margin:auto;
}
</style>
<body>

	<c:choose>
		<c:when
			test="${(param.fieldSize*param.fieldSize) < param.monsterCount }">
			<%
			response.sendRedirect("index.jsp");
			%>
		</c:when>
		<c:when
			test="${(param.fieldSize*param.fieldSize) ==	 param.monsterCount }">
			<%
			response.sendRedirect("index.jsp");
			%>
		</c:when>
	</c:choose>
	<div class="field"
		style="width: ${(param.fieldSize*200)}px;
    height: fit-content;
    margin: 0 auto;
    display: grid;
	grid-template-columns: repeat(${param.fieldSize } , 1fr);
     grid-column-gap: 5px;
     grid-row-gap: 5px;
    padding:10px;
    background-color: #f54;
    ">
		<c:forEach var="i" begin="1" end="${(param.fieldSize*param.fieldSize)}"
			step="1" varStatus="loop">
			<div class="monster">monster${i }</div>
		</c:forEach>
	</div>
	<div class="move">
	<input type="button" value="필드로가기" onclick="location.href='field.jsp'">
	</div>
</body>
</html>