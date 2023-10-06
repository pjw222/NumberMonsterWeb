<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>넘버몬스터필드</title>
<link rel="stylesheet" href="./NewFile.css">
</head>
<body>
	<%--
	int fieldSize=(int)request.getAttribute("fieldSize");
	--%>
	<%
	//int length=fieldSize * fieldSize;
	for (int i = 0; i < 4; i++) {
	%>
	<div class="container"	style="display: grid;
	grid-template-columns: repeat(2, 1f);
    grid-gap: 10px;
    padding: 10px;
    background-color: #f54;">
		<div class="monster">monster</div>
	</div>
	<%
	}
	%>
</body>
</html>