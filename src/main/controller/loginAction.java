package main.controller;

import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;

public class loginAction extends AbstractAction{
	@Override
	public void execute(javax.servlet.http.HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		
		
		
		this.setViewPage("/login.jsp");
		this.setRedirect(false);
	}
}

