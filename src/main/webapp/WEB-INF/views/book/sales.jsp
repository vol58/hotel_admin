<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
section {
	
}
</style>
<section>
<table align="center">
	<tr>
		<td>월 | ${lastday} | ${month}</td>
		<td>일</td>
		<td>카드결제</td>
		<td>현장결제</td>
		<td>합계</td>
	</tr>
	<c:forEach var="i" begin="1" end="${lastday}" step="1">
		<c:forEach items="${blist}" var="bvo">
			<c:if test="${i==bvo.day}">
				<tr>
					<td>${month}</td>
					<td>${i}</td>
					<td>${bvo.pay_method}</td>
					<td>${bvo.pay_state}</td>
					<td>${bvo.pay_state}</td>
				</tr>
			</c:if>
				<c:if test="${i!=bvo.day}">
				<tr>
					<td>${month}</td>
					<td>${i}</td>
					<td>${bvo.pay_method}</td>
					<td>${bvo.pay_state}</td>
					<td>${bvo.pay_state}</td>
				</tr>
			</c:if>
		</c:forEach>
	</c:forEach>

</table>

</section>