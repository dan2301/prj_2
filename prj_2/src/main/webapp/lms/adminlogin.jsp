<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    info="관리자 로그인 페이지"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
<style type="text/css">

.area_login{
height: 670px; 
width: 1200px;
position: relative; 
}

.loginTitle{
position: absolute;
top : 115px;
left: 510px;
font-weight: bold;
font-size: 25px;
}

.input_login{
width: 350px;
height : 60px;
}

.text_input_login{
width: 350px;
height : 60px;
position: absolute;
top : 185px;
left: 415px;
font-size: 16px;
border-radius: 5px;
border-color: #dcdcde;
}

.input_password{
width: 350px;
height : 60px;
}

.text_input_password{
width: 350px;
height : 60px;
position: absolute;
top : 265px;
left: 415px;
font-size: 16px;
border-radius: 5px;
border-color: #dcdcde;
}

.find_id{
position: absolute;
font-size: 16px;
top : 350px;
left: 570px; 
}

.find_password{
position: absolute;
font-size: 16px;
top : 350px;
left: 670px; 
}

.a_find{
text-decoration: underline;
color: #000
}

.div_btn_login{
width: 350px;
height : 60px;
}

.btn_login{
width: 355px;
height : 65px;
position: absolute;
top : 360px;
left: 415px;

border: none;
border-radius: 5px;
background-color: #8B6FBD;
color: white;
font-size: 22px;
font-weight: bold;
}

.div_btn_join_member{
width: 350px;
height : 60px;
}


.btn_join_member{
width: 355px;
height : 65px;
position: absolute;
top : 500px;
left: 415px;

border: none;
border-radius: 5px;
background-color: #E0E0E0;
color: #8B6FBD;
font-size: 22px;
font-weight: bold;
}

.div_notice{
position: absolute;
top : 440px;
left: 510px;
width: 260px;
height : 160px;
background-color: #FCE487;
font-weight: bold;
font-size: 15px;
box-shadow: 5px 5px 5px 5px gray
}


</style>
</head>
<body>

<div class="wrap">

  <div class="header">
       <div class="logo">
       <a href=""><img id="logo" alt="logo"  src="http://localhost/prj_2/images/logo.png"></a>
       </div>
  </div><!-- header-->
  
  <div class="area_login">
     <div class="loginTitle">관리자 로그인</div>
     
     <div class="input_login">
     <input type="text" class="text_input_login"  placeholder="아이디를 입력해주세요"> 
     </div>
     
     <div class="input_password">
     <input type="password"  class="text_input_password" placeholder="비밀번호를 입력해주세요"> 
     </div>
         
      <div class="div_btn_login">
        <input type="button"  value="로그인" class="btn_login" onclick="location.href='http://localhost/prj_2/lms/dashboard.jsp'" >
     </div>
     
     <div class="div_notice">
        Note: This is the <br><br>
		Administrator Sign-In Page.<br><br>
		If you don't want to sign in as an<br>
		Administrator, return to the <br>
		<a href="http://localhost/prj_2/lmh/main_logout.jsp">standard Sign-in Page.</a>
     </div>
          

  </div><!-- 로그인 -->

<div class="footer">
      <hr class="hr_footer">
      
      <div class="footer_text">
        대표 4조 | 사업자번호 123-45-67890<br>
        직업정보제공사업 신고번호 2023-서울강남-0000<br>
        주소 서울 강남구 테헤란로 132 (강남콩서비스)<br>
        전화 1234-1234 | 고객문의 cs@gangnamkongservice.com<br>
       </div>
       
      <!-- <div class="inquiry1">
        <a href="#void"  class="a_footer"">제휴문의</a>
       </div> 
       
        <div class="inquiry2">
        <a href="#void"  class="a_footer"">광고문의</a>
       </div> 
       
       <div class="inquiry3">
        <a href="#void"  class="a_footer"">PR문의</a>
       </div> 
       
        <div class="inquiry4">
        <a href="#void"  class="a_footer"">IR문의</a>
       </div> 
   
       <div class="inquiry5">
        <a href="#void"  class="a_footer"">이용약관</a>
       </div> 
       
       <div class="inquiry6">
        <a href="#void"  class="a_footer"">개인정보처리방침</a>
       </div> 
       
       <div class="inquiry7">
        <a href="#void"  class="a_footer"">이용자보호</a>
       </div> 
       
       <div class="inquiry8">
        <a href="#void"  class="a_footer"">비전과계획</a>
       </div> -->
   </div><!-- footer-->
   
  </div><!--wrap  -->

</body>
</html>