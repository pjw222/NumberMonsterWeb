<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>넘버몬스터배틀페이지</title>
<link rel="stylesheet" href="./css/root.css">
<link rel="stylesheet" href="./css/battle.css">
</head>
<body>
	<div class="container">
		<div class="player-img">
			<img src="./img/player.png" alt="플레이어 이미지">
		</div>
		<div class="battle-page">
			<div class="item title">
				<h1>배틀페이지</h1>
			</div>
			<div class="item my hp">
				<div id="myHp">현재나의HP:50</div>
			</div>
			<div class="item monster hp">
				<div id="monsterHp">현재 몬스터의 HP:60</div>
			</div>
			<div class="item diceroll">
				<h3 id="txtContact">주사위굴리기</h3>
				<button type="submit" id="btnSubmit">주사위굴리기</button>
			</div>
			<div class="item my dice">
				<div id="myDice">내주사위1</div>
				<div id="myDice">내주사위2</div>
			</div>
			<div class="item monster dice">
				<div id="monsterDice">몬스터주사위1</div>
				<div id="monsterDice">몬스터주사위2</div>
			</div>
			<div class="item result">
				<h3>승리or패배알려주는곳</h3>
			</div>
			<div class="item button-box">
				<button type="submit" id="btnSubmit"
					onclick="location.href='field.jsp'">배틀종료</button>

			</div>
		</div>
		<div class="monster-img">
			<img src="./img/monster.png" alt="몬스터 이미지">
		</div>
	</div>



</body>
</html>