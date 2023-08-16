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



   </script>
</head>

<body>
<jsp:useBean
   id="member"
   scope="session"
   class="member.dto.MemberDto"
/>
<div>
   <div style="margin-top: 30px;">
      <span style="border: 1px solid green; background-color: green; border-radius: 50%;
         height: 70px; width: 70px; color: white; font-size: 20px; margin-left: 20px;
         display: flex; align-items: center; justify-content: center; float: left;">
            <%=member.getMname()%>
      </span>
      <br>
      <a style="margin: 30px;"><%=member.getMname()%></a>   
      <br>
      <a style="margin: 30px;"><%=member.getEmail()%></a>
   </div>
   <div style="margin-left: 100px;">
      <p style="border: 1px solid black; border-radius: 20px; width: 200px; height: 30px;
         font-size: 20px; text-align: center;">
         Google 계정 관리
      </p>
   </div>
   <div style="margin-left: 50px;">
   <a onclick="add();">
   <img src="./add.png" style="height: 50px; float: left;">
      <span style="font-size: 20px; margin-left: 50px; line-height: 2.5;">다른 계정 추가</span>
   </a>   
   </div>
   <div style="margin-left: 50px;">
   <a onclick="setParent();">
   <img src="./logout.png" style="height: 50px; float: left;">
      <span style="font-size: 20px; margin-left: 50px; line-height: 2.5;">로그아웃</span>
   </a>   
   </div>
</div>   
      
</body>
</html>