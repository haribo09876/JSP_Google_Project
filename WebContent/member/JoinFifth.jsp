<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinFifth</title>
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
			width: 250px;
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
			width: 250px;
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
		
		#countrySelect {
			width: 80px;
			border: 0px;
			border-collapse: collapse;
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
    function conditionCheck() {
      var tempPhoneNum = document.getElementById("inputBoxSecond").value;
      var regExpNum = /^[0-9]*$/;
      var inputBoxSecondObj = document.getElementById("inputBoxSecond");
      var firstHiddenATagObj = document.getElementById("firstHiddenATag");
      var secondHiddenATagObj = document.getElementById("secondHiddenATag");
      var thridHiddenATagObj = document.getElementById("thirdHiddenATag");

      if (tempPhoneNum == "") {
        // alert("값이 비어있습니다");
        firstInputBoxObj.style.border = "2px solid red";
        firstHiddenATagObj.style.display = "block";
        firstHiddenATagObj.style.fontSize = "12px";
        firstHiddenATagObj.style.color = "red";
        return false;
      } else if (tempPhoneNum != "") {
        firstHiddenATagObj.style.display = "none";
        if (!regExpNum.test(tempPhoneNum)) {
          // alert("숫자만 입력 가능합니다");
          secondHiddenATagObj.style.display = "block";
          secondHiddenATagObj.style.fontSize = "12px";
          secondHiddenATagObj.style.color = "red";
          return false;
        } else if (regExpNum.test(tempPhoneNum)) {
          secondHiddenATagObj.style.display = "none";
          if (tempPhoneNum.length != 10) {
            // alert("번호는 10자리 숫자입니다");
            thirdHiddenATagObj.style.display = "block";
            thirdHiddenATagObj.style.fontSize = "12px";
            thirdHiddenATagObj.style.color = "red";
            return false;
          } else if (tempPhoneNum.length == 10) {
            // alert("넘어가나?");
            thirdHiddenATagObj.style.display = "none";
            return true;
          }
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
				<h1>보안문자 입력</h1>
				<div class="thirdTitle">
					<span>휴대전화로 인증 코드 받기</span><br>
				</div>

				<form action="add5" method="post" onsubmit="return conditionCheck()">
					<div>
						<select id="countrySelect" name="country">
							<option value="">대한민국</option>
							<option value="">US</option>
							<option value="">UK</option>
							<option value="">France</option>
							<option value="">Germany</option>
							<option value="">Spain</option>
						</select>
						<input id="inputBoxSecond"  class="inputBox" type="text" name="tempPhoneNum"
							placeholder="전화번호"><br>
					</div>
					<div class="thirdTitle">
						<span>Google에서 SMS(요금이 부과될 수 있음)를 통해 전화번호를 확인합니다.</span><br>
					</div>
					<div class="thirdTitle">
						<input class="button" type="submit" value="다음">
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