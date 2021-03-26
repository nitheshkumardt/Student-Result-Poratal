package com.Bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.Util.*;
public class CheckingUser {
	public static boolean check(String uname,String password) throws SQLException {
		boolean res=false;
		Connection connection=DbConnection.getConnection();
		Statement statement=connection.createStatement();
		ResultSet result=statement.executeQuery("Select * from Login");
		while(result.next()) {
			String uname1=result.getString(1);
			String password1=result.getString(2);
			//System.out.println(uname1+" "+password1);
			if(uname1.equals(uname) && password1.equals(password)) {
				res=true;
				//System.out.println(uname1+" "+password1);
				break;
			}
				
		}
		return res;
	}
}
