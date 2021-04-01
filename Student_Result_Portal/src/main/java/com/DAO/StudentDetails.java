package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Bean.StudentDetail;
import com.Util.DbConnection;

public class StudentDetails {
	public static void getStudentDetails(String roll) throws SQLException {
		StudentDetail st=new StudentDetail();
		Connection connection=DbConnection.getConnection();
		String sql="Select * from Student_Details where roll_number = ?";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
	      preparedStatement.setString(1, roll);
		ResultSet result=preparedStatement.executeQuery();
		result.next();
		String name=result.getString("name");
		String programme=result.getString("programme");
		String branch=result.getString("branch");
		st.setRoll_number(roll);
		st.setName(name);
		st.setProgramme(programme);
		st.setBranch(branch);
	}
	

}
