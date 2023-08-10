<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinFifth</title>
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
		<h2>보안문자 입력</h2>
		<a>휴대전화로 인증 코드 받기</a><br>

			<select name="country">
    			<option value="">대한민국</option>
	    		<option value="">US</option>
	    		<option value="">UK</option>
	    		<option value="">France</option>
	    		<option value="">Germany</option>
	    		<option value="">Spain</option>
			</select> 
			<input type="text" name="phoneNum" placeholder='전화번호'><br>
	
			<a>Google에서 SMS(요금이 부과될 수 있음)를 통해 전화번호를 확인합니다.</a><br>
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