package reply.model;
import java.sql.*;
import java.util.*;
import common.Util.DBUtil;
/*sw��Ű��ó �� Persistence(���Ӽ�) ����
 * - ������ ó�� ������ ���. �����ͺ��̽��� �����Ͽ�
 *   CRUD����� �����Ѵ�.
 * - Data Access Object �� �ٿ� DAO��� ��  
 * */
public class replyDAO {
	
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	

	public replyDAO() {		
	}
	/**�޸���� ����ϴ� �޼ҵ�*/
	public int insertMemo(replyVO memo) 
	throws SQLException
	{
		try {
			con=DBUtil.getCon();
	String sql="INSERT INTO memo VALUES(memo_seq.nextval,?,?,sysdate)";
			ps=con.prepareStatement(sql);
			ps.setString(1, memo.getName());
			ps.setString(2, memo.getMsg());			
			int n=ps.executeUpdate();
			return n;			
		}finally {
			close();
		}		
	}//--------------------------------
	
	/**�޸���� �����ϴ� �޼ҵ� -PK�� ���� delete��*/
	public int deleteMemo(int idx) throws SQLException{
		try {
			con=DBUtil.getCon();
			//DELETE�� �ۼ��ϱ�
			String sql="DELETE FROM memo WHERE idx=?";
			ps=con.prepareStatement(sql);
			ps.setInt(1,idx);
			int n=ps.executeUpdate();
			return n;
		}finally {
			close();
		}		
	}//--------------------------------
	
	public int getTotalCount() throws SQLException {
		try {
			con=DBUtil.getCon();
			String sql="select count(idx) from memo";
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			int total=0;
			if(rs.next()) {
				total=rs.getInt(1);
			}
			return total;
		}finally {
			close();
		}
	}//-----------------------------------
	
	public ArrayList<replyVO> listMemo(int start, int end) throws SQLException{
		try {
			con=DBUtil.getCon();
			//String sql="SELECT * FROM memo ORDER BY idx DESC";
			String sql="select * from(" + 
					" select rownum rn, a.* from" + 
					" (select * from memo order by idx desc)  a" + 
					" ) where rn between ? and ?";
			ps=con.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, end);
			rs=ps.executeQuery();
			
			return makeList(rs);
		} finally {
			close();
		}
	}//--------------------------------
	public ArrayList<replyVO> makeList(ResultSet rs)
	throws SQLException{
		ArrayList<replyVO> arr=new ArrayList<>();
		while(rs.next()) {
			int idx=rs.getInt("idx");
			String name=rs.getString("name");
			String msg=rs.getString("msg");
			java.sql.Date wdate=rs.getDate("wdate");
			//record==>MemoVO
			replyVO memo=new replyVO(idx,name,msg,wdate);
			//////////////
			arr.add(memo);
			//////////////
		}//while---------
		return arr;
	}//---------------------------------

	/**�۹�ȣ(PK)�� �޸𳻿��� �������� �޼ҵ�-select��, where������*/
	public replyVO selectMemoByIdx(int idx) 
	throws SQLException
	{
		try {
			con=DBUtil.getCon();
			String sql="SELECT * FROM memo WHERE idx=?";
			ps=con.prepareStatement(sql);
			ps.setInt(1, idx);
			rs=ps.executeQuery();
			ArrayList<replyVO> arr=makeList(rs);
			if(arr!=null && arr.size()==1) {
				//�ش� ���� �����Ѵٸ�
				replyVO memo=arr.get(0);
				return memo;
			}
			
			return null;
		}finally {
			close();
		}		
	}//--------------------------------
	/**�޸���� ����ó���ϴ� �޼ҵ�=> update���� ����*/
	public int updateMemo(replyVO memo) throws SQLException{
		try {
			con=DBUtil.getCon();
			String sql="UPDATE memo SET name=?, msg=? WHERE idx=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, memo.getName());
			ps.setString(2, memo.getMsg());
			ps.setInt(3, memo.getIdx());
			int n=ps.executeUpdate();
			return n;
		}finally {
			close();
		}
	}//---------------------------------
	
	/**�˻������� ���� �˻��ϴ� �޼ҵ�-SELECT��. WHERE���� LIKE��*/
	public ArrayList<replyVO> findMemo(String colType, String keyword) 
	throws SQLException
	{
		try {
			con=DBUtil.getCon();
			//SELECT * FROM MEMO WHERE 'MSG' LIKE '%��%'
			String sql="", colVal="";
			if(colType.contentEquals("idx")) {
				sql="SELECT * FROM memo WHERE "+colType+"=?";
				colVal=keyword;
			}else {
				sql="SELECT * FROM memo WHERE "+colType+" LIKE ?";
				colVal="%"+keyword+"%";
			}
			System.out.println(sql);
			ps=con.prepareStatement(sql);
			ps.setString(1,colVal);
							// %��%
			rs=ps.executeQuery();
			ArrayList<replyVO> arr=makeList(rs);
			return arr;
		}finally {
			close();
		}		
	}//-------------------------------

	/**DB���� �ڿ��� �ݳ��ϴ� �޼ҵ�*/	
	public void close() {
		try {
			if(rs!=null) rs.close();
			if(ps!=null) ps.close();
			if(con!=null) con.close();
		} catch (SQLException e) {
			System.out.println(e);
		}
	}//------------------------

	
}////////////////////////////



