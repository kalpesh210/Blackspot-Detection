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
 * Servlet implementation class URegi
 */
public class URegi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public URegi() {
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
		 String Name=request.getParameter("Name");
		 long  Mobile= Long.parseLong(request.getParameter("Mobile"));
		 String City= request.getParameter("City");
		 String Email=request.getParameter("Email");
		 String Password =request.getParameter("Password");
			Connection con =	DBconnection.connect();
		 PreparedStatement ps1;
		try {
			ps1 = con.prepareStatement("insert into user values(?,?,?,?,?,?)");
			ps1.setInt(1, 0);
			ps1.setString(2,Name);
			ps1.setString(5, Email);
			ps1.setLong(3,Mobile);
			ps1.setString(6, Password);
			ps1.setString(4, City);
		    int i=ps1.executeUpdate();
			   if(i>0)
			    {
            	  response.sendRedirect("login2.html");
		    	 }
			   else
			   {
					  response.sendRedirect("registration1.html");
			   }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
