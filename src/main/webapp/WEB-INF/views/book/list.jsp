<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
section{
	height:800px;
	margin-top:20px;
}

table {
	text-align:center;
	border-top: 2px solid #DADADD;
	border-bottom: 2px solid #DADADD;
	border-collapse: collapse;
	font-size: 14px;
}

th, td {
	border-top: 2px solid #DADADD;
	border-bottom: 2px solid #DADADD;
	padding: 16px;
}

</style>
<section>
	<table align="center">
		<tr>
			<td colspan="3"><a href="book">즉시예약</a></td>
			<td colspan="5">검색 </td>
		</tr>
		<tr>
			<td>예약번호</td>
			<td>USERID</td>
			<td>예약고객명</td>
			<td>연락처</td>
			<td>객실명</td>
			<td>체크인</td>
			<td>체크아웃</td>
			<td>예약인원</td>
			<td>조식</td>
			<td>추가 요청사항</td>
			<td>결제자명</td>
			<td>결제방법</td>
			<td>결제여부</td>
		</tr>
		<c:forEach items="${blist}" var="bvo">
		<tr>
			<td>${bvo.salescode}</td>
			<td>${bvo.userid}</td>
			<td>${bvo.name}</td>
			<td></td>
			<td>${bvo.room}</td>
			<td>${bvo.checkin}</td>
			<td>${bvo.checkout}</td>
			<td>${bvo.person}</td>
			<td>${bvo.breakfast}</td>
			<td>${bvo.add_needs}</td>
			<td>${bvo.name}</td>
			<td>${bvo.pay_method}</td>
			<td>${bvo.pay_state}</td>
		</tr>
		</c:forEach>
	</table>
</section>	