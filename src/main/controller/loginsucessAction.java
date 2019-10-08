package main.controller;

import javax.servlet.http.*;

import common.Util.DBUtil;
import common.controller.AbstractAction;
import javax.servlet.*;
import java.io.*;
import java.sql.*;


public class loginsucessAction extends AbstractAction{
	
	@Override
	public void execute(javax.servlet.http.HttpServletRequest req, HttpServletResponse res) throws Exception,IOException,ServletException {
		/*String url="jdbc:oracle:thin:@localhost:1521:XE";
		String user="MYDEV";
		String pwd="TIGER";
		Connection conn;
		Statement stmt;
		PreparedStatement pstmt;
		ResultSet rs;
		conn=DriverManager.getConnection(url,user,pwd);
		
		
		String id=req.getParameter("id");
		String pwd1=req.getParameter("pwd");
		
		if(id.equals("MYDEV") && pwd1.equals("TIGER")) {
			this.setViewPage("/main.jsp");
			//res.sendRedirect("/main.jsp");
		}else {
			this.setViewPage("/loginfail.jsp");
			//res.sendRedirect("/loginfail.jsp");
		}
		this.setRedirect(false);*/
		
		req.setCharacterEncoding("UTF-8");
		String id=req.getParameter("id");
		String pwd=req.getParameter("pwd");
	
		
		Connection conn = DBUtil.getCon();
		
		String sql = "select memberid,memberpw from mmember where memberid = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		ResultSet rs= pstmt.executeQuery();
		String password;
		rs.next();
		password = rs.getString("memberpw");
		
		if(password.equals(pwd)) {
			System.out.println("<script>");
			System.out.println("('로그인 되었습니다. 환영합니다. :')");
			System.out.println("location.href='main.jsp'");
			System.out.println("</script>");
		}else {
			System.out.println("<script>");
			System.out.println("'alert('정보가 틀렸습니다!')");
			System.out.println("locatrion.href='main.jsp'");
			System.out.println("</script>");
		}
		this.setViewPage("/main.jsp");
		this.setRedirect(false);
	}
}
