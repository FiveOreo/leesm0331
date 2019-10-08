<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<jsp:include page="top.jsp" />
<head>
<meta charset="UTF-8">
<title>자유 게시판</title>
</head>
<body>
	<div class="row">
		<div id="wrap" align="center" class="col-md-10 col-md-offset-1">
			<h1>게시글 리스트</h1>
			<table class="table">
				<tr>
					<td colspan="5" style="border: white; text-align: right"><a
						href="BoardServlet?command=board_write_form">게시글 등록</a></td>
				</tr>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회</th>
				</tr>
				<c:forEach var="board" items="${boardList }">
					<tr class="record">
						<td>${board.board_num}</td>
						<td><a
							href="BoardServlet?command=board_view&num=${board.board_num }">
								${board.board_title }</a></td>
						<td>${board.board_name }</td>
						<td><fmt:formatDate value="${board.writedate }" /></td>
						<td>${board.readcount }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
<jsp:include page="foot.jsp" />
</html>