<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="DAO" class="board2.DAO"/>
<jsp:useBean id="VO" class="board2.VO"/>
<jsp:setProperty name="VO" property="*"/>

<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	int pg = Integer.parseInt(request.getParameter("pg"));
	boolean ch = DAO.checkPassword(VO, idx);
	if(ch){
			DAO.delete(idx);
			%>
				<script type="text/javascript">
					self.window.alert("해당 글을 삭제하였습니다.");
					location.href="boardList2.jsp?pg=<%=pg%>";
				</script>
			<% 
	} else {
			%>
				<script type="text/javascript">
					self.window.alert("비밀번호를 틀렸습니다");
					location.href="javascript:history.back()";
				</script>
			<% 
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>