<%@ page language="java" contentType="application/javascript; charset=UTF-8"
    pageEncoding="UTF-8"%>

  const monsters = document.querySelectorAll(".monster");

  const maxMonsterCount = ${sessionScope.monsterCount};
  let clickedMonsterCount = 0;

  function handleMonsterClick(event) {
    if (clickedMonsterCount >= maxMonsterCount) {
      return;
    }

    const monster = event.currentTarget;
    const spanElement = monster.querySelector("span"); 

    const currentStatus = spanElement.getAttribute("data-status");
    
    if (currentStatus === "normal") {
      monster.style.backgroundColor = "red";
      spanElement.setAttribute("data-status", "clicked");
      clickedMonsterCount++;
    } else {

      monster.style.backgroundColor = "#ff0";
      spanElement.setAttribute("data-status", "normal");
      clickedMonsterCount--;
    }
  }
  sessionStorage.setItem("monsterCount", ${sessionScope.monsterCount});
  monsters.forEach(function (monster) {
    monster.addEventListener("click", handleMonsterClick);
  });