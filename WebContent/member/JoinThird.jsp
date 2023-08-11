<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinThird</title>
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
		<h2>Gmail 주소 선택하기</h2>
		<a>Gmail 주소를 선택하거나 새 Gmail 주소를 만드세요.</a><br>
		<form action="add3" method='post'>
			<input type="radio" name="email">emailSuggestionFirst<br>
			<input type="radio" name="email">emailSuggestionSecond<br>
			<input type="radio" name="email">emailNew<br>
			<input type="submit" name="기존 이메일 사용">기존 이메일 사용<br>
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
<%-- 	<% --%>
<!-- 		String email = request.getParameter("email"); -->

<!-- 		session.setAttribute("email", email); -->
<%-- 	%> --%>
</body>

</html>