package kalpesh11Sys;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
			Connection con =	DBconnection.connect();
			int lable=0;
			 String email = request.getParameter("Email");
			 String pass =  request.getParameter("Password");
			
	     	PreparedStatement ps;
				try {
					ps = con.prepareStatement("select * from admin where email=? and password = ?");
					ps.setString(1, email);
					ps.setString(2,pass);
				   ResultSet rs=ps.executeQuery();
				   while(rs.next())
				   {
					   lable++;
				   }
				   if(lable >0)
				    {
	            	  response.sendRedirect("admin.html");
			    	 }
				   else
				   {
						  response.sendRedirect("login.html");
				   }
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
				
	}

}
