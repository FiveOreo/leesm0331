package main.controller;

import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;

import common.controller.AbstractAction;

public class mainAction  extends AbstractAction{
	
	@Override
	public void execute(javax.servlet.http.HttpServletRequest req, HttpServletResponse res) throws Exception {
		this.setViewPage("/main.jsp");
		this.setRedirect(false);
	}
}
   