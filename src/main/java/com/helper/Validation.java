package com.helper;
import java.sql.*;

import com.beans.UserBean;
public class Validation {
    Connection conn;
	UserBean obj;
	 public Validation(UserBean obj)
	{  
		
		this.obj=obj;
		
	
	}
	public boolean validate()
	{ 
	
		conn=new GetConnection().getConnection();
		int flag=0;
		try {
		PreparedStatement ps=conn.prepareStatement("select * from users where uname=?  and password=?");
		ps.setString(1,obj.getUname());
		ps.setString(2,obj.getPass());
	    ResultSet rs=ps.executeQuery();
	System.out.println(obj.getUname()+" "+obj.getPass());
		if(rs.next())
         flag=1;
		}

	  
	   catch(Exception e)
		{
		   System.out.println(e);
		}
		if(flag==1)
			   return true;
			else
				return false;
	}
	
	

}
