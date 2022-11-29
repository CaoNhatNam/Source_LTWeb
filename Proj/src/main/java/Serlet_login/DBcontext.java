package Serlet_login;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBcontext {
	private final String  severname = "LAPTOP-FAOVOI73\\SQLEXPRESS";
	private final String dbname ="newscar";
	private final String portnumber ="1433";
	private final String instance="";
	private final String UserId = "sa";
	private final String password = "1";
	public Connection getConnection () throws Exception  {
		String url = "jdbc:sqlServer://" +severname + ":" + portnumber + "\\"+instance + "database:" + dbname;
		if(instance == null || instance.trim().isEmpty()){
			url = "jdbc:sqlserver://" +severname + ":" + portnumber + ";databaseName=" + dbname;
		}
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

			return DriverManager.getConnection(url,UserId,password);
	
		
	}
	public static void main(String[] args) throws Exception {
		DBcontext c = new DBcontext();
		System.out.println(c.getConnection());
	}
}
