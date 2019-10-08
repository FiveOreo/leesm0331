package main.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Util.DBUtil;
import common.controller.AbstractAction;

public class registerEndAction extends AbstractAction{
	@Override
public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		
		req.setCharacterEncoding("UTF-8");
		String id=req.getParameter("id");
		String pwd=req.getParameter("pwd");
		String email=req.getParameter("email");
		String name=req.getParameter("name");
		String gender=req.getParameter("gender");
		String sysdate=req.getParameter("sysdate");
		
		Connection conn = DBUtil.getCon();
		
		String sql = "insert into mmember values(?,?,?,?,?,sysdate)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		pstmt.setString(3, email);
		pstmt.setString(4, name);
		pstmt.setString(5, gender);
		pstmt.executeUpdate();
		



		this.setViewPage("/login.jsp");
		this.setRedirect(false);
		
	}
}
