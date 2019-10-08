package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.BoardDAO;
import board.model.BoardVO;

public class BoardUpdateFormAction implements BoardAction{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException{
		
		String num =  req.getParameter("board_num");
		System.out.println(num);
		BoardDAO dao = BoardDAO.getInstance();
		
		
		BoardVO vo = dao.selectOneBoardByNum(num);
			
		req.setAttribute("board", vo);
		req.getRequestDispatcher("boardUpdate.jsp").forward(req, res);
	}
}
