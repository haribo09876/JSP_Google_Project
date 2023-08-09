<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinSixth</title>
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
		<h1>코드 입력</h1>
		<h2>6자리 인증 코드를 입력하여 문자 메시지를 받았음을 확인하세요.</h2>
		
			<input type="text" name="inputCode"><br>
			<input type="submit" value="새 코드 받기">
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