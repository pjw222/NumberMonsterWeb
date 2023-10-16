<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>넘버몬스터필드</title>
<link rel="stylesheet" href="./css/NewFile.css">
<link rel="stylesheet" href="./css/grid.css">
<link rel="stylesheet" href="./css/button.css">
<link rel="stylesheet" href="./css/field.css">
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
	margin: auto;
}

.item-button {
	grid-column: 1/3;
	grid-row: 4/5;
	width: 300px;
	margin: auto;
}

.button-field {
	display: block;
	margin: auto;
}
</style>
<body>
	<div class="container">
		<div class="item-main">
			<h1 style="text-align: center;">필드</h1>
		</div>
		<div class="item-field">
			<jsp:include page="getfield.jsp" flush="ture" />
		</div>

		<div class="item-button">
			<div id="wrapper" style="background-color: green;">
				<h3 id="txtContact">방향키</h3>
				<button type="submit" id="btnUp">위</button>
				<button type="submit" id="btnLeft">왼쪽</button>
				<button type="submit" id="btnDown">아래</button>
				<button type="submit" id="btnRight">오른쪽</button>
			</div>
			<button type="submit" id="btnbattle"
				onclick="location.href='battle.jsp'">배틀페이지</button>
		</div>
	</div>


</body>
</html>