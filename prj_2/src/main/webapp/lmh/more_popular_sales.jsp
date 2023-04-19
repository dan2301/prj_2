<%@page import="java.util.List"%>
<%@page import="prj_2.MainProdDAO"%>
<%@page import="prj_2.MainProdVO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 추가 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인기매물 더보기</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/buy.css">
<style type="text/css">

.area_more_popular_sales{
height: 1500px; 
width: 1200px;
position: relative; 
}

</style>
</head>
<body>

<div class="wrap">

   <div class="header">       
       <c:import url="http://localhost/prj_2/lmh/header.jsp" />
  </div><!-- header-->
  
  
  
  <div class="area_more_popular_sales">
    
  
  <div class="div_select_town"> 
          <select class="select_town">
             <option value="동네선택">동네를 선택하세요</option>
             <option value="동네선택">개포동</option>
             <option value="동네선택">논현동</option>
             <option value="동네선택">대치동</option>
             <option value="동네선택">도곡동</option>
             <option value="동네선택">삼성동</option>
             <option value="동네선택">세곡동</option>
             <option value="동네선택">수서동</option>
             <option value="동네선택">신사동</option>
             <option value="동네선택">압구정동</option>
             <option value="동네선택">역삼동</option>
             <option value="동네선택">율현동</option>
             <option value="동네선택">일원동</option>
             <option value="동네선택">자곡동</option>
             <option value="동네선택">청담동</option>
             
         </select>
    </div>
    
       <div class="div_select_category"> 
          <select class="select_category" onchange="window.location.href=this.value">
             <option value="카테고리">카테고리</option>
             <option value="http://211.63.89.143/prj_2/lmh/project/buy.jsp">자전거</option>
             <option value="http://211.63.89.143/prj_2/lmh/project/buy.jsp">의류</option>
             <option value="http://211.63.89.143/prj_2/lmh/project/buy.jsp">용품</option>
             <option value="http://211.63.89.143/prj_2/lmh/project/buy.jsp">부품</option>
         </select>
    </div>
  
  
   
  
  <%
MainProdDAO MainProdDAO = new MainProdDAO();
List<MainProdVO> MainProdlist = MainProdDAO.MainData("prodPopular");

pageContext.setAttribute("prodPopular", MainProdlist);
%>

<table class="popular_sale_table">
  <tr>
    <c:forEach var="MainProdVO" items="${prodPopular}" varStatus="i">
      <c:if test="${i.count <= 8}">
        <td class="prdCol">
          <div>
            <img class="prod_img" src="${MainProdVO.prodImg}" />
          </div>
          <div>
            <strong><h3><c:out value="${MainProdVO.prodName}" /></h3></strong> <br>
            <fmt:formatNumber pattern="#,###,###" value="${MainProdVO.price}" />원<br>
            <c:out value="${MainProdVO.areaName}" /> <br>
            조회 <c:out value="${MainProdVO.viewCnt}" /> <br>
          </div>
        </td>
        <c:if test="${i.count % 4 eq 0}">
          </tr><tr>
        </c:if>
      </c:if>
    </c:forEach>
  </tr>
</table>
  
   
  </div>
  
  
  
   
  
  
    <div class="footer">
      <c:import url="http://localhost/prj_2/lmh/footer.jsp" />
   </div><!-- footer-->
   
  </div><!--wrap  -->

</body>
</html>