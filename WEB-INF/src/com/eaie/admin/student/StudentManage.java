package com.eaie.admin.student;

import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;

public class StudentManage {
	
	private static final String HQL_GET_CLASSES = "SELECT DISTINCT a.banji FROM Student as a";
	private static final String HQL_GET_STUDENT = "FROM Student as a WHERE a.stuid = ";
	public static List getClasses() throws Exception{		
		return BasicDAO.queryByHql(HQL_GET_CLASSES);
	}
	public static Student getStudent(String stuid){
		
		String hql = HQL_GET_STUDENT + "'" + stuid + "'";	
		try {
			return (Student)BasicDAO.queryByHql(hql).get(0);
		} catch (Exception e) {			
			e.printStackTrace();
			return null;
		}		
	}
	public static void SaveStudent(Student student) throws Exception{
		
		BasicDAO.save(student);
	}
	public static void UpdateStudent(Student student) throws Exception{
		
		BasicDAO.update(student);
	}
	public static void DeleteStudent(Student student) throws Exception{
		
		BasicDAO.delete(student);
	}
	

}
