package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Bean.CourseCredit;
import com.Bean.CourseId;
import com.Bean.CourseName;
import com.Util.DbConnection;

public class CourseDetails {
	public static ArrayList<String> courseId=new ArrayList<>();
	public static ArrayList<String> courseName=new ArrayList<>();
	public static ArrayList<String> courseCredit=new ArrayList<>();
	public static void setCourseName() {
		CourseName.setCourse1(courseName.get(0));
		CourseName.setCourse2(courseName.get(1));
		CourseName.setCourse3(courseName.get(2));
		CourseName.setCourse4(courseName.get(3));
		CourseName.setCourse5(courseName.get(4));
	}
	public static void setCourseId() {
		CourseId.setCourse1(courseId.get(0));
		CourseId.setCourse2(courseId.get(1));
		CourseId.setCourse3(courseId.get(2));
		CourseId.setCourse4(courseId.get(3));
		CourseId.setCourse5(courseId.get(4));
	}
	public static void setCourseCredit() {
		CourseCredit.setCourse1(courseCredit.get(0));
		CourseCredit.setCourse2(courseCredit.get(1));
		CourseCredit.setCourse3(courseCredit.get(2));
		CourseCredit.setCourse4(courseCredit.get(3));
		CourseCredit.setCourse5(courseCredit.get(4));
	}
	public static void getCourseDetail(String roll) throws SQLException {
		Connection connection=DbConnection.getConnection();
		Statement statement=connection.createStatement();
		ResultSet result;
		if(roll.contains("P")) {
			//System.out.println("CSE");
			result=statement.executeQuery("Select *from CourseCSE");
		}else if(roll.contains("F")) {
			result=statement.executeQuery("Select *from CourseIT");
		}else {
			System.out.println("EEE");
			result=statement.executeQuery("Select *from CourseEEE");
		}
		
		while(result.next()) {
			courseId.add(result.getString(1));
			courseName.add(result.getString(2));
			courseCredit.add(result.getString(3));
		}
		
		setCourseName();
		setCourseId();
		setCourseCredit();
		//System.out.println(courseId+" "+courseName+" "+courseCredit);

	}

}
