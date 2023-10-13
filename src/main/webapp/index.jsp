<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<title>넘버몬스터</title>
<link rel="stylesheet" href="./css/grid.css">
<link rel="stylesheet" href="./css/NewFile.css">
<style type="text/css">
* {
	text-align: center;
}

.item {
	margin: auto;
}

.item:nth-child(1) {
	grid-column: 1/3;
	grid-row: 1/2;
	width: 430px;
	padding: 100px;
	background-image: url("./img/number.jpg");
	background-repeat: repeat-x;
	background-size: cover;
	background-repeat: repeat;
}

.item:nth-child(2) {
	border: solid;
	grid-column: 1/3;
	width: 430px;
	margin: auto;
	justify-content: center;
}

.input {
	width: 75px;
}
</style>
</head>
<body>
	<%--
		Battle battle = new Battle();
		Field field = new Field();
		Hint hint = new Hint();
		Move move = new Move();
		Monster monster = new Monster();
		Player player = new Player();
		Util util = new Util();	
		int fieldSize = 0;
		int monsterCount = 0;
		if(request.getParameter("fieldSize")!=null)
		{
			fieldSize =	Integer.parseInt(request.getParameter("fieldSize"));
			request.setAttribute("fieldSize", fieldSize);
			if(request.getParameter("monsterCount")!=null)
			{
				monsterCount = Integer.parseInt(request.getParameter("monsterCount"));
				request.setAttribute("monsterCount", monsterCount);	
			} 
		}
		field.SetField(fieldSize, player);
	--%>
	<c:if test="${param.errorMsg != null }">
		<script>
			alert("몬스터가 너무 많습니다");
			location.href="/number";
		</script>
	</c:if>
	<div class="container">
		<div class="item">
			<h1>넘버몬스터 시작</h1>
		</div>
		<div class="item">
			<form action="./check.jsp" method="post">
				<div>
					<label> 범위를 지정해주세요. <input class="input" type="text"
						placeholder="범위 입력!" name="fieldSize">
					</label>
				</div>
				<div>
					<label> 잡고싶은 마릿수를 설정해주세요. <input class="input" type="text"
						placeholder="마릿수 입력!" name="monsterCount">
					</label>
				</div>
				<input type="submit" value="체크하기">
			</form>
			
		</div>
	</div>


</body>
</html>




