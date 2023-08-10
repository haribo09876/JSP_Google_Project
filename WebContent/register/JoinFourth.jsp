<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinFourth</title>
	<style type="text/css">
		#frame {
			height: 416px;
			width: 368px; 
			padding-top: 48px;
			padding-left: 40px;
			padding-right: 40px;
			padding-bottom: 36px;
			border: 1px solid gray;
		}
	</style>
	<script type="text/javascript">

	</script>
</head>
<body>
	<div id="frame">
		<h2>안전한 비밀번호 만들기</h2>
		<a>문자, 숫자, 기호를 조합하여 안전한 비밀번호를 만드세요.</a><br>

			<input type="text" name="password" placeholder="비밀번호"><br>
			<input type="text" name="passwordCheck" placeholder="확인"><br>

			<input type="checkbox" name="ShowingPassword">비밀번호 표시<br>
			<input type="submit" value="다음">
	</div>
	
		<select name="language">
    		<option value="">한국어</option>
    		<option value="">English</option>
		</select>
		<a>도움말</a>
		<a>개인정보처리방침</a>
		<a>약관</a>	
</body>
</html>