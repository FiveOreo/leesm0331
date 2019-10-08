package board.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.Action;
import java.io.*;

public class BoardWriteFormAction implements BoardAction{
	
	@Override
	public void execute(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
		req.getRequestDispatcher("boardWrite.jsp").forward(req, res);
		
	}
}
