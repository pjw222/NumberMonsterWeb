  const monsters = document.querySelectorAll(".monster");

  const maxMonsterCount = sessionStorage.getItem("monsterCount");
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
  sessionStorage.setItem("monsterCount", maxMonsterCount);
  monsters.forEach(function (monster) {
    monster.addEventListener("click", handleMonsterClick);
  });
