<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="Game3.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>넘버몬스터</title>
</head>
<body>
	<%
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
			RequestDispatcher dispatch = request.getRequestDispatcher("./field.jsp");
			dispatch.forward(request, response);
		}

		field.SetField(fieldSize, player);
	%>
	
	<form action="./index.jsp" method="get">
		<label>범위를 지정해주세요.
		<input type="text" name="fieldSize">
		<input type="submit" value="입력">
		</label>
	</form>
	
	<form action="./index.jsp" method="get">
		<label>잡고싶은 마릿수를 설정해주세요. 
		<input type="text"name="monsterCount">
		<a href="./field.jsp"><input type="submit" value="입력"></a>
		</label>
	</form>
	<%
	for(int i=0;i<fieldSize*fieldSize;i++)
	{	
	%>
		monster
	<%
	}
	%>

</body>
</html>



