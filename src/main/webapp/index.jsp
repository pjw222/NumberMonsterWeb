<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>넘버몬스터</title>
<link rel="stylesheet" href="./NewFile.css">
<style type="text/css">
*{
	text-align: center;
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
	<h1>넘버몬스터 시작</h1>
	<form action="./index.jsp" method="get">
		<label>범위를 지정해주세요.
		<input type="text" name="fieldSize">
		<input type="submit" value="입력">
		</label>
	</form>
	
	<form action="./index.jsp" method="get">
		<label>잡고싶은 마릿수를 설정해주세요. 
		<input type="text"name="monsterCount">
		<input type="submit" value="입력">
		</label>
	</form>
	<div class="container"	style="width: <%=200*3 %>px;
    height: fit-content;
    margin: 0 auto;
    display: grid;
	grid-template-columns: repeat(<%=3 %> , 1fr);
     grid-column-gap: 5px;
     grid-row-gap: 5px;
    padding:10px;
    background-color: #f54;
    ">
		<%
	//int length=fieldSize * fieldSize;
		
	for (int i = 0; i < 9; i++) {
	%>
	
		<button><div class="monster">monster<%=i+1 %></div></button>
	
	<%
	}
	%>
	</div>
	<% 
	for(int i=0; i<3; i++)
	{
	%>
	<form action="./index.jsp" method="get">
		<label><%=(i+1)+"번째"%>지정할 몬스터 입니다.
		</label>
	</form>
	<%
	 }
	%>
	<input type="button" value="필드로가기" onclick="location.href='field.jsp'">


</body>
</html>




