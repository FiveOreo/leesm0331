<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board2.*" %>
<jsp:useBean id="dao" class="board2.DAO"/>
<jsp:useBean id="vo" class="board2.VO"/>
<jsp:setProperty name="vo" property="*" />
<%

        request.setCharacterEncoding("euc-kr");

	int idx = Integer.parseInt(request.getParameter("idx"));
	int pg = Integer.parseInt(request.getParameter("pg"));
	VO vo1 = dao.getView(idx);
	int ref = vo.getRef();
	int indent = vo.getIndent();
	int step = vo.getStep();
		
	dao.UpdateStep(ref, step);
	dao.insertReply(vo, ref, indent, step);
	%>
  <script language=javascript>
   self.window.alert("입력한 답글을 저장하였습니다.");
   location.href="list.jsp?pg=<%=pg%>"; 
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