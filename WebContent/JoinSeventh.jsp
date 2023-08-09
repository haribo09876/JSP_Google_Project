<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinSeventh</title>
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
		<h1>복구 이메일 추가</h1>
		<h2>사용자 계정에서 비정상적인 활동이 감지되거나 사용자가 계정에 액세스할 수 없는 경우 Google에서 사용자에게 연락하기 위해 사용하는 이메일 주소입니다.</h2>

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