package common.Util;

import java.sql.*;


public class DBUtil {
	
	static String url="jdbc:oracle:thin:@localhost:1521:XE";
	static String user="MYDEV";
	static String pwd="TIGER";
	Connection conn;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	
	static {
		// static initializer : main()�޼ҵ� ���ٵ� ���� �����ϴ� ��
		// ���⼭ ����Ŭ ����̹��� �ε��Ű��.
		// System.out.println("static block");
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Driver Loading Success!");
		} catch (ClassNotFoundException e) {
			System.out.println("Driver Loading Fail..: ");
			e.printStackTrace();
		}

	}//------------------------
	
	public static Connection getCon() throws java.sql.SQLException{
		Connection con=DriverManager.getConnection(url,user,pwd);
		return con;
	}//------------------------

	public static void close(Connection conn, Statement stmt, ResultSet rs) {
	
		
	}

	public static void close(Connection conn, PreparedStatement pstmt) {
		// TODO Auto-generated method stub
		
	}

	

}
