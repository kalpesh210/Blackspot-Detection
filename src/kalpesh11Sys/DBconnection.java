package kalpesh11Sys;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {
		public static Connection connect()
		{
			Connection con = null;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
					 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blackspot","root","");
			}
					catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return (con);
		}
	}


