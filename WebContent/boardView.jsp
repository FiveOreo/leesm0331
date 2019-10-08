<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 보기</title>
<script type="text/javascript" src="js/board.js"></script>
</head>
<jsp:include page="top.jsp" />
<body>
	<div class="container">
		<div class="row  m-4 p-3">
			<div id="wrap" align="center" class="col-md-10 col-md-offset-1">
				<h1>게시글 상세보기</h1>
				<table class="table">
					<tr>
						<th>작성자</th>
						<td>${board.board_name}</td>
						<th>이메일</th>
						<td>${board.board_email}</td>
					</tr>
					<tr>
						<th>작성일</th>
						<td><fmt:formatDate value="${board.writedate}"
								pattern="yyyy-mm-dd H:mm:ss" /></td>
						<th>조회수</th>
						<td>${board.readcount}</td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan="3"><pre>${board.board_title}</pre></td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3"><pre>${board.board_content}</pre></td>
					</tr>
				</table>
				</div>
				</div>
				<div class="row">
				<div class="col-md-10 col-md-offset-1" style="margin-bottom: 2em">
				<br> <input type="button" value="게시글 수정"
					onclick="openwin('BoardServlet?command=board_check_pass_form&num=${board.board_num}&mode=update','update')" />
				<input type="button" value="게시글 삭제"
					onclick="openwin('BoardServlet?command=board_check_pass_form&num=${board.board_num}&mode=delete','delete')" />
				<input type="button" value="게시글 리스트"
					onclick="location.href='BoardServlet?command=board_list'" /> <input
					type="button" value="게시글 등록"
					onclick="location.href='BoardServlet?command=board_write_form'" />
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
function openwin(url, mode){
	window.open(url,mode,'width=400, height=400, left=100, top=200')
}
</script>
<jsp:include page="foot.jsp" />
</html>
