<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 비밀번호입력</title>
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
			background-color: blue;
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
		
		#firstGoogle{
			color: #4285F4;
		}
		
		#secondGoogle{
			color: #EA4335;
		}
		
		#thirdGoogle{
			color: #FBBC05;
		}
		
		#fourthGoogle{
			color: #4285F4;
		}
		
		#fifthGoogle{
			color: #34A853;
		}
		
		#sixthGoogle{
			color: #EA4335;
		}
		
		#firstPtag{
			border: 1px solid #E5E5E5;
			border-radius: 50px;
			width: 250px;
			height: 30px;
			margin: auto;
			margin-bottom: 30px;
			line-height: 30px;
			font-weight: bolder;
		}
		
		#firstPtag:hover{
			background-color: #f9f9f9;
		}
		
		select{
			border: none;
			width: 200px;
		}
	
	
	</style>
	<script type="text/javascript">
		function moveFnc() {
			location.href = "./LoginIdForm.jsp";
		}
		
	
		function nextFnc() {
			var hidePTag = document.createElement('hide');
			var hide2PTag = document.createElement('hide2');
			var hide3PTag = document.createElement('hide3');
			var hide4PTag = document.createElement('hide4');
			var myObj = document.getElementById('inputDiv');			
			var myInput = document.getElementById('idInput');
			
			if (!myInput.value) {
				myInput.style.borderColor = 'red';				
				document.getElementById('hide').style.display = 'block';			
				document.getElementById('hide2').style.display = 'block';
				document.getElementById('hide3').style.display = 'none';
				document.getElementById('hide4').style.display = 'none';
				event.preventDefault();
			}
			
										
			
		}		
			
		function checkFnc() {
			var myObj = document.getElementById('idInput');
			var pwdOpen = document.getElementById('pwdOpen');
			
			if (pwdOpen.checked == true) {
				myObj.setAttribute('type', 'text');	
			}else{
				myObj.setAttribute('type', 'password');	
			}
		}	
																				
	</script>
</head>

<body>
	
	<div id='totalDiv'>
	<div id= 'firstDiv'>
	<div id ='googleDiv'>
		<a id='firstGoogle'>G</a><a id='secondGoogle'>o</a><a id='thirdGoogle'>o</a><a id='fourthGoogle'>g</a><a id='fifthGoogle'>l</a><a id='sixthGoogle'>e</a>
	</div>
	<h2>시작하기</h2>
	<p id='firstPtag' onclick="moveFnc();">계정이메일</p>
	<form action="./loginPassword" method="post">
		<div id='inputDiv'>
					
		<input id='idInput' type="password" name="password" placeholder="비밀번호 입력" onfocus="this.placeholder = ''" onblur="this.placeholder = '이메일 또는 휴대전화'"/>
		</div>
		
		<span id='hide' style="display:none; color: red;">
		<img id='hide2'src="./icon.png" style="display: none; float: left;">
		비밀번호를 입력하세요.</span>	
		<span id='hide3' style="display:block; color: red;">
		<img id='hide4'src="./icon.png" style="display: block; float: left;">
		잘못된 비밀번호입니다. 다시 시도하거나 비밀번호 찾기를 클릭하여 재설정하세요.</span>			
		<br>
		<label>
			<input id='pwdOpen' type="checkbox" onchange="checkFnc();">  비밀번호 표시
		</label>
		<br><br><br><br>
		
		<a id='thirdAtag' href="">비밀번호 찾기</a>		
		<input id='next' type="button" value="다음" onclick="nextFnc();">
		
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