package member.model;
import java.sql.*;
import java.util.*;
import common.Util.*;
public class memberDAO extends DAOBase{
	
	public memberDAO() {
		System.out.println("memberDAO생성...");
	}
	
	public int createUser(memberVO member) throws SQLException{
		try{
			Connection conn = ds.getConnection();
			
			String sql="INSERT INTO mmember VALUES(";
	sql+=" mmember_seq.nextval,?,?,?,?,?,sysdate)";
		
	ps=conn.prepareStatement(sql);
	
	ps.setString(1, member.getUserid());
	ps.setString(2, member.getPwd());
	ps.setString(3, member.getEmail());
	ps.setString(4, member.getName());
	ps.setString(5, member.getGender());
	int n=ps.executeUpdate();
	return n;
		}finally {
			close();
		}
		
	}
}
