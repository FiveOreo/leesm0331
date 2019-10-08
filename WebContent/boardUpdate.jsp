<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="top.jsp" />
<head>
<meta charset="UTF-8">
<script type="text/javascript">
function boardCheck(){
	if(document.frm.name.value.lenghth ==0){
	 alert("작성자를 입력하세요");
	 return false;
	}
	if(document.frm.pass.value.length ==0){
		alert("비밀번호를 입력하세요");
		return false;
	}
	if(document.frm.title.value.length ==0){
		alert("제목을 입력하세요");
		return false;
	}
	return true;
}
function open_win(url,name){
	window.open(url,name, "width=500, height=230");
}
function passCheck(){
	if(document.frm.pass.value.length ==0){
		alert("비밀번호를 입력하세요");
		return false;
	}
	return false;
}
</script>
<title>Insert title here</title>
</head>
<body>
	<div id="wrap" align="center">
	<h1>게시글 수정</h1>
	<form name="frm" method="get" action="BoardServlet">
		<input type="text" name="command" value="board_update">
		<input type="text" name="num" value="${param.num}">
		<table>
			<tr>
				<th>작성자</th>
				<td><input type="text" size="12" name="name" value="${board.board_name}">* 필수</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" size="12" name="pass">* 필수 (게시물 수정 삭제시 필요합니다.)</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" size="40" maxlength="50" name="email" value="${board.board_email}"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" size="70" name="title" value="${board.board_title}">* 필수</td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea cols="70" rows="15" name="content">${board.board_content}</textarea></td>
			</tr>
		</table>
		<br>
		<br>
		<input type="submit" value="등록" onclick="return boardCheck()">
		<input type="reset" value="다시 작성">
		<input type="button" value="목록"
			   onclick="location.href='BoardServlet?command=board_list'">
	</form>
	</div>
</body>
<jsp:include page="foot.jsp" />
</html>