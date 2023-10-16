<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="field"
	style="min-width=800px;
		width: ${(param.fieldSize*200)}px;
	grid-template-columns: repeat(${param.fieldSize } , 1fr);
    ">
	<c:forEach var="i" begin="1" end="${(param.fieldSize*param.fieldSize)}"
		step="1" varStatus="loop">
		<button><div class="monster">monster${i }</div></button>
	</c:forEach>
</div>