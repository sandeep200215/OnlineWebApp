package com.servlet;
import java.sql.*;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helper.GetConnection;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
           }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		com.beans.RegisterBean obj=new com.beans.RegisterBean();
		obj.setUname(request.getParameter("uname"));
		obj.setPassword(request.getParameter("pass"));
		obj.setMobile(request.getParameter("mob"));
		obj.setAddress(request.getParameter("address"));
		Connection conn=new com.helper.GetConnection().getConnection();
		try
		{
		
			PreparedStatement ps=conn.prepareStatement("insert into users values(?,?,?,?)");
			ps.setString(1, obj.getUname());
			ps.setString(2, obj.getPassword());
			ps.setString(3, obj.getMobile());
			ps.setString(4, obj.getAddress());
		    int x=  ps.executeUpdate();
		    if(x>0)
		    {
		    	RequestDispatcher rd=request.getRequestDispatcher("Signin.jsp");
		    	rd.include(request, response);
		    	response.getWriter().println("<h3 style='text-align:center;'> Register successfully please login now</h3>");
		    	
		    }
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		
	
	}

}
