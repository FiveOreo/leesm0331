package board2;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
public DBConnect() {}
	
	public Connection getConnection() {
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String id = "MYDEV";
		String pass = "TIGER";
		
		Connection con = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url,id,pass);
		}catch(Exception e) {
			System.out.println(e);
		}
		return con;
	}

}
