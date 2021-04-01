package com.Bean;

import java.sql.SQLException;

import com.DAO.CourseDetails;
import com.DAO.ProfilePhoto;
import com.DAO.Result;
import com.DAO.StudentDetails;

public class CollectionOfFunctions {
	public static void getClasses(String uname) {
		try {
			StudentDetails.getStudentDetails(uname);
			Result.getResult(uname);
			CourseDetails.getCourseDetail(uname);
			ProfilePhoto.profilePhoto(uname);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
