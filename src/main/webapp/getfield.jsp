<%@page import="java.util.TreeSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="./css/root.css">
<link rel="stylesheet" href="./css/field.css">
<link rel="stylesheet" href="./css/NewFile.css">
<div class="field"
	style="grid-template-columns: repeat(${fieldSize}, 1fr);">
	<c:forEach var="i" items="${ fieldArr}" varStatus="loop">
		<div class="monster" id="monster">
			<form action="check.jsp" method="get">
				<span data-status="normal">${i}</span>
			</form>
			<c:if test="${ loop.count == fieldSize*fieldSize}">
				<div class="player" id="player-16">player</div>
			</c:if>
		</div>
	</c:forEach>
</div>


