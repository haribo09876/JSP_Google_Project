<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>비밀번호 찾기 이름입력2</title>
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
		
		#firstPtag{
      	font-size: 17px;
      	margin-top: 5px;
      	margin-bottom: 40px; 
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
		
		#idInput, #idInput2{
			border: 1px solid red;			
			width: 340px;
			height: 50px;
			font-size: 18px;
			padding-left: 20px;
			border-radius: 5px;
			margin-bottom: 20px;
		}		
				
		#idInput:focus, #idInput2:focus{
			border-color: red;
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
	
	
	</style>
	<script type="text/javascript">
		
		
	
		function nextFnc() {
						
			var hidePTag = document.createElement('hide');
			var hide2PTag = document.createElement('hide2');
			var hide3PTag = document.createElement('hide3');
	        var hide4PTag = document.createElement('hide4');
						
			var myObj = document.getElementById('inputDiv');
			
			var myInput2 = document.getElementById('idInput2');
										
				
			if (!myInput2.value) {
				myInput2.style.borderColor = 'red';
				
				document.getElementById('hide').style.display = 'block';			
				document.getElementById('hide2').style.display = 'block';
				document.getElementById('hide3').style.display = 'none';
	            document.getElementById('hide4').style.display = 'none';
				event.preventDefault();
			}
			
		}
	
	</script>
</head>

<body>
	
	<div id='totalDiv'>
	<div id= 'firstDiv'>
	<div id ='googleDiv'>
		<img id="logo" src="Logo.png">
	</div>
	<p id='login'>이름을 입력하세요</p>
	<p id='firstPtag'>Google 계정 이름 입력</p>
	<form action="./FindPassword" method="post">
		<div id='inputDiv'>
		<input id='idInput' type="text" name="firstName" 
			placeholder="성" onfocus="this.placeholder = ''" 
			onblur="this.placeholder = '성'"/>			
		<input id='idInput2' type="text" name="lastName" 
			placeholder="이름" onfocus="this.placeholder = ''" 
			onblur="this.placeholder = '이름'"/>
		</div>
		
		<span id='hide' style="display:none; color: red;">
		<img id='hide2'src="./icon.png" style="display: none; float: left;">
		이름을 입력하세요.</span>
		<span id='hide3' style="display:block; color: red;">
     	<img id='hide4'src="./icon.png" style="display: block; float: left;">
      	잘못된 이름입니다. 이름을 다시 확인해주세요.</span>    				
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