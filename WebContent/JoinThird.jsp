<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinThird</title>
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
		<h1>Gmail 주소 선택하기</h1>
		<h2>Gmail 주소를 선택하거나 새 Gmail 주소를 만드세요.</h2>

			<input type="radio" name="firstIdSuggestion">firstIdSuggestion<br>
			<input type="radio" name="secondIdSuggestion">secondIdSuggestion<br>
			<input type="radio" name="thirdIdSuggestion">thirdIdSuggestion<br>
			<input type="submit" name="기존 이메일 사용">기존 이메일 사용<br>
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