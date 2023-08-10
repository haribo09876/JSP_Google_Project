<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 비밀번호입력</title>
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
	<h2>사용자이름</h2>
	<p id='firstPtag'>계정 이메일</p><br><br>
	<form action="./loginPassword" method="post">
		<div id='inputDiv'>
		<input id='idInput' type="text" name="email" placeholder="비밀번호 입력">
		</div>
		<label>
			<input type="checkbox" name="option1" value="value1">  비밀번호 표시
		</label>
		<br><br><br><br>

				
		
		<a id='thirdAtag'>비밀번호 찾기</a>		
		<input id='next' type="submit" value="다음">
		
	</form>
	
	</div>
	
</body>
</html>