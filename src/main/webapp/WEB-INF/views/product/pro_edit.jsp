<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body> 
  <form name="inpro" enctype="multipart/form-data" method="post" action="pro_edit_ok">
    <table width="800" align="center">
      <caption> <h2>상품정보 수정 </h2> </caption>
        <tr>
          <td> 상품 코드 </td>
          <td> <input type="text" name="pcode" value="${pvo.pcode}" readonly> </td>
        <tr>
          <td> 상품메인 이미지 </td>
          <td colspan="2"> <input type="file" name="pimg1" value="${pvo.pimg1}">
                            <img src="../resources/img/product/${pvo.pimg1}" width="100" height="100"> </td>
        </tr>
        <tr>
          <td> 상품 이미지 </td>
          <td colspan="2"> <input type="file" name="pimg2" value="${pvo.pimg2}"> </td>
        </tr>
        <tr>
          <td> 상품 이미지 </td>
          <td colspan="2"> <input type="file" name="pimg3" value="${pvo.pimg3}"> </td>
        </tr>
        <tr>
          <td> 상품상세 이미지 </td>
          <td colspan="2"> <input type="file" name="cimg" value="${pvo.cimg}"> </td>
        </tr>
        <tr>
          <td> 상품제목 </td>
          <td colspan="2"> <input type="text" name="title" value="${pvo.title}"> </td>
        </tr>
        <tr>
          <td> 상품가격 </td>
          <td colspan="2"> <input type="text" name="price" value="${pvo.price}"> </td>
        </tr>
        <tr>
          <td> 상품 제조사 </td>
          <td colspan="2"> <input type="text" name="made" value="${pvo.made}"> </td>
        </tr>
        <tr>
          <td> 상품 할인율 </td>
          <td colspan="2"> <input type="text" name="halin" value="0" value="${pvo.halin}"> </td>
        </tr>
        <tr>
          <td> 상품수량 </td>
          <td colspan="2"> <input type="text" name="su" value="1" value="${pvo.su}"> </td>
        </tr>
        <tr>
          <td> 배송비 </td>
          <td colspan="2"> <input type="text" name="baesong" value="0" value="${pvo.baesong}"> </td>
        </tr>
        <tr>
          <td> 배송일 </td>
          <td colspan="2"> <input type="text" name="baeday" value="2" value="${pvo.baeday}"> </td>
        </tr>
        <tr>
          <td colspan="3"> <input type="submit" value="등록하기"> </td> 
        </tr>
      </table>
     </form>
</body>
</html>