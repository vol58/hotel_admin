<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
 <table width="800" align="center">
  <caption><h2>정보·수정·삭제</h2></caption>

  <tr>
    <td>회원 아이디</td>
    <td><input type="text" name="userid" value="${mvo.userid}"></td>
  </tr>
  <tr>
    <td>비밀번호</td>
    <td><input type="text" name="pwd" value="${mvo.pwd}"></td>
  </tr>
  <tr>
    <td>이름</td>
    <td><input type="text" name="name" value="${mvo.name}"></td>
  </tr>
  <tr>
    <td>전화번호</td>
    <td><input type="text" name="phone" value="${mvo.phone}"></td>
  </tr>
  <tr>
    <td> 이메일 </td>
    <c:if test="${mvo.email==null}">
    <td> <b>없음</b> </td>
    </c:if>
   <c:if test="${mvo.email!=null}">   
    <td><input type="text" name="userid" value="${mvo.email}"></td>
    </c:if>
  </tr>

  <tr>
    <td>회원상태 </td>
    <td>  <!--  checked 설정해놓기 -->
          정상<input type="radio" name="state" value="0"> 
          탈퇴신청중 <input type="radio" name="state" value="1">
          탈퇴완료 <input type="radio" name="state" value="2">
    </td>
  </tr>
  
  <tr>
   <td> 고객메모 </td>
   <td>
    <textarea rows="5" cols="60" name="memo"></textarea>
   </td>
  </tr>
  
  <tr>
    <td><b>고유값 (id)</b> / 가입일 </td>
    <td><b>${mvo.id }</b>/ ${mvo.writeday}</td>
  </tr>
  <tr>
   <td colspan="2" align="center">
    <input type="submit" value="수정하기">
    <input type="button" onclick="mem_del(${mvo.id})" value="회원삭제">    
    <input type="button" onclick="location='member_list?page=${page}&sel=${sel}&keyword=${keyword}'" value="목록">
    </td>
  </tr>
 
 </table>
</section>
</body>
</html>