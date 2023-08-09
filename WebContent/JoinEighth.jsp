<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinEighth</title>
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
		<h1>전화번호 추가</h1>
	
			<select name="country">
	    		<option value="">대한민국</option>
	    		<option value="">US</option>
	    		<option value="">UK</option>
	    		<option value="">France</option>
	    		<option value="">Germany</option>
	    		<option value="">Spain</option>
			</select>
			
			<input type="text" name="phoneNum" placeholder='전화번호'><br>
		
		<h3>Google은 이 번호를 계정 보안 용도로만 사용합니다. 다른 사용자에게는 전화번호가 표시되지 않습니다. 나중에 다른 용도로도 이 번호를 사용할지 결정할 수 있습니다.</h2>

			<input type="text" name="recoveryEmail" placeholder='복구 이메일 주소'><br>
			<input type="submit" value="다음">
			<input type="submit" value="건너뛰기">
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