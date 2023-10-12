<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>넘버몬스터배틀페이지</title>
<link rel="stylesheet" href="./css/NewFile.css">
<link rel="stylesheet" href="./css/grid.css">
<style>
* {
	text-align: center;
}

.container {
	display: grid;
	grid-template-columns: repeat(2, minmax(auto, auto));
	grid-template-rows: repeat(7);
	grid-gap: 10px;
	padding: 10px;
	margin: auto;
	justify-content: center;
}

.item {
	width: fit-content;
	padding: 10px;
	margin: auto;
}

.container > .item:nth-child(1) {
	grid-column: 1/3;
	grid-row: 1/2;
	width: 300px;
}

.item:nth-child(2) {
	float: right;
}

.item:nth-child(3) {
	float: left;
}

.item:nth-child(4) {
	grid-column: 1/3;
	grid-row: 3/4;
	width: 300px;
	background-color: green;
}

.item:nth-child(5) {
	border: 1px solid;
	width: fit-content;
	float: right;
	color: teal;
}

.item:nth-child(6) {
	border: 1px solid;
	width: fit-content;
	float: left;
	color: red;
}

.item:nth-child(7) {
	grid-column: 1/3;
}

.container>.button-box {
	grid-column: 1/3;
}

#myHp {
	border: 2px solid red;
	padding: 10px;
	margin: auto;
}

#monsterHp {
	border: 2px solid red;
	padding: 10px;
	margin: auto;
}

#myDice {
	border: 2px solid red;
	padding: 10px;
	margin: auto;
}

#monsterDice {
	border: 2px solid red;
	padding: 10px;
	margin: auto;
}

#btnSubmit {
	width: 100px;
	margin: auto;
	display: block;
}
</style>
</head>
<body>
	<div class="container">
		<div class="item">
			<h1>배틀페이지</h1>
		</div>
		<div class="item">
			<div id="myHp">현재나의HP:50</div>
		</div>
		<div class="item">
			<div id="monsterHp">현재 몬스터의 HP:60</div>
		</div>
		<div class="item">
			<h3 id="txtContact">주사위굴리기</h3>
			<button type="submit" id="btnSubmit">주사위굴리기</button>
		</div>
		<div class="item">
			<div id="myDice">내주사위1</div>
			<div id="myDice">내주사위2</div>
		</div>
		<div class="item">
			<div id="monsterDice">몬스터주사위1</div>
			<div id="monsterDice">몬스터주사위2</div>
		</div>
		<div class="item">
			<h3>승리or패배알려주는곳</h3>
		</div>
		<div class="item button-box">
			<div class="item button-box">
				<button type="submit" id="btnSubmit"
					onclick="location.href='field.jsp'">배틀종료</button>
			</div>
		</div>
	</div>



</body>
</html>