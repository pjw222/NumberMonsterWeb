<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>넘버몬스터필드</title>
<link rel="stylesheet" href="./css/root.css">
<link rel="stylesheet" href="./css/button.css">
</head>

<body>
	<div class="container">
		<div class="item-main">
			<h1 style="text-align: center;">필드</h1>
		</div>
		<div class="item-field">
			<jsp:include page="getfield.jsp" flush="ture" />
		</div>

		<input type="submit" value="배틀페이지"
			onclick="location.href='battle.jsp'">
	</div>


</body>
</html>