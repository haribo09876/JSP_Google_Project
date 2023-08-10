<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 아이디입력</title>
	<style type="text/css">
		#firstDiv{
			border: 1px solid gray;
			height: 416px;
			width: 400px; 
			padding: 48px 40px 36px;
			
			
		}
		
		h2, #firstPtag, #inputDiv{
			text-align: center;
		}
				
		#firstAtag, #secondAtag, #thirdAtag{
			color: blue;
		}
		
		#next{
			font-size: 15px;
			height: 40px;
			width: 80px;
			color: white;
			background-color: blue;
			float: right;
		}
		
		
		
		#idInput{
			width: 370px;
			height: 50px;
			font-size: 20px;
			padding-left: 20px;
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
	
	
	</style>
</head>

<body>
	<div id= 'firstDiv'>
	<div id ='googleDiv'>
		<a id='firstGoogle'>G</a><a id='secondGoogle'>o</a><a id='thirdGoogle'>o</a><a id='fourthGoogle'>g</a><a id='fifthGoogle'>l</a><a id='sixthGoogle'>e</a>
	</div>
	<h2>로그인</h2>
	<p id='firstPtag'>Google 계정 사용</p>
	<form action="./login" method="post">
		<div id='inputDiv'>
		<input id='idInput' type="text" name="email" placeholder="이메일 또는 휴대전화">
		</div>
		<br>
		<a id='firstAtag'>이메일을 잊으셨나요?</a><br><br>				
		<p>내 컴퓨터가 아닌가요? 게스트 모드를 사용하여 비공개</p>	
		<a>로 로그인하세요.</a>
		<a id='secondAtag'>자세히 알아보기</a><br><br>
		<a id='thirdAtag'>계정 만들기</a>		
		<input id='next' type="submit" value="다음">
		
	</form>
	
	</div>
	
</body>
</html>