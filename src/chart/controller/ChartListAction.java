package chart.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;
import chart.model.ChartDAO;
import chart.model.ChartVO;

public class ChartListAction extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) 
			throws Exception {
		//현재 보여줄 페이지(cpage) 파라미터값 받기
		String cpStr=req.getParameter("cpage");
		if(cpStr==null) {
			cpStr="1";//디폴트 페이지를 1페이지로 지정
		}
		int cpage=Integer.parseInt(cpStr.trim());
		if(cpage<=0) {
			cpage=1; //첫페이지를 지정
		}
		ChartDAO dao=new ChartDAO();
		//[1] 총 게시글 수 가져오기
		int totalCount=dao.getTotalCount();
		//[2] 한 페이지에 보여줄 목록갯수 정하기
		int pageSize=10; 		
		//[3] 페이지수 구하기
		int pageCount=(totalCount-1)/pageSize+1;
		if(cpage>pageCount) {
			cpage=pageCount;//마지막 페이지를 지정
		}
		//cpage에 해당하는 데이터를 db에서 끊어 가져온다.		
		//db에서 끊어 가져오기 위한 변수값 구하기
		int end=cpage*pageSize;
		int start=end-(pageSize-1);		
		
		List<ChartVO> arr=dao.listchart(start, end);
		req.setAttribute("chatArr", arr);
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("pageSize", pageSize);
		req.setAttribute("pageCount", pageCount);
		
		this.setViewPage("/chart.jsp");
		this.setRedirect(false);
	}

}