package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.BoardDAO;
import board.model.BoardVO;

public class BoardViewAction implements BoardAction{
	
	@Override
	public void execute(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		
		String url="boardView.jsp";
		String num=req.getParameter("num");
		
		BoardDAO.getInstance().updateReadCount(num);
		
		BoardDAO dao = BoardDAO.getInstance();
		BoardVO vo = BoardDAO.getInstance().selectOneBoardByNum(num);
		
		req.setAttribute("board", vo);
		req.getRequestDispatcher(url).forward(req, res);
		
	}
}
