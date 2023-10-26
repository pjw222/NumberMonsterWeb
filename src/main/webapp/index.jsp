<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<title>넘버몬스터</title>
<link rel="stylesheet" href="./css/root.css">
<link rel="stylesheet" href="./css/index.css">
</head>
<body>

	<c:if test="${param.errorMsg != null }">
		<script>
			alert("잘못된 입력입니다.");
			location.href = "/number";
		</script>
	</c:if>
	<div class="container">
		<div>
			<h1 class="title">넘버몬스터 시작</h1>
		</div>
		<div class="item">
		<form action="field" method="post">
				<div>
					<label> 범위를 지정해주세요.</label> <input class="input" type="number"
						min="2" max="10" placeholder="범위 입력!" name="fieldSize">					
				</div>
				<div>
					<label> 잡고싶은 마릿수를 설정해주세요.</label> <input class="input"
						type="number" min="1" placeholder="마릿수 입력!" name="monsterCount">	
				</div>
				<input type="submit" value="체크하기">
			</form>

		</div>
	</div>


</body>
</html>




