<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>이메일 찾기 이름입력</title>
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
		
		
		
		#idInput, #idInput2{
			border: 1px solid #E5E5E5;			
			width: 340px;
			height: 50px;
			font-size: 18px;
			padding-left: 20px;
			border-radius: 5px;
			margin-bottom: 20px;
		}
		
				
		#idInput:focus, #idInput2:focus{
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
		
		
		
		select{
			border: none;
			width: 200px;
		}
	
	
	</style>
	<script type="text/javascript">
		
		
	
		function nextFnc() {
						
			var hidePTag = document.createElement('hide');
			var hide2PTag = document.createElement('hide2');
						
			var myObj = document.getElementById('inputDiv');
			
			var myInput2 = document.getElementById('idInput2');
										
				
			if (!myInput2.value) {
				myInput2.style.borderColor = 'red';
				
				document.getElementById('hide').style.display = 'block';			
				document.getElementById('hide2').style.display = 'block';
				event.preventDefault();
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
	<h2>이름을 입력하세요</h2>
	<p id='firstPtag'>Google 계정 이름 입력</p>
	<form action="./FindPassword" method="post">
		<div id='inputDiv'>
		<input id='idInput' type="text" name="firstName" placeholder="성" onfocus="this.placeholder = ''" onblur="this.placeholder = '성'"/>			
		<input id='idInput2' type="text" name="lastName" placeholder="이름" onfocus="this.placeholder = ''" onblur="this.placeholder = '이름'"/>
		</div>
		
		<span id='hide' style="display:none; color: red;">
		<img id='hide2'src="./icon.png" style="display: none; float: left;">
		이름을 입력하세요.</span>				
		<br>
		<br>
		<br>	
		<input id='next' type="submit" value="다음" onclick="nextFnc();">
		
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