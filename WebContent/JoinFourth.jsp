<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinFourth</title>
	<style type="text/css">
		#frame {
		border: 1px solid black;
		}		
	</style>
	<script type="text/javascript">

	</script>
</head>
<body>
	<div id="frame">
		<h1>안전한 비밀번호 만들기</h1>
		<h2>문자, 숫자, 기호를 조합하여 안전한 비밀번호를 만드세요.</h2>

			비밀번호
			<input type="text" name="password"><br>
			확인
			<input type="text" name="passwordCheck"><br>

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