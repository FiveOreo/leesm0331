package reply.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;
import reply.model.replyDAO;
import reply.model.replyVO;
// /memoAdd.do==> MemoAddAction ==> /memo/message.jsp
public class replyAddAction extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		//req.setCharacterEncoding("UTF-8");
		String name=req.getParameter("name");
		String msg=req.getParameter("msg");
		if(name==null||msg==null||name.trim().isEmpty()) {
			//redirect로 메모 등록 폼 페이지로 이동
			this.setViewPage("memo.do");
			this.setRedirect(true);//redirect방식으로 이동
			return;
		}
		replyVO memo=new replyVO(0,name,msg,null);
		replyDAO dao=new replyDAO();
		int n=dao.insertMemo(memo);
		String str=(n>0)?"등록 성공":"등록 실패";
		String loc=(n>0)?"memoList.do":"javascript:history.back()";
		
		req.setAttribute("msg", str);
		req.setAttribute("loc", loc);

		this.setViewPage("/memo/message.jsp");//뷰페이지 지정
		this.setRedirect(false);
	}

}
