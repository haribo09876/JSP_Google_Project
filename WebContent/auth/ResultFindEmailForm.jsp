<%@page import="member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>이메일 찾기 결과</title>
	<style type="text/css">
		p{
			font-size: 14px;
		}
		
		#firstDiv{
			border-radius: 10px;
			border: 1px solid #E5E5E5;
			height: 416px;
			width: 370px; 
			padding: 48px 40px 36px;
					
						
		}
		
		#firstDiv{
			margin: auto;
		}
		
		#lastDiv {
			display:flex;
			justify-content: center;
			
		}
		
		html, body{
			margin-top: 80px;
		}						
		
		h2, #firstPtag{
			text-align: center;
		}
				
		#firstAtag, #secondAtag, #thirdAtag{
			color: blue;
		}
		
		#firstAtag, #thirdAtag, #secondAtag, #Atag1, #Atag2, #Atag3{
			text-decoration-line: none; 
		}
		
		#Atag1, #Atag2, #Atag3{
			margin-right: 28px; 
		}
		
		#next{
			font-size: 15px;
			height: 40px;
			width: 80px;
			color: white;
			background-color: #1A73E8;
         	border: none;
			float: right;
			border-radius: 5px;
		}
		
		
		
		#idInput{
			border: 1px solid #E5E5E5;			
			width: 340px;
			height: 50px;
			font-size: 18px;
			padding-left: 20px;
			border-radius: 5px;
		}
		
				
		#idInput:focus{
			border-color: #0982f0;
			outline: none;
		}
		
		
		#googleDiv{
		 	font-size: 30px;
		 	text-align: center;
		 }
										
		select{
			border: none;
			width: 200px;
		}
		
		#logo {
		width: 75px;
		height: 41px;
		padding-left: 145px;
	}
	
	#login{
		font-weight: 500;
		text-align: center;
		font-size: 25px;
		margin-top: 5px;
		margin-bottom: 20px;
	}
	
	#googleDiv{
          font-size: 30px;
          display: flex;
    }
    
    #firstPtag{
      	font-size: 17px;
      	margin-top: 5px;
      	margin-bottom: 40px; 
      }
	
	
	</style>
	<script type="text/javascript">
		
		
	
		
	
	</script>
</head>

<body>
<jsp:useBean
   id="member"
   scope="session"
   class="member.dto.MemberDto"
/>	
	<div id='totalDiv'>
	<div id= 'firstDiv'>
	<div id ='googleDiv'>
		<img id="logo" src="Logo.png">
	</div>
	<p id='login'>이메일 찾기 결과</p>
	<p id='firstPtag'>이메일을 확인하세요.</p>
	<form action="./loginId" method="get">			
		<h3>
			로그인 이메일은
		</h3>	
		<h3 style="text-align: center; color: red;">	 
			 <%=member.getEmail()%>
		</h3>	 
		<h3 style="float: right;">
			 입니다.
		</h3>	 
		
		
		<br>			
		<br>
				
		<br>
		<br>	
		<input id='next' type="submit" value="로그인">
		
	</form>
	
	</div>
	<br>	
	<div id='lastDiv'>
		<select>
			<option>한국어</option>
		</select>
		<a id='Atag1' href="">도움말</a>
		<a id='Atag2' href="">개인정보방침  </a>
		<a id='Atag3' href="">약관</a>
	</div>	
	</div>
		
</body>
</html>