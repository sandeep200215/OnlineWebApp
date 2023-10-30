package com.servlet;

import java.io.IOException;
import com.servlet.*;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.UserBean;
import com.helper.*;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public LoginServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	}
         
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter pw=response.getWriter();
		com.beans.UserBean obj=new com.beans.UserBean();
		 obj.setUname(request.getParameter("username"));
		 obj.setPass(request.getParameter("password"));
		 
		com.helper.Validation vdt=new com.helper.Validation(obj);
		 if(vdt.validate())
		 {
			 HttpSession s=request.getSession();
			 s.setAttribute("uname", obj.getUname());
			 s.setAttribute("pass",obj.getPass());
			 RequestDispatcher rd=request.getRequestDispatcher("HomeLogin.jsp");
			 rd.forward(request, response);
		 }
		 else
		 {
			 RequestDispatcher rd=request.getRequestDispatcher("Signup.jsp");
			 rd.forward(request, response);
			 pw.println("<h5 style='text-align:center';>Username or password is incorrect</h5>");
		 }
		
		

	

}
}
