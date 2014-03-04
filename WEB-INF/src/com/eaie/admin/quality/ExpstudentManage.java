package com.eaie.admin.quality;

import java.util.List;

import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;

public class ExpstudentManage {
	
	
	private static final String HQL_GET_STUDENT = "FROM Expstudent as a WHERE a.stuid = ";	
	public static Expstudent getStudent(String stuid){
		
		String hql = HQL_GET_STUDENT + "'" + stuid + "'";			
		try {
			return (Expstudent)BasicDAO.queryByHql(hql).get(0);
		} catch (Exception e) {	
			return null;
		}		
	}
	public static void SaveStudent(Expstudent student) throws Exception{
		
		MD5 md5= new MD5();
		student.setPwd(md5.getMD5ofStr(student.getPwd()));		
		BasicDAO.save(student);
	}
	public static void UpdateStudent(Expstudent student) throws Exception{
		
		BasicDAO.update(student);
	}
	public static void DeleteStudent(Expstudent student) throws Exception{
		
		BasicDAO.delete(student);
	}
	public static boolean isExist(String stuid){
		
		if(getStudent(stuid)==null){
			return false;
		}else{
			
			return true;
		}
	}
	public static Expstudent login(String sName,String sPassWord) throws Exception{
		
		MD5 md5 = new MD5();
		String sPassWordMD5 = md5.getMD5ofStr(sPassWord);		
		Expstudent student = getStudent(sName);
		if(student==null){			
			return null;
		}else if(student.getPwd().equals(sPassWordMD5)){			
			return student;		
		}else {			
			return null;
		}
	}
	public static boolean changePassword(String password,Expstudent student){
		
		MD5 md5 = new MD5();
		String sPassWordMD5 = md5.getMD5ofStr(password);
		student.setPwd(sPassWordMD5);
		try {
			BasicDAO.update(student);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	public static boolean isPasswordOK(String password,Expstudent student){
		
		MD5 md5 = new MD5();
		String sPassWordMD5 = md5.getMD5ofStr(password);
		if(sPassWordMD5.equals(student.getPwd())){
			
			return true;			
		}else{
			
			return false;
		}
		
	}
	

}
