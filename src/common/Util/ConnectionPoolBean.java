package common.Util;
import java.util.*;
import java.sql.*;

public class ConnectionPoolBean {
	private Hashtable<Connection, Boolean> ht;
	private String url, user, pwd;
	private int increment;
	
	public ConnectionPoolBean()
			throws ClassNotFoundException, 
			SQLException{
		increment=3;// ����ġ: 3
		ht=new Hashtable<Connection,Boolean>(5);
		//Ŀ�ؼ��� ������ �ڷᱸ��
		Connection con=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		url="jdbc:oracle:thin:@localhost:1521:XE";
		user="mydev"; pwd="tiger";
		/*Ŀ�ؼ��� �̸� 5�� �����Ͽ� ������ ���´�.*/
		for(int i=0;i<5;i++){
			con=DriverManager.getConnection(url,user,pwd);
			ht.put(con,Boolean.FALSE);
			//÷����   false�� ��ũ�Ѵ�.
		}
	System.out.println("ConnectionPoolBean Created....");
	}//������----------------------------------------- 
	
	public synchronized Connection getConnection()
	throws SQLException{
		Connection con=null;
		Enumeration<Connection> en=ht.keys();// key ���� ����ü ��ü�� ����
		while(en.hasMoreElements()){
			con=en.nextElement();//key
			Boolean b=ht.get(con);//value
			if(b==Boolean.FALSE){
				ht.put(con, Boolean.TRUE);// ���ϴ� ������ ��ũ
				return con;
			}                    
		}//while--------------
		// ����ִ�  con�� �ϳ��� ���ٸ� Ŀ�ؼ��� ������Ű��.
		for(int i=0;i<increment;i++){
			Connection con2
			=DriverManager.getConnection(url,user,pwd);
			ht.put(con2, Boolean.FALSE);
		}
		return getConnection();// ���ȣ��
	}//getConnection()--------------------------------
	
	public void returnConnection(Connection returnCon)
	throws SQLException{
		Connection con=null;
		Enumeration<Connection> en=ht.keys();// key ���� ����ü ��ü�� ����
		while(en.hasMoreElements()){
			con=en.nextElement();
			if(con==returnCon){
				//��ȯ�Ǵ� Ŀ�ؼǰ� �ּҰ��� ���ٸ�...  false �� ǥ�����ش�.
				ht.put(con,Boolean.FALSE);
				break;
			}//if--------
		}//while------------------		
		removeCon();
		//Ŀ�ؼ��� �⺻������ 5���� �����ϵ���...
	}//returnConnection()-------------------------------
	public void removeCon(){
		Connection con=null;
		Enumeration<Connection> en=ht.keys();
		int count=0;//False�� con�� ����
		try{
			while(en.hasMoreElements()){
				con=en.nextElement();
				Boolean b=ht.get(con);
				if(!b){
					count++;
					if(count>5){
						ht.remove(con);
						con.close();// false�� con�� 5�� �̻��̶�� ht���� ������
						//���� ����
					}
				}//if----
			}//while--------------		
		}catch(SQLException e){			
		}
	}//removeCon()-----------------------------------
	public void closeAll(){
		Enumeration<Connection> en=ht.keys();
		while(en.hasMoreElements()){
			Connection con=en.nextElement();
			try{
			con.close();
			}catch(SQLException e){}
		}//while---------
	}//closeAll()--------------------------------------
	
}//////////////////////////////////////////////







