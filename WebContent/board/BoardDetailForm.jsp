<%@ page language='java' contentType='text/html; charset=UTF-8'
    pageEncoding='UTF-8'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset='UTF-8'>
	<title>게시판 글쓰기</title>
	
	<style type='text/css'>
		#container{
			width: 620px;
			height:300px;
		}
		
		#pageTitle{
			text-align: center;
		}
		
		table, td{
			border: 1px solid black;
		}
		
		.items{
			font-weight: bold;
			text-align: center;
			width: 100px;
		}
		
		#itemsInput{
			width: 500px;
		}
		
		#contents{
			overflow-y: scroll;
			overflow-x: hidden;
			resize: none;
		}
		
		.buttonAline{
			float: right;
			margin-top: 20px;
			margin-right: 10px;
		}
	</style>
	
	<script type='text/javascript'>
		function pageMoveListFnc() {
			location.href = './list';
		}
		
		function pageMoveDeleteFnc(pno, postPwd) {
			var postPwdCheck = document.getElementsByName('postPwd')[0].value;
			
			if (postPwd == postPwdCheck) {
				var url = './delete?pno=' + pno;
				location.href= url;
			} else {
				alert("비밀번호가 일치하지 않습니다.");
			}
		}
		
		function pageMoveUpdateFnc(pno, postPwd) {
			var postPwdCheck = document.getElementsByName('postPwd')[0].value;
			
			if (postPwd == postPwdCheck) {
				var url = './update?pno=' + pno;
				location.href= url;
			} else {
				alert("비밀번호가 일치하지 않습니다.");
			}
		}
		
	</script>
</head>

<body>
	<jsp:useBean 
		id="boardDto"
		scope="request"
		class="board.dto.BoardDto"
		type="board.dto.BoardDto"
	/>
	
	<div id='container'>
		<p id='pageTitle'>게시글 상세</p>
		<form action='./detail' method='post'>
			<table>
				<tr>
					<td class='items'>제목</td>
					<td id='itemsInput'>
						<input type='text' name='title' value='${requestScope.boardDto.title}' readonly='readonly'>
					</td>
				</tr>
				<tr>
					<td class='items'>작성자</td>
					<td>
						<input type='text' name='editor' value='${boardDto.editor}' readonly='readonly'>
					</td>
				</tr>
				<tr>
					<td class='items'>비밀번호</td>
					<td>
						<input type='password' name='postPwd'>
					</td>
				</tr>
				<tr>
					<td colspan='2'>
						<textarea id='contents' rows='20' cols='70' name='contents' readonly='readonly' required>${boardDto.contents}</textarea>
					</td>
				</tr>
			</table>
			<input type='button' class='buttonAline' value='삭제' onclick='pageMoveDeleteFnc(${boardDto.pno}, "${boardDto.postPwd}");' />
			<input type='button' class='buttonAline' value='수정' onclick='pageMoveUpdateFnc(${boardDto.pno}, "${boardDto.postPwd}");' />
			<input type='button' class='buttonAline' value='목록' onclick='pageMoveListFnc();' />
		</form>
	</div>
</body>
</html>