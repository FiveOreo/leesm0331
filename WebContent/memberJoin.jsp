<%@ page import="common.Util.DBUtil"%>
<%@ page import="java.sql.Connection"%>
<%@	page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3D//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html14/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" context="text/html"; charset="UTF-8">
<title>memberJoin.jsp</title>
</head>
<body>
<% 
request.setCharacterEncoding("UTF-8");
String id=request.getParameter("id");
String pwd=request.getParameter("pwd");
String email=request.getParameter("email");
String name=request.getParameter("name");
String gender=request.getParameter("gender");
String sysdate=request.getParameter("sysdate");

Connection conn = DBUtil.getCon();

String sql = "insert into mmember(memberid,memberpw,email,membername,gender,sysdate)";
PreparedStatement pstmt = conn.prepareStatement(sql);

pstmt.setString(1, id);
pstmt.setString(2, pwd);
pstmt.setString(3, email);
pstmt.setString(4, name);
pstmt.setString(5, gender);
pstmt.setString(6, sysdate);
pstmt.executeUpdate();
	
%>
</body>
</html>