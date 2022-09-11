<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

body {
	
}

a:visited {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: underline;
	color: black;
}

#message {
	width: 1000px;
	height: 29px;
	background: red;
	margin: auto;
}

#message #left {
	float: left;
	width: 980px;
	text-align: center;
	padding-top: 4px;
}

#message #right {
	float: right;
	width: 20px;
	padding-top: 4px;
}

header {
	width: 1000px;
	height: 36px;
	margin: auto;
}

header #left {
	float: left;
	padding-top: 10px;
}

header #right {
	float: right;
	position: relative;
	padding-top: 10px;
}

header #right ul {
	position: absolute;
	left: 73px;
	top: 18px;
	padding-left: 0px;
	padding: 5px;
	display: none;
	background: white;
}

header #right ul li {
	list-style-type: none;
	height: 24px;
}

header a {
	display: inline-block;
	height: 30px;
	text-decoration: none;
	color: black;
}

nav {
	width: 1000px;
	height: 40px;
	margin: auto;
}


nav .menu>li { 
	list-style-type: none;
	display: inline-block;
	width: 130px;
	height: 30px;
	font-size: 17px;
	text-align: center;
}


footer {
	width: 1000px;
	height: 300px;
	background: gray;
	margin: auto;
}
</style>
<decorator:head/>

</head>
<body>

	<header> <!--  로고, 로그인, 회원가입 -->
	<div id="left"><a href="../main/index">?? 호텔 </a></div>
	<div id="right">
		<c:if test="${userid != null}">
			${userid}(${name}) 님 반갑습니다  
			<a href="../member/logout">로그아웃</a> |
			<a href="../member/myinfo">회원정보</a> 
 		</c:if>
 		<c:if test="${userid == null }">
		<a href="../member/login">관리자 로그인</a> 
		</c:if>

	</div>
	</header>

	<nav> <!-- 메뉴및 링크 -->
	<ul class="menu">
		<li><a href="../member/member_list">회원관리</li>		
		<li><a href="/hotel/book/book">예약관리</a></li>
		<li>게시판관리</li>
		<li>상품관리</li>
		<li>주문관리</li>
		
	</ul>
	</nav>
	
	<decorator:body/>
	
	<footer>
		사이트 정보
	</footer>
	<!-- 사이트 관련 하단부  -->
</body>
</html>