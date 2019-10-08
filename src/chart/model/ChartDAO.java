package chart.model;
import java.sql.*;
import java.util.*;
import common.Util.DBUtil;
import chart.model.ChartVO;
public class ChartDAO {

	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public ChartDAO(){
	}
		public int Chartlist(ChartVO chart) 
		throws SQLException
		{
			try {
				con=DBUtil.getCon();
				String sql="select * from CHARTMUSIC VALUES(chart_seq.nextval,?,?,?,?,?,?)";
				ps=con.prepareStatement(sql);
				ps.setInt(1, chart.getcnumber());
				ps.setString(2, chart.getTitle());
				ps.setString(3, chart.getSinger());
				ps.setString(4, chart.getSdate());
				ps.setString(5, chart.getAlbum());
				ps.setString(6, chart.getGenre());
				int n=ps.executeUpdate();
				return n;
				
			}finally {
				close();
			}
		}
		
		public ArrayList<ChartVO> listchart(int start, int end) throws SQLException{
			try {
				con=DBUtil.getCon();
				//String sql="SELECT * FROM memo ORDER BY idx DESC";
				String sql="select * from(" + 
						" select rownum rn, a.* from" + 
						" (select * from CHARTMUSIC order by idx desc)  a" + 
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
		private void close() {
			
			
		}
		public int getTotalCount() throws SQLException {
			try {
				con=DBUtil.getCon();
				String sql="select count(cnumber) from CHARTMUSIC";
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
		public ArrayList<ChartVO> makeList(ResultSet rs)
				throws SQLException{
					ArrayList<ChartVO> arr=new ArrayList<>();
					while(rs.next()) {
						int cnumber=rs.getInt("cnumber");
						String Title=rs.getString("Title");
						String Singer=rs.getString("Singer");
						String Sdate=rs.getString("Sdate");
						String Album=rs.getString("Album");
						String Genre=rs.getString("Genre");
						//record==>MemoVO
						ChartVO chart=new ChartVO(cnumber,Title,Singer,Sdate,Album,Genre);
						//////////////
						arr.add(chart);
						//////////////
					}//while---------
					return arr;
				}//---------------------------------
	}
	