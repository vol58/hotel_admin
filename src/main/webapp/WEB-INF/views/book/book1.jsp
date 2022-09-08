<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<section> 
<table width="1000" align="center">
	<tr>
		<td>객실명</td>
		<td>최대인원</td>
		<td>객실 등급</td>
		<td>가격</td>		
	</tr>
	<c:forEach items="${list}" var="rvo">
	<tr>
		<td>${rvo.name}</td>
		<td>${rvo.maxperson}</td>
		<td>${rvo.grade} }</td>
		<td>${rvo.price}</td>		
	</tr>
	</c:forEach>
	
</table>
</section>