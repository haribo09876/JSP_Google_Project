<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>공지사항</title>
	
	<style type="text/css">
		#container{
			border: 1px solid black;
			width: 950px;
			margin: auto;
			text-align: center;
		}
		
		h2, p{
			text-align: left;
		}
		
		table, td{
			border: 1px solid black;
			border-collapse: collapse;
		}
		
		#lineDiv{
			background-color: gray;
			width: 950px;
			height: 5px;
		}
		
		#boardTdCustom1{
			text-align: center;
			width: 60px;		
		}
		
		#boardTdCustom2{
			text-align: center;
			width: 500px;		
		}
		
		.boardTdCustom3{
			text-align: center;
			width: 150px;		
		}
		
		#boardTdCustom4{
			text-align: center;
			width: 100px;		
		}
		
		#searchSelect{
			text-align: left;
			margin-left: 10px;
		}
		
	</style>
	
	<script type="text/javascript">
		function pageMoveAddFnc() {
			location="/board/add";
		}
	</script>
</head>

<body>
<jsp:include page="/Header.jsp"/>
	<div id="container">
		<h2>공지사항</h2>
		<div id="lineDiv"></div>
		<p>아람보감에서 알려드려요. 꼭 읽어주세요 :)</p>
		<table>
			<tr>
				<td id="boardTdCustom1">번호</td>
				<td id="boardTdCustom2">제목</td>
				<td class="boardTdCustom3">작성자</td>
				<td class="boardTdCustom3">작성일</td>
				<td id="boardTdCustom4">조회</td>
			</tr>
			<c:forEach var="boardDto" items="${boardList}">
				<tr>
					<td id="boardTdCustom1">${boardDto.pno}</td>
					<td id="boardTdCustom2">
						<a href='./detail?pno=${boardDto.pno}'>
							${boardDto.title}
						</a>
					</td>
					<td class="boardTdCustom3">${boardDto.editor}</td>
					<td class="boardTdCustom3">${boardDto.creDate}</td>
					<td id="boardTdCustom4">${boardDto.viewCount}</td>
				</tr>
			</c:forEach>
		</table>
		<form action="" id="searchSelect">
			<select>
				<option value="title">제목</option>
				<option value="editor">작성자</option>
			</select>
			<input type="text" name="searchKeyword">
			<input type="button" value="찾기">
		</form>
		<form action="add">
			<button onclick='pageMoveAddFnc();'>글쓰기</button>
		</form>
		<a>[이전]</a>
		<a>1</a>
		<a>[다음]</a>
		
	</div>
	
</body>
</html>