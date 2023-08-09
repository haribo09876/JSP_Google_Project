<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinFifth</title>
	<style type="text/css">
		
	</style>
	<script type="text/javascript">

	</script>
</head>
<body>
	<h1>보안문자 입력</h1>
	<h2>휴대전화로 인증 코드 받기</h2>

		<select name="country">
    		<option value="">대한민국</option>
    		<option value="">US</option>
    		<option value="">UK</option>
    		<option value="">France</option>
    		<option value="">Germany</option>
    		<option value="">Spain</option>
		</select> 
		<input type="text" name="phoneNum" placeholder='전화번호'><br>
	
	<h3>Google에서 SMS(요금이 부과될 수 있음)를 통해 전화번호를 확인합니다.</h3>
		<input type="submit" name="next"><br>
	
		<select name="language">
    		<option value="">한국어</option>
    		<option value="">English</option>
		</select> 		
</body>
</html>