<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/field.css">
</head>
<body>
	<div class="field"
		style="width: 200px;
	grid-template-columns: repeat(2 , 1fr);
    ">
		<c:forEach var="i" begin="1"
			end="4" step="1" varStatus="loop">
			<div class="monster">monster${i }</div>
		</c:forEach>
	</div>
</body>
</html>