<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinSecond</title>
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
		<h2>기본 정보</h2>
		<a>생일과 성별을 입력하세요.</a><br>
		<form action="add2" method='post'>
			<input type="text" name="year" placeholder='연도'>
			<select name="month">
				<option value="none" selected>월</option>
    			<option value="01">1월</option>
	    		<option value="02">2월</option>
	    		<option value="03">3월</option>
	    		<option value="04">4월</option>
	    		<option value="05">5월</option>
	    		<option value="06">6월</option>
	    		<option value="07">7월</option>
	    		<option value="08">8월</option>
	    		<option value="09">9월</option>
	    		<option value="10">10월</option>
	    		<option value="11">11월</option>
	    		<option value="12">12월</option>
			</select>
			<input type="text" name="day" placeholder='일'><br>
			<select name="gender">
				<option value="none" selected>성별</option>
	 			<option value="남성" >남성</option>
	 			<option value="여성">여성</option>
	 			<option value="기타">기타</option>
			</select><br>
			<input type="submit" value="다음">
		</form>
	</div>
	<div>
		<select name="language">
    		<option value="">한국어</option>
    		<option value="">English</option>
		</select>
		<a>도움말</a>
		<a>개인정보처리방침</a>
		<a>약관</a>
	</div>
</body>
</html>