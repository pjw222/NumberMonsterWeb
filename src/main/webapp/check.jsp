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
.item-main {
	grid-column: 1/3;
	grid-row: 1/2;
	width: 300px;
	margin: auto;
}

.item-field {
	grid-column: 1/3;
	grid-row: 2/3;
	display: flex;
	justify-content: center;
	margin: auto;
}

.item-button {
	grid-column: 1/3;
	grid-row: 4/5;
	width: 300px;
	margin: auto;
}

.button-field {
	display: flex;
	justify-content: center;
}
.item-targetMonster{
	display:grid;
	padding: 10px;
    border: 10px solid 
    font-size: 20px;
    font-weight: bold;
    text-align: center;
    margin: auto;
    background-color: blue;
    grid-column: 1/3;
 
}
</style>
<body>

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
		</div>
		<div class="item-targetMonster" style="grid-template-columns: repeat(${param.monsterCount} , 1fr);">
			<c:forEach var="i" begin="1"
				end="${param.monsterCount}" step="1" varStatus="loop">
					<div class="monster">${i }번째 지정한 몬스터 : ${i } </div>		
			</c:forEach>
		</div>
		<div class="item-button">
			<form class="button-field" action="field.jsp" method="post">
				<input type="hidden" value="${param.fieldSize }" name="fieldSize" />
				<input type="hidden" value="${param.monsterCount }"
					name="monsterCount" /> <input type="submit" value="필드로가기">
			</form>
		</div>
	</div>

</body>
</html>