package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.BoardDAO;

public class BoardDeleteAction implements BoardAction{

	@Override
	public void execute(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		
		String num = req.getParameter("board_num");
		BoardDAO dao = BoardDAO.getInstance();
		
		dao.deleteBoard(num);
		
		new BoardListAction().execute(req, res);
	}
}
