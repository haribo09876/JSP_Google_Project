<%@page import="member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>로그인 아이디입력</title>
   <style type="text/css">
   
   #firstDiv:hover, #secondDiv:hover, #ex:hover{
   		background-color: gray;
   }
   
   #div:hover{
   		background-color: #99CCFF;
   }
   
   </style>

   <script type="text/javascript">

 									
   
      function setParent() {
         opener.location.href = "../auth/logout";
         
         close();

      }
      
      function add() {
         opener.location.href = "../auth/logout";
         
         close();
      }
      
      function colseFnc() {
    	  close();
	}
      


   </script>
</head>

<body style="background-color: #E5E5E5;">
<jsp:useBean
   id="member"
   scope="session"
   class="member.dto.MemberDto"
/>
<div id="popup" class="layerPop">
	<div id="ex" style="border: 1px solid #E5E5E5; border-radius: 50%; float: right; 
		height: 35px; width: 35px;
		display: flex; align-items: center; justify-content: center; 
		font-size: 20px; font-weight: bolder;" onclick="colseFnc();">
		X
	</div>
	<div style="text-align: center; float:inherit;">
	<a style="font-size: 30px;"><%=member.getEmail()%></a>
	</div>
	
   <div style="margin-top: 10px; text-align: center; display: block; align-items: center; justify-content: center;">
      <div style="border: 1px solid green; background-color: green; border-radius: 50%;
         height: 70px; width: 70px; color: white; font-size: 20px; margin: auto;
         display: flex; align-items: center; justify-content: center;">      
            <%=member.getMname()%>
      </div>
     
   <div>  
      <a style="margin: 30px; font-size: 35px;">안녕하세요, <%=member.getMname()%>님.</a>
   </div>      
      
      
   </div>
   <div style="margin: auto; display: flex; 
   		align-items: center; justify-content: center;">
      <p id='div' style="border: 1px solid black; border-radius: 20px; width: 200px; height: 40px;
         font-size: 20px; text-align: center; color: blue;
          display: flex; align-items: center; justify-content: center;">
         Google 계정 관리
      </p>
   </div>
   <div style="display: flex; align-items: center; justify-content: center;">
   <div id="firstDiv" style="border: 1px solid black; width: 250px; float: left; margin-right: 5px;
   		height: 80px; display: flex; align-items: center; justify-content: center;
   		border-radius: 40px 0px 0px 40px;" onclick="add();">
 	  
   <img src="./add.png" style="height: 50px; float: left;">
      
      <span style="font-size: 20px; margin-left: 20px; line-height: 2.5;">
      		다른 계정 추가
      </span>
    
   </div>
   
   <div id="secondDiv" style="border: 1px solid black; width: 250px; float: left;
   		height: 80px; display: flex; align-items: center; justify-content: center;
   		border-radius: 0px 40px 40px 0px;" onclick="setParent();">

   <img src="./logout.png" style="height: 50px; float: left;">
      <span style="font-size: 20px; margin-left: 20px; line-height: 2.5;">로그아웃</span>
   
   </div>
   </div>
   <br>
   <div style="height: 30px;">
   <p style="text-align: center;">계정정보처리방침 ● 서비스약관</p>
   </div>
</div>   
      
</body>
</html>