<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>넘버몬스터배틀페이지</title>
<link rel="stylesheet" href="./NewFile.css">
<style>
*{
	text-align: center;
}
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
	<h1 >배틀페이지</h1>
	<div class="battle"	style="border:2px solid red; padding:10px; margin: auto;">
		<div class="myHp" >현재나의HP:50</div>
		<div class="monsterHp">현재 몬스터의 HP:60</div>
	</div>
	<div id="wrapper" style="background-color:green;">
    <h3 id="txtContact"> 주사위굴리기 </h3>
    <button type="submit" id="btnSubmit" > 주사위굴리기 </button>
	</div>
	<div id="dice" style="border:1px solid;">
	<div id="myDice">내주사위1</div>
	<div id="myDice">내주사위2</div>
	<div id="monsterDice">몬스터주사위1</div>
	<div id="monsterDice">몬스터주사위2</div>
	</div>
	<button type="submit" id="btnSubmit" onclick="location.href='field.jsp'"> 배틀종료 </button>


</body>
</html>