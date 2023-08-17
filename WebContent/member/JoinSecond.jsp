<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinSecond</title>
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

		#inputBoxSecond {
			width: 340px;
			height: 28px;
			font-size: 16px;
			padding-left: 12px;
			padding-right: 12px;
			padding-top: 6px;
			padding-bottom: 6px;
			border: 1px solid #DADCE0;
			border-radius: 4px;
			border: 0px;
			border-collapse: collapse;
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
      var yearObj = document.getElementsByClassName("innerInput")[0];
      var monthObj = document.getElementsByClassName("innerInput")[1];
      var dayObj = document.getElementsByClassName("innerInput")[2];
      var genderObj = document.getElementsByName("gender")[0];
      var yearObjValue = document.getElementsByClassName("innerInput")[0].value;
      var monthObjValue = document.getElementsByClassName("innerInput")[1].value;
      var dayObjValue = document.getElementsByClassName("innerInput")[2].value;
      var genderObjValue = document.getElementsByName("gender")[0].value;
      var firstHiddenATagObj = document.getElementById("firstHiddenATag");
      var secondHiddenATagObj = document.getElementById("secondHiddenATag");

      // if ((yearObjValue + monthObjValue + dayObjValue) == "" && genderObjValue == "") {
      //   yearObj.style.border = "2px solid red";
      //   monthObj.style.border = "2px solid red";
      //   dayObj.style.border = "2px solid red";
      //   genderObj.style.border = "2px solid red";
      //   firstHiddenATagObj.style.display = "block";
      //   firstHiddenATagObj.style.fontSize = "12px";
      //   firstHiddenATagObj.style.color = "red";
      //   secondHiddenATagObj.style.display = "block";
      //   secondHiddenATagObj.style.fontSize = "12px";
      //   secondHiddenATagObj.style.color = "red";
      //   return false;
      // }

      if(genderObjValue == "") {
      //  genderObj.style.border = "2px solid red";
      //  secondHiddenATagObj.style.display = "block";
      //   secondHiddenATagObj.style.fontSize = "12px";
      //   secondHiddenATagObj.style.color = "red";
        alert("비었음");
        return false;
      }

    }




      // if (yearObjValue >= 1900 && yearObjValue < 2023) {

      // }




   







    // function conditionCheck() {
    //   var ownNameObj = document.getElementsByClassName("inputBox")[1];
    //   var familyNameValue = document.getElementsByClassName("inputBox")[0].value;
    //   var ownNameValue = document.getElementsByClassName("inputBox")[1].value;
    //   var firstHiddenATagObj = document.getElementById("firstHiddenATag");
    //   var secondHiddenATagObj = document.getElementById("secondHiddenATag");

    //   if (ownNameValue == "") {
    //     ownNameObj.style.border = "2px solid red";
    //     firstHiddenATagObj.style.display = "block";
    //     firstHiddenATagObj.style.fontSize = "12px";
    //     firstHiddenATagObj.style.color = "red";
    //     return false;
    //   } else if (ownNameValue != "") {
    //     if ((familyNameValue + ownNameValue).length > 20) {
    //       ownNameObj.style.border = "2px solid red";
    //       firstHiddenATagObj.style.display = "none";
    //       secondHiddenATagObj.style.display = "block";
    //       secondHiddenATagObj.style.fontSize = "12px";
    //       secondHiddenATagObj.style.color = "red";
    //       return false;
    //     } else {
    //       return true;
    //     }
    //   }
    // }
  </script>
</head>

<body>
	<div id="entire">
		<div id="frame">
			<div>
				<img id="logo" src="Logo.png">
				<h1>기본 정보</h1>
				<div id="secondTitle">
					<span>생일과 성별을 입력하세요.</span><br>
				</div>
				<form action="add2" method="post" onclick="return conditionCheck()">
					<div>
						<input class="innerInput" type="text" name="year" placeholder='연도'>
						<select class="innerInput" name="month">
							<option value="none" selected>월</option>
							<option value="01">1월</option>
							<option value="02">2월</option>
							<option value="03">3월</option>
							<option value="04">4월</option>
							<option value="05">5월</option>
							<option value="06">6월</option>
							<option value="07">7월</option>
							<option value="08">8월</option>
							<option value="09">9월</option>
							<option value="10">10월</option>
							<option value="11">11월</option>
							<option value="12">12월</option>
						</select>
						<input class="innerInput" type="text" name="day" placeholder='일'><br>
						<a id="firstHiddenATag" style="display: none">&nbsp;? 생년월일을 정확히 입력해 주세요.</a>
						<div id="innerSelect">
							<select id="inputBoxSecond" name="gender">
								<option value="">성별</option>
								<option value="남성">남성</option>
								<option value="여성">여성</option>
								<option value="기타">기타</option>
							</select><br>
							<a id="secondHiddenATag" style="display: none">&nbsp;? 성별을 선택하세요.</a>
						</div>
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