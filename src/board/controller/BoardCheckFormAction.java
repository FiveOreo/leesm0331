package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardCheckFormAction implements BoardAction{
	
	@Override
	public void execute(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		String url="boardCheckPass.jsp";
		
		req.getRequestDispatcher(url).forward(req,res);
	}
}
