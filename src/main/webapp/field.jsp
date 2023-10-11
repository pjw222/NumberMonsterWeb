<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>넘버몬스터필드</title>
<link rel="stylesheet" href="./NewFile.css">
<style>
    #wrapper{
        width:300px;
        margin:auto;
    }
    #txtContact{
        width:fit-content;
        margin:auto;
    }
    #btnSubmit{
        width:100px;
        margin:auto;
        display:block;
    }
</style>
</head>
<body>	
	<h1 style="text-align: center;">필드</h1>
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
	for (int i = 0; i < 9; i++) {
	%>

		<div class="monster">monster<%=i+1 %></div>

	<%
	}
	%>
	</div>
	<div id="wrapper" style="background-color:green;">
    <h3 id="txtContact"> 방향키 </h3>
    <button type="submit" id="btnSubmit" > 왼쪽 </button>
    <button type="submit" id="btnSubmit" > 오른쪽 </button>
    <button type="submit" id="btnSubmit" > 위 </button>
    <button type="submit" id="btnSubmit" > 아래 </button>
</div>
	<button type="submit" id="btnSubmit" onclick="location.href='battle.jsp'"> 배틀페이지 </button>


</body>
</html>