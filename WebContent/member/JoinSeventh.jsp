<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinSeventh</title>
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

		.footerText {
			padding-left: 27px;
		}
		
		.innerInput {
			width: 94px;
			height: 48px;
			border: 1px solid #DADCE0;
			border-radius: 4px;
			margin-top: 24px;
			margin-right: 20px;
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
			<h1>복구 이메일 추가</h1>
			<div id="secondTitle">
				<span>사용자 계정에서 비정상적인 활동이 감지되거나 사용자가 계정에 액세스할 수 없는 경우 Google에서 사용자에게 연락하기 위해 사용하는 이메일 주소입니다.</span><br>
			</div>
			<form action="add7" method='post'>
				<div>
					<input class="inputBox" type="text" name="recoveryEmail" placeholder="복구 이메일 주소"><br>
				</div>
				<div id="divButton">
					<input class="button" type="submit" value="다음">
					<input class="button" type="submit" value="건너뛰기">
				</div>
			</form>
		</div>
	</div>
	<div id="footer">
		<select name="language">
			<option value="">한국어</option>
			<option value="">English</option>
		</select>
		<a class="footerText">도움말</a>
		<a class="footerText">개인정보처리방침</a>
		<a class="footerText">약관</a>
	</div>
	</div>
</body>

</html>