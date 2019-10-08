package board.controller;
import java.io.IOException;
import java.util.ArrayList;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
import board.model.BoardBean;
import board.model.BoardDAO;
import board.model.pageInfo;
 
/**
 * Servlet implementation class MainCon
 */
@WebServlet("*.Pro")
public class MainCon extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainCon() {
        super();
        // TODO Auto-generated constructor stub
    }
 
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        reqPro(request, response);
    }
 
    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        reqPro(request, response);
    }
    
    protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("UTF-8");
        String RequestURI = request.getRequestURI();
        String contextPath = request.getContextPath();
        String command = RequestURI.substring(contextPath.length());
        
        
        if(command.equals("/Main.Pro")) {
            HttpSession session = request.getSession();
            session.invalidate();
            response.sendRedirect("index.jsp");
            
        }else if(command.equals("/FreeBoard.Pro")) {
            pageInfo pginfo = new pageInfo();
            ArrayList<BoardBean> bean = new ArrayList<>();
            BoardDAO dao = new BoardDAO();
            String PageNum = request.getParameter("PageNum");
            if (PageNum == null) {PageNum = "1";}
            pginfo.setCurrentPage(Integer.parseInt(PageNum));
            pginfo.setListCount(dao.getAllCount());
            pginfo.setStartRow(pginfo.getCurrentPage());
            pginfo.setPreve(pginfo.getCurrentPage());
            pginfo.setAllPage(pginfo.getListCount());
            pginfo.setEndPage(pginfo.getCurrentPage(), pginfo.getAllPage());
            pginfo.setNext(pginfo.getCurrentPage(), pginfo.getAllPage());
            int StartRow = pginfo.getStartRow();
            bean = dao.getAllList(StartRow);
            request.setAttribute("bean", bean);
            request.setAttribute("pageInfo", pginfo);
            RequestDispatcher dis = request.getRequestDispatcher("FreeBoard.jsp");
            dis.forward(request, response);
            
        } else if(command.equals("/BoardWrite.Pro")) {
            BoardBean bean = new BoardBean();
            BoardDAO dao = new BoardDAO();
            bean.setBoard_name(request.getParameter("board_name"));
            bean.setBoard_subject(request.getParameter("board_subject"));
            bean.setBoard_content(request.getParameter("board_content"));
            bean.setBoard_id(request.getParameter("board_id"));
            dbao.BoardInsert(bean);
            RequestDispatcher dis = request.getRequestDispatcher("FreeBoard.Pro");
            dis.forward(request, response);
            
        } else if(command.equals("/BoardInfo.Pro")) {
            System.out.println(request.getParameter("boardnum1"));
            int num = Integer.parseInt(request.getParameter("boardnum"));
            ArrayList<BoardBean> bean = new ArrayList<>();
            ArrayList<CommentBean> cbean = new ArrayList<>();
            BoardDAO dao = new BoardDAO();
            dao.readCountup(num);
            bean = dao.getOneBoardInfo(num);
            cbean = dao.getOneComment(num);
            request.setAttribute("bean", bean);
            request.setAttribute("cbean", cbean);
            RequestDispatcher dis = request.getRequestDispatcher("ReadBoardPage.jsp");
            dis.forward(request, response);
            
        } else if(command.equals("/BoardDelete.Pro")) {
            BoardDAO dao = new BoardDAO();
            int num = Integer.parseInt(request.getParameter("board_num"));
            int allCount = dao.getAllCount();
            dao.BoardDelete(num);
            dao.Realignment(allCount);
            RequestDispatcher dis = request.getRequestDispatcher("FreeBoard.Pro");
            dis.forward(request, response);
            
        } else if(command.equals("/BoardModify.Pro")) {
            int num = Integer.parseInt(request.getParameter("board_num"));
            BoardDAO dao = new BoardDAO();
            ArrayList<BoardBean> bean = new ArrayList<>();
            bean = dao.getOneBoardInfo(num);
            request.setAttribute("bean", bean);
            RequestDispatcher dis = request.getRequestDispatcher("ModifyBoard.jsp");
            dis.forward(request, response);
            
        } else if(command.equals("/finishBoardModify.Pro")) {
            int num = Integer.parseInt(request.getParameter("board_num"));
            int readcount = Integer.parseInt(request.getParameter("readcount"));
            BoardDAO dao = new BoardDAO();
            BoardBean bean = new BoardBean();
            bean.setBoard_num(num);
            bean.setBoard_name(request.getParameter("board_name"));
            bean.setBoard_subject(request.getParameter("board_subject"));
            bean.setBoard_content(request.getParameter("board_content"));
            bean.setReadcount(readcount);
            bean.setBoard_date(request.getParameter("board_date"));
            bean.setBoard_id(request.getParameter("board_id"));
            dao.finishBoard(bean);
            ArrayList<BoardBean> bbean = new ArrayList<>();
            bbean = dao.getOneBoardInfo(num);
            request.setAttribute("bean", bbean);
            RequestDispatcher dis = request.getRequestDispatcher("ReadBoardPage.jsp");
            dis.forward(request, response);
            
        }    else if(command.equals("/BoardComments.Pro")) {
            BoardDAO dao = new BoardDAO();
            CommentBean incbean = new CommentBean();
            ArrayList<BoardBean> bean = new ArrayList<>();
            ArrayList<CommentBean> cbean = new ArrayList<>();
            int num = Integer.parseInt(request.getParameter("comment_grub"));
            incbean.setComment_id(request.getParameter("comment_id"));
            incbean.setComment_content(request.getParameter("comment_content"));
            incbean.setComment_grub(num);
            dao.commentinsert(incbean);
            bean = dao.getOneBoardInfo(num);
            cbean = dao.getOneComment(num);
            request.setAttribute("bean", bean);
            request.setAttribute("cbean", cbean);
            RequestDispatcher dis = request.getRequestDispatcher("ReadBoardPage.jsp");
            dis.forward(request, response);
            
        }    else if(command.equals("/deleteComment.Pro")) {
            int num = Integer.parseInt(request.getParameter("board_num"));
            int comment_lev = Integer.parseInt(request.getParameter("comment_lev"));
            BoardDAO dao = new BoardDAO();
            ArrayList<CommentBean> cbean = new ArrayList<>();
            ArrayList<BoardBean> bean = new ArrayList<>();
            dao.deleteComment(num, comment_lev);
            cbean = dao.getOneComment(num);
            bean = dao.getOneBoardInfo(num);
            request.setAttribute("bean", bean);
            request.setAttribute("cbean", cbean);
            RequestDispatcher dis = request.getRequestDispatcher("ReadBoardPage.jsp");
            dis.forward(request, response);
            
        }
    }
}