<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinEighth</title>
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
		<h2>전화번호 추가</h2>
	
			<select name="country">
	    		<option value="">대한민국</option>
	    		<option value="">US</option>
	    		<option value="">UK</option>
	    		<option value="">France</option>
	    		<option value="">Germany</option>
	    		<option value="">Spain</option>
			</select>
			
			<form action="add8" method='post'>
				<input type="number" name="phoneNo" placeholder='전화번호'>
				<a>Google은 이 번호를 계정 보안 용도로만 사용합니다. 다른 사용자에게는 전화번호가 표시되지 않습니다. 나중에 다른 용도로도 이 번호를 사용할지 결정할 수 있습니다.</a><br>
				<input type="submit" value="다음">
				<input type="submit" value="건너뛰기">
			</form><br>
	</div>

		<select name="language">
    		<option value="">한국어</option>
    		<option value="">English</option>
		</select>
		<a>도움말</a>
		<a>개인정보처리방침</a>
		<a>약관</a>
<%-- 	<% --%>
<!-- 		String phoneNo = request.getParameter("phoneNo"); -->

<!-- 		session.setAttribute("phoneNo", phoneNo); -->
<%-- 	%> --%>
</body>

</html>