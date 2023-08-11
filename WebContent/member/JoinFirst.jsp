<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinFirst</title>
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
		<h2>Google 계정 만들기</h2>
		<a>이름을 입력하세요.</a><br>

		<form action="add1" method='post'>
			<input type="text" name="familyName" placeholder='성(선택사항)'><br>
			<input type="text" name="ownName" placeholder='이름'><br>
			<input type="submit" value="다음">
		</form>
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