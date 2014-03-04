package com.eaie.admin.course;

import java.util.*;
import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;



public class CourseManage {

	public static boolean saveCourse(Course course){
		try{
			BasicDAO.save(course);
			return true;
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
	}
	public static Course getCourse(int id){
		try{
			
			return (Course)BasicDAO.queryById(Course.class, id);
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	public static boolean delCourse(Course course){
		try{
			BasicDAO.delete(course);
		}catch(Exception ex){
			return false;
		}
		return true;
	}
	public static boolean delCourse(int id){
		Course course = getCourse(id);
		if(course!=null)
		try{
			BasicDAO.delete(course);
		}catch(Exception ex){
			return false;
		}
		return true;
	}
	public static boolean updateCourse(Course course){
		try{
			BasicDAO.update(course);
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
		return true;
	}
	public static  Date getDate() {
		return new Date(System.currentTimeMillis());
	}
}


