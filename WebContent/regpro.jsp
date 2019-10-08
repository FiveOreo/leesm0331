<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 자바빈 클래스 import --%>      
<%@ page import="member.model.memberVO" %>  
<%-- DAO import --%>   
<%@ page import="member.model.memberDAO" %> 
<<jsp:include page="top2.jsp"></jsp:include>
<html>
<head>
	<title>회원가입 처리</title>
	<link href='../../css/join_style.css' rel='stylesheet' style='text/css'/>

</head>
<body>
	<% 
	request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="memberVO" class="member.model.memberVO"/>
	<jsp:setProperty property="*" name="memberVO"/>
	<%
		
	%>
	<div id="wrap">
	<br><br>
	<b><font size="10" color="blue">회원가입 정보를 확인하세요</font></b>
	<br><br>
	<font color="skyblue"><%=memberVO.getName() %></font>님 가입을 축하드립니다
	<br><br>
	<table>
		<tr>
			<td id="title">아이디</td>
			<td><%=memberVO.getUserid() %></td>
		</tr>
		<tr>
			<td id="title">비밀번호</td>
			<td><%=memberVO.getPwd() %></td>
		</tr>
		<tr>
			<td id="title">이름</td>
			<td><%=memberVO.getName() %></td>
		</tr>
		<tr>
			<td id="title">이메일</td>
			<td><%=memberVO.getEmail() %></td>
		</tr>
		<tr>
			<td id="title">성별</td>
			<td><%=memberVO.getGender() %></td>
		</tr>
	</table>
	<br>
	<input type="button" value="확인">
	</div>
</body>
</html>
<jsp:include page="foot.jsp"></jsp:include>