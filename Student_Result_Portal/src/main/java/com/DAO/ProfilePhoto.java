package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Bean.Image;
import com.Util.DbConnection;

public class ProfilePhoto {
	public static void profilePhoto(String roll) throws SQLException {
		Connection connection=DbConnection.getConnection();
		String sql="Select * from profile where roll_number = ?";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
	      preparedStatement.setString(1, roll);
		ResultSet result=preparedStatement.executeQuery();
		result.next();
		String image=result.getString("image");
		Image.setImage(image);
	}

}
