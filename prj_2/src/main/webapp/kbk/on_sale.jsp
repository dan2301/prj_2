<%@page import="prj_2.OnSaleListVO"%>
<%@page import="java.util.List"%>
<%@page import="prj_2.MyPageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ include file="../ldk/login_chk.jsp" %>  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>

<link rel="stylesheet" type="text/css" href="http://211.63.89.134/html_prj/project/main.css">
<style type="text/css">

#container{position: relative; width: 1200px; height: 500px; margin: 0px auto;}
#div{position: absolute; margin: auto; width:1200px}
table {
    width: 60%;
    border-collapse: collapse;
    margin: 50px auto;
  }
  td {
    text-align:center;
    border-bottom: 1px solid #444444;
    padding: 10px;
    height: 15px;
  }
  tr{
    border-bottom: 1px solid #444444;
    text-align: left;
  }
  th:first-child, td:first-child {
    border-left: none;
  }
  .bcolor{
  background-color: #B17CC6; color: #FFFFFF;
  }
  .status{
  width:80px;height: 25px; border: none;color:#5E5E5E;cursor: pointer;
  }
</style>
</head>




<body>
<div class="wrap">

<div class="header">
	<c:import url="http://localhost/prj_2/lmh/header.jsp"/>
</div><!-- header-->
   
   
<div id="container">
<div id="div">
	
<% MyPageDAO mpDAO=new MyPageDAO(); %>
<% List<OnSaleListVO> onSale=mpDAO.selectOnSale("abcd6"); %>
<%
StringBuilder prodNum=new StringBuilder();
StringBuilder prodName=new StringBuilder();
StringBuilder uploadDate=new StringBuilder();
for( OnSaleListVO slVO : onSale ) {
	prodNum.append( slVO.getProdNum());
	prodName.append( slVO.getProdName());
	uploadDate.append(slVO.getInputDate());}//end for

%>
<table>
	<tr>
	<th colspan="2"><h2>상품목록</h2></th>
	<th><h2></h2></th>
	</tr>
	<tr class="bcolor">
	<td width="100px">상품번호</td>
	<td>상품명</td>
	<td>업로드 날짜</td>
	</tr>
<%
	for(OnSaleListVO slVO : onSale ) {
		if(slVO.getProdNum()!=0){
			%>
			<tr>
				<td><%=  slVO.getProdNum() %></td>
				<td><%= slVO.getProdName() %></td>
				<td><%= slVO.getInputDate() %></td>
			</tr>
	<%
		}else{
			%>	
			<tr>
			<td colspan="3">내역이 없습니다.</td>
			</tr>
			<%
		}
}//end for
	 %>
</table>



</div>

</div><!-- container -->
     
<div class="footer">
      <c:import url="http://localhost/prj_2/lmh/footer.jsp"/>
</div><!-- footer-->

</div><!-- wrap -->
</body>
</html>