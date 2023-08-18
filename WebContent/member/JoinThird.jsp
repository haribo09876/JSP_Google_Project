<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinThird</title>
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
		
		hr {
			background: #DADCE0;
			height: 1px;
			border: 0;
		}
		
		.inputBox {
			height: 30px;
			font-size: 13px;
			display: table-cell;
			vertical-align: middle;
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
			width: 76px;
			height: 36px;
			color: white;
			background-color: rgb(26, 115, 232);
			border: 1px solid #DADCE0;
			border-collapse: collapse;
			border-radius: 4px;
			font-size: 14px;
			font-weight: 400;
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
			margin-bottom: 26px;
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
			margin-top: 8px;
		}
		
		#emailInputBox {
			width: 336px;
			height: 28px;
			font-size: 16px;
			padding-left: 14px;
			padding-right: 14px;
			padding-top: 12px;
			padding-bottom: 12px;
			margin-top: 8px;
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
    function randomString() {
       var firstInputBoxObj = document.getElementsByClassName("inputBox")[0];
       var secondInputBoxObj = document.getElementsByClassName("inputBox")[1];
        
      const chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz";
      const stringLength = 6
      var randomstring1 = "";
      var randomstring2 = "";
      
      for (let i = 0; i < stringLength; i++) {
        const rnum = Math.floor(Math.random() * chars.length)
        randomstring1 += chars.substring(rnum, rnum + 1)
      }
      for (let i = 0; i < stringLength; i++) {
          const rnum = Math.floor(Math.random() * chars.length)
          randomstring2 += chars.substring(rnum, rnum + 1)
	  }      
      
      firstInputBoxObj.setAttribute("value", randomstring1);
      firstInputBoxObj.innerHTML = randomstring1;

      secondInputBoxObj.setAttribute("value", randomstring2);
      secondInputBoxObj.innerHTML = randomstring2;
    }

    randomString();
	</script>
</head>

<body>
	<div id="entire">
		<div id="frame">
			<div>
				<img id="logo" src="Logo.png">
				<h1>Gmail 주소 선택하기</h1>
				<div id="secondTitle">
					<span>Gmail 주소를 선택하거나 새 Gmail 주소를 만드세요.</span><br>
				</div>
				<form action="add3" method="post" onsubmit="">
					<div>
						<input id="email1" class="inputBox" type="radio" name="email" value="random11">&nbsp;&nbsp;random11<br>
						<hr>
						<input id="email2" class="inputBox" type="radio" name="email" value="random12">&nbsp;&nbsp;random12<br>
						<input id="emailInputBox" type="text" name="email" placeholder="새 이메일주소"><br>
					</div>
					<div id="divButton">
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