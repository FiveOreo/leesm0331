<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="board2.DAO"/>
<jsp:useBean id="vo" class="board2.VO"/>
<jsp:setProperty name="vo" property="*" />
<%
	request.setCharacterEncoding("UTF-8");
	int max = dao.getMax();
	dao.insertWrite(vo, max);
%>
<script language=javascript>
	self.window.alert("입력한 글을 저장하였습니다.");
	location.href="boardList2.jsp";
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>