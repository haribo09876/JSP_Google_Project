<%@page import="member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title></title>
   <script type="text/javascript">
         
      function showPopUp() {
         var width = 100;
         var height = 100;
         
         var left = (window.screen.width / 10);
         var top = (window.screen.height);
         
         var whidowStatus = 'whidth=' + width + ', height=' + height + ', left=' + left + ', top=' + top
            + ', scrollbars=no, status=no, resizable=no, titlebar=no';
         
         const url = "../auth/LogoutForm.jsp";
         
         window.open(url, "hello popup", whidowStatus);
      }
            

   </script>
</head>
<body>
<jsp:useBean
   id="member"
   scope="session"
   class="member.dto.MemberDto"
/>



<div style="color: gray; height: 30px; padding: 5px;">

   <%
      if(member.getEmail() != null) {
      
   %>
   <div style="display: flex; align-items: center; float: right;">         
      <span style="float: right; margin-right: 20px;">
         Gmail
      </span>   
      <span style="float: right; margin-right: 20px; ">
         이미지
      </span>
      <a href="javascript:showPopUp()" id="myIcon">   
         <span style="float: right; border: 1px solid green; background-color: green; border-radius: 50%;
            height: 30px; width: 30px; color: white; font-size: 10px; 
            display: flex; align-items: center; justify-content: center;">
               <%=member.getMname()%>
            </span>   
         </a>
                                                         
       </div>       
      <%
         } else {
      %>
      <div style="display: flex; align-items: center; float: right;">         
         <span style="float: right; margin-right: 20px;">
            Gmail
         </span>   
         <span style="float: right; margin-right: 20px; ">
            이미지
         </span>
         <a href="javascript:showPopUp()" id="popUp">   
            <span style="float: right; border: 1px solid green; background-color: green; border-radius: 50%;
               height: 30px; width: 30px; color: white; font-size: 10px; 
               display: flex; align-items: center; justify-content: center;">
               게스트
            </span>   
         </a>
                                                         
       </div>        
      <%
         }
      %>      
</div>

   
</body>
</html>