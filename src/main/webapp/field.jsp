<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>넘버몬스터필드</title>
<link rel="stylesheet" href="./css/NewFile.css">
<style>
    #wrapper{
        width:300px;
        margin:auto;
    }

    #txtContact{
        width:fit-content;
        margin:auto;
    }


    #btnLeft{
        width:100px;
        position:relative;    /*절대값으로 위치를 설정*/
        right: 105px;    /* x축 */
        top: 24px;  
        margin:auto;
        
    }
    #btnRight{
        width:100px;
        position:relative;
 		
 		left: 95px;    /* x축 */
        top: 0px; 
        margin:auto;
        
        
    }
    #btnUp{
        width:100px;
        top: 0px;
        left: 100px; 
        margin:auto;
        position:relative;
    }
    #btnDown{
        width:100px;
        top: 0px;
        left: 100px;
        margin:auto;
        position:relative;
        
    }
    #btnbattle{
        width:100px;
        margin:auto;
        display:block;
    }
</style>
</head>
<body>	
	<h1 style="text-align: center;">필드</h1>
	<div class="field"	style="width: <%=200*3 %>px;
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
    <button type="submit" id="btnUp" > 위 </button>
    <button type="submit" id="btnLeft" > 왼쪽 </button>
    <button type="submit" id="btnDown" > 아래 </button>
    <button type="submit" id="btnRight" > 오른쪽 </button> 
	</div>
	<button type="submit" id="btnbattle" onclick="location.href='battle.jsp'"> 배틀페이지 </button>




</body>
</html>