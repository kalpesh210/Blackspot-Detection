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
 * Servlet implementation class Admin
 */
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin() {
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
		 String stn=request.getParameter("stn");
		 String Address=request.getParameter("Address");
		 long  Contact= Long.parseLong(request.getParameter("Contact"));
		 String Email =request.getParameter("Email");
		 String Password= request.getParameter("Password");
		 Connection con =	DBconnection.connect();
		 PreparedStatement ps;
		try {
			ps = con.prepareStatement("insert into police values(?,?,?,?,?,?)");
			ps.setInt(1, 0);
			ps.setString(2,stn);
			ps.setString(3, Address);
			ps.setLong(4,Contact);
			ps.setString(5, Email);
			ps.setString(6, Password);
		    int i=ps.executeUpdate();
			   if(i>0)
			    {
            	  response.sendRedirect("success.html");
		    	 }
			   else
			   {
					  response.sendRedirect("try.html");
			   }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
			
	}

}
