package com.helper;
import java.sql.*;
public class GetConnection {

	public Connection getConnection()
	{	Connection conn=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3307/project","root","sandeep");
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	    return conn;
		
		
	}

}
