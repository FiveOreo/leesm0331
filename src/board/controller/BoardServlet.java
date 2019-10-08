package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BoardServlet")
public class BoardServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public BoardServlet() {
		super();
	}
	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		String command = req.getParameter("command");
		System.out.println("프론트에서 커맨드확인:"+command);
		ActionFactory af = ActionFactory.getInstance();
		
		 BoardAction action = af.getAction(command);
		
		if(action!=null) {
			action.execute(req,res);
		}
	}
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		String command = req.getParameter("command");
		System.out.println("프론트에서 커맨드확인:"+command);
		ActionFactory af = ActionFactory.getInstance();
		
		 BoardAction action = af.getAction(command);
		
		if(action!=null) {
			action.execute(req,res);
		}
	}
}
