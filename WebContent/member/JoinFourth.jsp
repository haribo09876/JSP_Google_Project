<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinFourth</title>
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
    function pwdChange() {
      var firstPwd = document.getElementsByClassName("inputBox")[0];
      var secondPwd = document.getElementsByClassName("inputBox")[1];

      if (pwdCheck.checked == true) {
        firstPwd.setAttribute('type', 'text');
        secondPwd.setAttribute('type', 'text');
      } else {
        firstPwd.setAttribute('type', 'password');
        secondPwd.setAttribute('type', 'password');
      }
    }

    function conditionCheck() {
      var firstInputBoxObj = document.getElementsByClassName("inputBox")[0];
      var secondInputBoxObj = document.getElementsByClassName("inputBox")[1];
      var pwd1 = document.getElementsByClassName("inputBox")[0].value;
      var pwd2 = document.getElementsByClassName("inputBox")[1].value;
      var firstHiddenATagObj = document.getElementById("firstHiddenATag");
      var secondHiddenATagObj = document.getElementById("secondHiddenATag");
      var thridHiddenATagObj = document.getElementById("thirdHiddenATag");
      var fourthHiddenATagObj = document.getElementById("fourthHiddenATag");

      var num1 = pwd1.search(/[0-9]/g);
      var eng1 = pwd1.search(/[a-zA-Z]/ig);
      var spe1 = pwd1.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
      var num2 = pwd2.search(/[0-9]/g);
      var eng2 = pwd2.search(/[a-zA-Z]/ig);
      var spe2 = pwd2.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

      if (pwd1 == "") {
        firstInputBoxObj.style.border = "2px solid red";
        firstHiddenATagObj.style.display = "block";
        firstHiddenATagObj.style.fontSize = "12px";
        firstHiddenATagObj.style.color = "red";
        return false;
      } else if (pwd1 != "") {
        if (pwd2 == "") {
          secondInputBoxObj.style.border = "2px solid red";
          return false;
        } else if (pwd2 != "") {
          firstHiddenATagObj.style.display = "none";
          if (pwd1.length < 8 || pwd1.length > 20) {
            secondHiddenATagObj.style.display = "block";
            secondHiddenATagObj.style.fontSize = "12px";
            secondHiddenATagObj.style.color = "red";
            return false;
          } else if (pwd1.length >= 8 && pwd1.length <= 20) {
            if (pwd2.length < 8 || pwd2.length > 20) {
              return false;
            } else if (pwd1.length >= 8 && pwd1.length <= 20) {
              secondHiddenATagObj.style.display = "none";
              if (num1 < 0 || eng1 < 0 || spe1 < 0) {
                thirdHiddenATagObj.style.display = "block";
                thirdHiddenATagObj.style.fontSize = "12px";
                thirdHiddenATagObj.style.color = "red";
                return false;
              } else {
                if (num2 < 0 || eng2 < 0 || spe2 < 0) {
                  return false;
                } else {
                  thirdHiddenATagObj.style.display = "none";
                  if (pwd1 != pwd2) {
                    fourthHiddenATagObj.style.display = "block";
                    fourthHiddenATagObj.style.fontSize = "12px";
                    fourthHiddenATagObj.style.color = "red";
                    return false;
                  } else if (pwd1 == pwd2) {
                    fourthHiddenATagObj.style.display = "none";
                    return true;
                  }
                }
              }
            }
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
        <h1>안전한 비밀번호 만들기</h1>
        <div id="secondTitle">
          <span>문자, 숫자, 기호를 조합하여 안전한 비밀번호를 만드세요.</span><br>
        </div>
        <form action="add4" method="post" onsubmit="return conditionCheck()">
          <div>
            <input class="inputBox" type="password" name="pwd" placeholder="비밀번호"><br>
            <input class="inputBox" type="password" name="pwd" placeholder="비밀번호확인"><br>
            <input id="pwdCheck" type="checkbox" onchange="pwdChange();"> 비밀번호 표시<br>
            <a id="firstHiddenATag" style="display: none">&nbsp;? 비밀번호를 입력하세요.</a>
            <a id="secondHiddenATag" style="display: none">&nbsp;? 비밀번호는 8 ~ 24자리 이내로 입력해주세요.</a>
            <a id="thirdHiddenATag" style="display: none">&nbsp;? 영문,숫자, 특수문자를 혼합하여 입력해주세요.</a>
            <a id="fourthHiddenATag" style="display: none">&nbsp;? 비밀번호를 다시 확인하세요.</a>
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
      </select> <a class="footerText">도움말</a> <a class="footerText">개인정보처리방침</a> <a class="footerText">약관</a>
    </div>
  </div>
</body>

</html>