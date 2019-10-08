package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.BoardDAO;
import board.model.BoardVO;

public class BoardUpdateAction implements BoardAction{
	
	@Override
	public void execute(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		BoardVO vo = new BoardVO();
		vo.setBoard_num(Integer.parseInt(req.getParameter("num")));
		vo.setBoard_name(req.getParameter("name"));
		vo.setBoard_pass(req.getParameter("pass"));
		vo.setBoard_email(req.getParameter("email"));
		vo.setBoard_title(req.getParameter("title"));
		vo.setBoard_content(req.getParameter("content"));
		
		BoardDAO dao = BoardDAO.getInstance();
		
		dao.updateBoard(vo);
		
		new BoardListAction().execute(req, res);
	}
	
}

