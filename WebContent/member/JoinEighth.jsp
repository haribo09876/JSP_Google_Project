<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinEighth</title>
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
			width: 180px;
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
			width: 180px;
			height: 36px;
			color: rgb(26, 115, 232);
			background-color: white;
			border: 1px solid #DADCE0;
			border-collapse: collapse;
			border-radius: 4px;
			font-size: 14px;
			font-weight: 400;
		}
		
		#entire {
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%,-50%);
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
			padding-left: 145px;
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
	<div id="entire">
		<div id="frame">
			<div>
				<img id="logo" src="Logo.png">
				<h1>전화번호 추가</h1>
				<select name="country">
					<option value="">대한민국</option>
					<option value="">US</option>
					<option value="">UK</option>
					<option value="">France</option>
					<option value="">Germany</option>
					<option value="">Spain</option>
				</select>
				<form action="add8" method="post">
					<div>
						<input id="inputBoxSecond" type="number" name="phoneNo"
							placeholder="전화번호"><br>
					</div>
					<div class="thirdTitle">
						<span>Google은 이 번호를 계정 보안 용도로만 사용합니다. 다른 사용자에게는 전화번호가 표시되지
							않습니다. 나중에 다른 용도로도 이 번호를 사용할지 결정할 수 있습니다.</span><br>
					</div>
					<div class="thirdTitle">
						<input class="button" type="submit" value="다음"> <input
							class="button" type="submit" value="건너뛰기">
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
	</div>
</body>

</html>