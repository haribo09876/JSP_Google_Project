<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinFirst</title>
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
		
		#divButton {
			width: 368px;
			height: 48px;
			padding-top: 32px;
		}

		#button {
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

		#footer {
			width: 448px;
			height: 48px;
			padding-top: 20px;
			font-size: 13px;
		}
	</style>
	<script>
		function conditionCheck() {
			var ownNameObj = document.getElementsByClassName("inputBox")[1];
			var familyNameValue = document.getElementsByClassName("inputBox")[0].value;
			var ownNameValue = document.getElementsByClassName("inputBox")[1].value;
			var firstHiddenATagObj = document.getElementById("firstHiddenATag");
			var secondHiddenATagObj = document.getElementById("secondHiddenATag");
			
			if (ownNameValue == "") {
				ownNameObj.style.border = "2px solid red";
				firstHiddenATagObj.style.display = "block";
				firstHiddenATagObj.style.fontSize = "12px";
				firstHiddenATagObj.style.color = "red";
				return false;
			} else if (ownNameValue != "") {
				if((familyNameValue+ownNameValue).length > 20) {
					ownNameObj.style.border = "2px solid red";
					firstHiddenATagObj.style.display = "none";
					secondHiddenATagObj.style.display = "block";
					secondHiddenATagObj.style.fontSize = "12px";
					secondHiddenATagObj.style.color = "red";
					return false;
				} else {
					return true;
				}
      		}
    	}
	</script>
</head>

<body>
	<div id="entire">
		<div id="frame">
			<div>
				<img id="logo" src="Logo.png">
				<h1>Google 계정 만들기</h1>
				<div id="secondTitle">
					<span>이름을 입력하세요.</span><br>
				</div>
				<form action="add1" method="post" onsubmit="return conditionCheck()">
					<div>
						<input class="inputBox" type="text" name="familyName" placeholder="성(선택사항)"><br>
						<input class="inputBox" type="text" name="ownName" placeholder="이름"><br>
						<a id="firstHiddenATag" style="display: none">&nbsp;? 이름을 입력하세요.</a>
						<a id="secondHiddenATag" style="display: none">&nbsp;? 이름의 길이를 다시 확인하세요.</a>
					</div>
					<div id="divButton">
						<input id="button" type="submit" value="다음">
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