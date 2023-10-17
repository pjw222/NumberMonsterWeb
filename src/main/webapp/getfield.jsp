<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<%
			List<Integer> tms = new ArrayList<Integer>();
			tms.add(3);
			
		%>

<div class="field"
	style="min-width=800px;
		width: ${(param.fieldSize*200)}px;
	grid-template-columns: repeat(${param.fieldSize } , 1fr);
    ">
	<c:forEach var="i" begin="1" end="${(param.fieldSize*param.fieldSize)}"
		step="1" varStatus="loop">
	
		<form action="check.jsp" method="get">
		<input  jsp:param type="submit" value="${i }" name="tm"><div class="monster">monster${i }</div>
		<input type="hidden" value="${param.fieldSize }" name="fieldSize" />
		<input type="hidden" value="${param.monsterCount }"name="monsterCount" />
		
		</form>
	</c:forEach>
</div>