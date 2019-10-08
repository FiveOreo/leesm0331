<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="board2.*"%>
<%@ page import="java.util.*"%>

<jsp:useBean id="dao" class="board2.DAO" />
<%
	int total = dao.count();
	ArrayList<VO> alist = dao.getMemberList();
	int size = alist.size();
	int size2 = size;

	final int ROWSIZE = 4;
	final int BLOCK = 5;
	int indent = 0;

	int pg = 1;

	if (request.getParameter("pg") != null) {
		pg = Integer.parseInt(request.getParameter("pg"));
	}

	int end = (pg * ROWSIZE);
	int allPage = 0;
	int startPage = ((pg - 1) / BLOCK * BLOCK) + 1;
	int endPage = ((pg - 1) / BLOCK * BLOCK) + BLOCK;

	allPage = (int) Math.ceil(total / (double) ROWSIZE);

	if (endPage > allPage) {
		endPage = allPage;
	}

	size2 -= end;
	if (size2 < 0) {
		end = size;
	}
%>
<!DOCTYPE html>
<html>
<jsp:include page="top.jsp" />
<head>
<meta charset="UTF-8">
<title>음악 공유 게시판</title>
</head>
<body>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr height="5">
			<td width="5"></td>
		</tr>
		<tr
			style="background: url('image/table_mid.gif') repeat-x; text-align: center;">
			<td width="5"><img src="image/table_left.gif" width="5"
				height="30" /></td>
			<td width="73">번호</td>
			<td width="379">제목</td>
			<td width="73">작성자</td>
			<td width="164">작성일</td>
			<td width="58">조회수</td>
			<td width="7"><img src="img/table_right.gif" width="5"
				height="30" /></td>

		</tr>
<% 
  if(total==0){
	  
%>
	<tr align="center" bgcolor="#FFFFFF" height="30">
	 	   <td colspan="6">등록된 글이 없습니다.</td>
	 	  </tr>
<%
	 	} else {
	 		for(int i=ROWSIZE*(pg-1); i<end;i++){
				VO vo = alist.get(i);
				indent = vo.getIndent();
				int idx = vo.getNum();
%>
	<tr height="25" align="center">
	<td align="center">&nbsp;</td>
	<td align="center"><%=idx%></td>
	<td align="left"><% 
		
		for(int j=0;j<indent;j++){
		%> &nbsp;&nbsp;&nbsp;<%
		}
		if(indent!=0){
			%><img src='image/reply_icon.gif'/><%
		}	
	%>
	<a href="view.jsp?idx=<%=idx%>&pg=<%=pg%>"><%=vo.getTitle() %></a><%
		if(vo.isDayNew()){
			%>
			<img src='img/new.jpg' />
			<%
		}
	%></td>
	<td align="center"><%=vo.getName()%></td>
   <td align="center"><%=vo.getTime() %></td>
   <td align="center"><%=vo.getHit() %></td>
   <td align="center">&nbsp;</td>
  <tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr>
	<% }} %>
	<tr height="1" bgcolor="#82B5DF"><td colspan="6" width="752"></td></tr>
	</table>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr><td colspan="4" height="5"></td></tr>
  <tr>
	<td align="center">
		<%
			if(pg>BLOCK) {
		%>
			[<a href="boardlist2.jsp?pg=1">◀◀</a>]
			[<a href="boardlist2.jsp?pg=<%=startPage-1%>">◀</a>]
		<%
			}
		%>
		
		<%
			for(int i=startPage; i<= endPage; i++){
				if(i==pg){
		%>
					<u><b>[<%=i %>]</b></u>
		<%
				}else{
		%>
					[<a href="boardlist2.jsp?pg=<%=i %>"><%=i %></a>]
		<%
				}
			}
		%>
		
		<%
			if(endPage<allPage){
		%>
			[<a href="boardlist2.jsp?pg=<%=endPage+1%>">▶</a>]
			[<a href="boardlist2.jsp?pg=<%=allPage%>">▶▶</a>]
		<%
			}
		%>
		</td>
		</tr>
		<tr align="center">
   <td><input type=button value="글쓰기" OnClick="window.location='boardWrite2.jsp'"></td>
  </tr>
 </table>
</body>
<jsp:include page="foot.jsp" />
</html>