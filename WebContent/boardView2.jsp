<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board2.*" %>

<jsp:useBean id="dao" class="board2.DAO"/>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	int pg = Integer.parseInt(request.getParameter("pg"));
	VO vo = dao.getView(idx);
	dao.UpdateHit(idx);
%>
<!DOCTYPE html>
<html>
<jsp:include page="top.jsp" />
<head>
<meta charset="UTF-8">
<title>게시글 보기</title>
</head>
<body>
	<table>
		<tr>
		<td>
		  <table width="100%" cellpadding="0" cellspacing="0" border="0">
		   <tr style="background:url('image/table_mid.gif') repeat-x; text-align:center;">
		   	<td width="5"><img src="image/table_left.gif" width="5" height="30"/></td>
		   	<td>내용</td>
		   	<td width="5"><img src="image/table_right.gif" width="5" height="30"/></td>
		   </tr>
		  </table>
		  <table width="413">
		  	<tr>
		  	  <td width="0">&nbsp;</td>
		  	  <td align="center" width="76">글번호</td>
		  	  <td width="319"><%=idx%></td>
		  	  <td width="0">&nbsp;</td>
		  	</tr>
		  		<tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
		  	<tr>
		  	  <td width="0">&nbsp;</td>
		  	  <td align="center" width="76">조회수</td>
		  	  <td width="319"><%=vo.getHit()%></td>
		  	  <td width="0">&nbsp;</td>
		  	</tr>
		  		<tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
		  	<tr>
		  		<td width="0">&nbsp;</td>
		  		<td align="center" width="76">이름</td>
		  		<td width="319"><%=vo.getName()%></td>
		  		<td width="0">&nbsp;</td>
		  	</tr>
		  		<tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
		  	<tr>
		  		<td width="0">&nbsp;</td>
		  		<td align="center" width="76">작성일</td>
		  		<td width="319"><%=vo.getTime()%></td>
		  		<td width="0">&nbsp;</td>
		  	</tr>
		  		<tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
		  	<tr>
		  		<td width="0">&nbsp;</td>
		  		<td align="center" width="76">제목</td>
		  		<td width="319"><%=vo.getTitle()%></td>
		  		<td width="0">&nbsp;</td>
		  	</tr>
		  		<tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
		  		<tr>
		  		  <td width="0"></td>
		  		  <td width="399" colspan="2" height="200"><%=vo.getMemo() %>
		  		</tr>
		  		<tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
		  		<tr height="1" bgcolor="#82B5DF"><td colspan="4" width="407"></td></tr>
		  	<tr align="center">
		  		<td width="0">&nbsp;</td>
		  		<td colspan="2" width="399"><input type="button" value="글쓰기" OnClick="window.location='boardWrite2.jsp'">
		  		<input type=button value="답글" OnClick="window.location='boardReply.jsp?idx=<%=idx%>&pg=<%=pg%>'">
				<input type=button value="목록" OnClick="window.location='boardList2.jsp?pg=<%=pg%>'">
				<input type=button value="수정" OnClick="window.location='boardModify.jsp?idx=<%=idx%>&pg=<%=pg%>'">
				<input type=button value="삭제" OnClick="window.location='boardDelete.jsp?idx=<%=idx%>&pg=<%=pg%>'"></td>
      			<td width="0">&nbsp;</td>
		  	</tr>
		  </table>
		</td>
		</tr>
	</table>
</body>
<jsp:include page="foot.jsp" />
</html>