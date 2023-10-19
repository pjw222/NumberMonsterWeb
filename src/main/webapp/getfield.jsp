<%@page import="java.util.TreeSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="./css/root.css">
<link rel="stylesheet" href="./css/field.css">

<div class="field"
	style="
	grid-template-columns: repeat(${param.fieldSize } , 1fr);
    ">

	<c:forEach var="i" begin="1" end="${(param.fieldSize*param.fieldSize)}"
		step="1" varStatus="loop">

		<form action="check.jsp" method="get">
			<input type="hidden" value="${param.fieldSize }" name="fieldSize" />
			<input type="hidden" value="${param.monsterCount }"
				name="monsterCount" />
			<div class="monster" id="monster">
				${i }
			</div>



		</form>
	</c:forEach>
	<script>
		const change = document.querySelectorAll(".monster");

		change.forEach(function(button) {
			button.addEventListener("click", function() {
				button.style.backgroundColor = "red";
			});
		});
	</script>
	<%--
	int count = Integer.parseInt(request.getParameter("monsterCount"));
	int[] monster = new int[] {};
	TreeSet<Integer> tms = new TreeSet<Integer>();
	tms.add(3);
	--%>
</div>