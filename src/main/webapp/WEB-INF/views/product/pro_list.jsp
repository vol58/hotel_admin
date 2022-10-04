<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
 <style>
   section {
     width:1000px;
     margin:auto;
     
   }
   section td {
     width:300px;
     height:250px;
     padding:10px;
     vertical-align:top;
   }
   section td:hover {
     opacity: .5;
   }
   section td div {
     margin-top:5px;
   }
   section #img {
   
   }
   section #baeprice {
     font-size:12px;
   }
   section #title {
     font-size:15px;
   }
   section #price {
     font-size:17px;
     color:#526cdd;
   }
   section #price s { /* 할인전 금액 */
     color:grey;
   }
   section #baeday {
     font-size:12px;
   }
   .container {
    margin-top:50px;
    padding:20px;
   }

 </style>
 <script>
   function content_view(pcode)
   {
	   location="../product/pro_content?pcode="+pcode;
   }
 </script>
</head>
<body> <!-- pro_list.jsp-->
    <div class="container">
  <ul class="nav nav-tabs nav-justified">
    <li class="nav-item">
      <a class="nav-link" href="../product/pro_list?pcode=p01">고메</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="../product/pro_list?pcode=p02">리빙</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="../product/pro_list?pcode=p03">상품권</a>
    </li>
  </ul>
   </div>
<script>
$(document).ready(function(){
  $(".nav-tabs a").click(function(){
    $(this).tab('show');
  });
});
</script>
    <section> <!-- 상품을 30개 출력 -->
        <c:set var="i" value="0"/>
        <table align="center" cellspacing="15">
         <tr>
         <c:forEach items="${list}" var="pvo"> 
            <td onclick="content_view('${pvo.pcode}')"> <!-- 그림, 배송비, 상품명, 가격(할인이 있는경우는 할인가격표시) , 배송일--> 
              <div id="img"> <img src="../resources/img/product/${pvo.pimg1}" width="270" height="270"> </div> <!-- 그림 -->
              <div id="baeprice">
               <c:if test="${pvo.baesong == 0}">
                           무료배송
               </c:if> 
               <c:if test="${pvo.baesong != 0}">
                 <fmt:formatNumber value="${pvo.baesong}"/>원
               </c:if>
              </div> <!-- 배송비 -->
              <div id="title"> ${pvo.title} </div> <!-- 상품명 -->
              <div id="price">
               <c:if test="${pvo.halin != 0}"> <!-- 할인율이 0이 아닌경우 -->
                ${pvo.halin}% <s> <fmt:formatNumber value="${pvo.price}"/>원 </s> <br>
                <fmt:formatNumber value="${ pvo.price - ( pvo.price*(pvo.halin/100) )  }" pattern=",000"/>원
               </c:if>
               <c:if test="${pvo.halin == 0}"> <!-- 할인율이 0인 경우 -->
                <fmt:formatNumber value="${pvo.price}"/>원
               </c:if>
              </div> <!-- 가격 -->
              <c:choose>
               <c:when test="${pvo.yoil == 1}">
                 <c:set var="yo" value="일요일"/>
               </c:when>
               <c:when test="${pvo.yoil == 2}">
                 <c:set var="yo" value="월요일"/>
               </c:when>
               <c:when test="${pvo.yoil == 3}">
                 <c:set var="yo" value="화요일"/>
               </c:when>
               <c:when test="${pvo.yoil == 4}">
                 <c:set var="yo" value="수요일"/>
               </c:when>
               <c:when test="${pvo.yoil == 5}">
                 <c:set var="yo" value="목요일"/>
               </c:when>
               <c:when test="${pvo.yoil == 6}">
                 <c:set var="yo" value="금요일"/>
               </c:when>
               <c:when test="${pvo.yoil == 7}">
                 <c:set var="yo" value="토요일"/>
               </c:when>
              </c:choose>
              <div id="baeday"> ${yo} : ${pvo.baeday2} 도착예정 </div> <!-- 배송일 -->
            </td>
          <c:set var="i" value="${i+1}"/>
          <c:if test="${i%3 == 0}"> 
          </tr>       
          <tr> 
          </c:if>
         </c:forEach>
          </tr>
        </table>
       </section>
</body>
</html>