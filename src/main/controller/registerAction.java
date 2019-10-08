package main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;

public class registerAction extends AbstractAction{
	@Override
public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		this.setViewPage("/register.jsp");
		this.setRedirect(false);
		
	}
}
