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
			width: 950px;
			margin: auto;
			text-align: center;
		}
		
		h2, p{
			text-align: left;
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
		
		#addButton{
			text-align: right;
			margin-right: 30px;
		}
		
		#subDiv1{
			width: 475px;
			float: left;
		}
		
		#subDiv2{
			width: 475px;
			float: right;
		}
		
		a {
            cursor: pointer;
        }
		
	</style>
	
	<script type="text/javascript">
		function pageMoveAddFnc() {
			location="/board/add";
		}
		
		function moveListFnc(n) {
			var num = n.innerHTML;
			location.href = "./list?page=" + num;
		}
		
		function nextFnc(pln, tp) {
			pln += 1;
			if (pln > tp) {
				pln = tp;
			}
			
			location.href = "./list?page=" + pln;
		}
		
		function prevFnc(psn) {
			psn -= 1;
			if (psn < 1) {
				psn = 1;
			}
			
			location.href = "./list?page=" + psn;
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
			<c:forEach var="boardDto" items="${boardList}" begin="${pagesSet-5}" end="${pagesSet-1}">
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
		<div id="subDiv1">
			<form action="" id="searchSelect">
				<select>
					<option value="title">제목</option>
					<option value="editor">작성자</option>
				</select>
				<input type="text" name="searchKeyword">
				<input type="button" value="찾기">
			</form>
		</div>
		<div id="subDiv2">
			<form action="add" id="addButton">
				<button onclick='pageMoveAddFnc();'>글쓰기</button>
			</form>
		</div>
		<div>
			<a onclick="prevFnc(${pageStartNum});">[이전]</a>
			<c:forEach var="pagesNum" begin="${pageStartNum}" end="${pageLastNum}">
				<a onclick="moveListFnc(this);">${pagesNum}</a>
			</c:forEach>
			<a onclick="nextFnc(${pageLastNum}, ${totalPages});">[다음]</a>
		</div>
	</div>
</body>
</html>