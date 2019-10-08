package board.model;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import common.Util.DBUtil;
public class BoardDAO {

	public BoardDAO() {
	}
	private static BoardDAO instance = new BoardDAO();
	public static BoardDAO getInstance() {
		return instance;
	}
	public List<BoardVO> selectAllBoards(){
		String sql = "select * from MUSIC_Board order by board_num desc";
		
		List<BoardVO> list = new ArrayList<BoardVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBUtil.getCon();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				BoardVO vo = new BoardVO();
				vo.setBoard_num(rs.getInt("board_num"));
				vo.setBoard_pass(rs.getString("board_pass"));
				vo.setBoard_name(rs.getString("board_name"));
				vo.setBoard_email(rs.getString("board_email"));
				vo.setBoard_title(rs.getString("board_title"));
				vo.setBoard_content(rs.getString("board_content"));
				vo.setReadcount(rs.getInt("readcount"));
				vo.setWritedate(rs.getTimestamp("writedate"));
				
				list.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn,stmt,rs);
		}
		return list;
	}
	public void insertBoard(BoardVO vo) {
		String sql="";
		sql="insert into MUSIC_Board(board_num, board_name, board_email, board_title, board_content, board_pass)"
				+ " values(musicboard_seq.nextval, ?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBUtil.getCon();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getBoard_name());
			pstmt.setString(2, vo.getBoard_email());
			pstmt.setString(3, vo.getBoard_title());
			pstmt.setString(4, vo.getBoard_content());
			pstmt.setString(5, vo.getBoard_pass());
			
			pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn, pstmt);
		}
	}
	public void updateReadCount(String num) {
		String sql="update MUSIC_BOARD set readcount=readcount+1 where board_num=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBUtil.getCon();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, num);
			pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn,pstmt);
		}
	}
	public BoardVO selectOneBoardByNum(String num) {
		String sql="select * from MUSIC_BOARD where board_num=?";
		
		BoardVO vo= null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBUtil.getCon();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo=new BoardVO();
				vo.setBoard_num(rs.getInt("board_num"));
				vo.setBoard_pass(rs.getString("board_pass"));
				vo.setBoard_name(rs.getString("board_name"));
				vo.setBoard_email(rs.getString("board_email"));
				vo.setBoard_title(rs.getString("board_title"));
				vo.setBoard_content(rs.getString("board_content"));
				vo.setReadcount(rs.getInt("readcount"));
				vo.setWritedate(rs.getTimestamp("writedate"));
				System.out.println(vo);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(conn, pstmt, rs);
		}
		return vo;
	}
	public void updateBoard(BoardVO vo) {
		String sql="update MUSIC_BOARD set board_name=?, board_pass=?, board_title=?, board_content=? where board_num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBUtil.getCon();
			pstmt = conn.prepareStatement(sql);
			System.out.println(sql);
			pstmt.setString(1, vo.getBoard_name());
			pstmt.setString(2, vo.getBoard_pass());
			pstmt.setString(3, vo.getBoard_title());
			pstmt.setString(4, vo.getBoard_content());
			pstmt.setInt(5, vo.getBoard_num());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn, pstmt);
		}
	}
	public void deleteBoard(String num) {
		String sql="delete from MUSIC_BOARD where board_num=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBUtil.getCon();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, num);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn, pstmt);
		}
	}
}
