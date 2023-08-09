<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinSecond</title>
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
		<h1>기본 정보</h1>
		<h2>생일과 성별을 입력하세요.</h2>

			연도
			<input type="text" name="year">
			월
			<select name="month">
    			<option value="1">1월</option>
	    		<option value="2">2월</option>
	    		<option value="3">3월</option>
	    		<option value="4">4월</option>
	    		<option value="5">5월</option>
	    		<option value="6">6월</option>
	    		<option value="7">7월</option>
	    		<option value="8">8월</option>
	    		<option value="9">9월</option>
	    		<option value="10">10월</option>
	    		<option value="11">11월</option>
	    		<option value="12">12월</option>
			</select>
			일
			<input type="text" name="day"><br>
		
			성별
			<select name="gender">
	 			<option value="male" >남성</option>
	 			<option value="female">여성</option>
	 			<option value="female">기타</option>
			</select><br>
		
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