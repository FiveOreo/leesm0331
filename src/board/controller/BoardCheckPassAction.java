package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.BoardDAO;
import board.model.BoardVO;


public class BoardCheckPassAction implements BoardAction{
	
	@Override
	public void execute(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		
		String num = req.getParameter("num");
		String pass = req.getParameter("pass");
		String mode = req.getParameter("mode");
		
		BoardVO vo = BoardDAO.getInstance().selectOneBoardByNum(num);
		
		System.out.println(vo);
		String url = "";
		if(vo==null) {
			return;
		}
		if (vo.getBoard_pass().equals(pass)&&(mode.equals("delete"))) {
			 BoardDAO.getInstance().deleteBoard(num);
			url = "checkSuccess.jsp";
		}
		
		 else if(vo.getBoard_pass().equals(pass)&&(mode.equals("update"))) {
		  //BoardDAO.getInstance().u url = "checkSuccess.jsp"; }		
			 req.setAttribute("board", vo);
			 url="boardUpdate.jsp";
		 }else {
			url = "boardCheckPass.jsp";
			req.setAttribute("message", "비밀번호가 틀렸어요");
		}
			req.getRequestDispatcher(url).forward(req, res);
	}
}
