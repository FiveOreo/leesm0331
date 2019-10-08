package common.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainAction  extends AbstractAction{

	@Override
	public void execute(HttpServletRequest req,
			HttpServletResponse res) throws Exception {
		System.out.println("MainAction exeucte()호출됨...");
		
		
		req.setAttribute("msg", "Main페이지 정상출력");
		//뷰페이지 지정
		this.setViewPage("/main.jsp");
		//이동방식 지정
		//this.setRedirect(false);//forward방식으로 이동
		this.setRedirect(true);//redirect방식으로 이동
	}

}///////////////////////////
