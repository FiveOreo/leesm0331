package board.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.*;
import common.Util.DBUtil;

public class BoardListAction implements BoardAction{
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException{
		
		String url = "boardList.jsp";
		BoardDAO dao = BoardDAO.getInstance();
		List<BoardVO> list =  dao.selectAllBoards();
		req.setAttribute("boardList",list);
		req.getRequestDispatcher(url).forward(req, res);
		
		
	}
}
