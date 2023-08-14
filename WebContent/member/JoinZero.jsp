<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinZero</title>
	<style type="text/css">
		h1 {
			text-align: center;
			color: rgb(32, 33, 36);
			margin-top: 16px;
			font-family: Google Sans, Noto Sans Myanmar UI, arial, sans-serif;
			font-size: 24px;
			font-weight: 400;
			line-height: 1.3333;
			margin-bottom: 0;
			margin-top: 0;
			word-break: break-word;
		}
		
		select {
			width: 50px;
			height: 50px;
			border: 0px;
			border-collapse: collapse;
		}
		
		.inputBox {
			width: 336px;
			height: 28px;
			font-size: 16px;
			padding-left: 14px;
			padding-right: 14px;
			padding-top: 12px;
			padding-bottom: 12px;
			margin-top: 24px;
			border: 1px solid #DADCE0;
			border-radius: 4px;
		}
		
		.thirdTitle {
			margin-top: 24px;
			color: rgb(32, 33, 36);
			font-family: roboto, "Noto Sans Myanmar UI", arial, sans-serif;
			font-size: 14px;
			font-weight: 400;
			letter-spacing: 0.1px;
			line-height: 1.5;
		}
		
		.innerInput {
			width: 94px;
			height: 48px;
			border: 1px solid #DADCE0;
			border-radius: 4px;
			margin-top: 24px;
			margin-right: 20px;
		}
		
		.footerText {
			padding-left: 27px;
		}
		
		.button {
			width: 76px;
			height: 36px;
			background-color: rgb(26, 115, 232);
			border: 0px;
			border-collapse: collapse;
			border-radius: 4px;
			font-size: 14px;
			font-weight: 400;
			color: white;
			float: right;
		}
		
		.simpleButton {
			border: 0px;
			border-collapse: collapse;
			background-color: white;
			font-size: 14px;
			font-weight: 400;
			color: rgb(26, 115, 232);
		}
		
		#frame {
			width: 368px;
			height: 416px;
			padding-top: 48px;
			padding-left: 40px;
			padding-right: 40px;
			padding-bottom: 36px;
			border: 1px solid #DADCE0;
			border-radius: 7px;
		}
		
		#logo {
			width: 75px;
			height: 41px;
			padding-left: 150px;
		}
		
		#secondTitle {
			margin-top: 8px;
			text-align: center;
			color: rgb(32, 33, 36);
			font-family: roboto, "Noto Sans Myanmar UI", arial, sans-serif;
			font-size: 16px;
			font-weight: 400;
			letter-spacing: 0.1px;
			line-height: 1.5;
		}
		
		#innerSelectDiv {
			width: 364px;
			height: 52px;
			border: 1px solid #DADCE0;
			border-radius: 4px;
			padding-left: 14px;
			padding-right: 14px;
			padding-top: 12px;
			padding-bottom: 12px;
			margin-top: 24px;
		}
		
		#innerSelect {
			width: 336px;
			height: 28px;
			font-size: 16px;
			padding-left: 14px;
			padding-right: 14px;
			padding-top: 12px;
			padding-bottom: 12px;
			border: 1px solid #DADCE0;
			border-radius: 4px;
			margin-top: 24px;
		}
		
		#inputBoxSecond {
			width: 200px;
			height: 28px;
			font-size: 16px;
			padding-left: 14px;
			padding-right: 14px;
			padding-top: 12px;
			padding-bottom: 12px;
			margin-top: 24px;
			border: 1px solid #DADCE0;
			border-radius: 4px;
		}
		
		#divButton {
			width: 368px;
			height: 48px;
			padding-top: 32px;
		}
		
		#footer {
			width: 448px;
			height: 48px;
			padding-top: 20px;
			font-size: 13px;
		}
</style>
<script>
	
</script>
</head>

<body>
	<div id="frame">
		<div>
			<img id="logo" src="Logo.png">
			<h1>로그인</h1>
			<div id="secondTitle">
				<span>Google 계정 사용</span><br>
			</div>
			<form action="loginPwd" method="post">
				<div>
					<input class="inputBox" type="text" name="emailOrPhoneNo"
						placeholder="이메일 또는 휴대전화"><br>
				</div>
				<input class="simpleButton" type="button" value="이메일을 잊으셨나요?">
				<div class="thirdTitle">
					<span>내 컴퓨터가 아닌가요? 시크릿 브라우징 창을 사용하여 로그인하세요.</span> <input
						class="simpleButton" type="button" value="자세히 알아보기">
				</div>
				<div id="divButton">
					<input class="simpleButton" type="button" value="계정 만들기"> <input
						class="button" type="submit" value="다음">
				</div>
			</form>
		</div>
	</div>
	<div id="footer">
		<select name="language">
			<option value="">한국어</option>
			<option value="">English</option>
		</select> <a class="footerText">도움말</a> <a class="footerText">개인정보처리방침</a> <a
			class="footerText">약관</a>
	</div>
</body>

</html>