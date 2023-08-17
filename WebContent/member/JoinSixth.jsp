<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinSixth</title>
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
		
		#newCode {
			border: 0px;
			border-collapse: collapse;
			background-color: white;
			font-size: 14px;
			font-weight: 400;
			color: rgb(26, 115, 232);
		}
		
		#footer {
			width: 448px;
			height: 48px;
			padding-top: 20px;
			font-size: 13px;
		}
</style>
  <script>
    function verCodeFnc() {
      randomVerCode = Math.floor((Math.random() * (999999 - 100000) + 100000));
    }

    verCodeFnc();

    function checkVerCode() {
      alert(randomVerCode);
    }

    checkVerCode();

    function conditionCheck() {
      var inputBoxObj = document.getElementsByClassName("inputBox")[0];
      var inputCode = document.getElementsByClassName("inputBox")[0].value;
      var firstHiddenATagObj = document.getElementById("firstHiddenATag");
      var secondHiddenATagObj = document.getElementById("secondHiddenATag");
      var thirdHiddenATagObj = document.getElementById("thirdHiddenATag");

      if (inputCode == "") {
        // alert("인증 코드를 입력하세요.");
        inputBoxObj.style.border = "2px solid red";
        firstHiddenATagObj.style.display = "block";
        firstHiddenATagObj.style.fontSize = "12px";
        firstHiddenATagObj.style.color = "red";
        return false;
      } else if (inputCode != "") {
        firstHiddenATagObj.style.display = "none";
        if (inputCode.length != 6) {
          secondHiddenATagObj.style.display = "block";
          secondHiddenATagObj.style.fontSize = "12px";
          secondHiddenATagObj.style.color = "red";
          return false;
        } else if (inputCode.length == 6) {
          secondHiddenATagObj.style.display = "none";
          if (inputCode != randomVerCode) {
            // alert("코드가 일치하지 않습니다");
            thirdHiddenATagObj.style.display = "block";
            thirdHiddenATagObj.style.fontSize = "12px";
            thirdHiddenATagObj.style.color = "red";
            return false;
          } else if (inputCode == randomVerCode) {
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
				<h1>코드 입력</h1>
				<div class="thirdTitle">
					<span>6자리 인증 코드를 입력하여 문자 메시지를 받았음을 확인하세요.</span><br>
				</div>
      <form action="add6" method="post" onsubmit="return conditionCheck()">
        <div>
          <input class="inputBox" type="text" name="verCode" placeholder="코드 입력"><br>
          <a id="firstHiddenATag" style="display: none">&nbsp;? 인증 코드를 입력하세요.</a>
          <a id="secondHiddenATag" style="display: none">&nbsp;? 코드는 6자리 숫자입니다.</a>
          <a id="thirdHiddenATag" style="display: none">&nbsp;? 코드가 일치하지 않습니다.</a>
        </div>
        <div id="divButton">
          <input id="newCode" type="button" value="코드 다시 확인" onclick="checkVerCode()">
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