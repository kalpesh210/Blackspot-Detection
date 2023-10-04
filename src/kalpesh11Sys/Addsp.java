package kalpesh11Sys;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Addsp
 */
public class Addsp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addsp() {
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
		 String LOCATION_NAME=request.getParameter("LOCATION_NAME");
		 String ADDRESS=request.getParameter("ADDRESS");
		 String REASON =request.getParameter("REASON");
		 String LATITUDE= request.getParameter("LATITUDE");
		 String LONGITUDE= request.getParameter("LONGITUDE");
		 String LEVEL= request.getParameter("LEVEL");
		 String CITY= request.getParameter("CITY");
		 Connection con =	DBconnection.connect();
		 PreparedStatement ps;
		try {
			ps = con.prepareStatement("insert into bspot values(?,?,?,?,?,?,?,?)");
			ps.setInt(1, 0);
			ps.setString(2,LOCATION_NAME);
			ps.setString(3,ADDRESS);
			ps.setString(4, REASON);
			ps.setString(5,LATITUDE);
			ps.setString(6, LONGITUDE);
			ps.setString(7, LEVEL);
			ps.setString(8, CITY);
		    int i=ps.executeUpdate();
			   if(i>0)
			    {
            	  response.sendRedirect("succ.html");
		    	 }
			   else
			   {
					  response.sendRedirect("fail.html");
			   }
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
	}	

}
