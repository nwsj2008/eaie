package com.eaie.admin.professor;

import com.eaie.dbmanage.*;
import com.eaie.tools.MD5;
import com.eaie.common.*;


public class ProfessorManage {
	
	private static final String HQL_GET_PROFESSOR = "FROM Professor AS p WHERE p.name= ";
	public static Professor getProfessor(int id){
		
		try {
			return (Professor)BasicDAO.queryById(Professor.class, id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}	
	}
	public static void SaveProfessor(Professor professor) throws Exception{
		
		BasicDAO.save(professor);
	}
	public static void UpdateProfessor(Professor professor) throws Exception{
		
		BasicDAO.update(professor);
	}
	public static void DeleteProfessor(Professor professor) throws Exception{
		
		BasicDAO.delete(professor);
	}
	
	public static Professor getProfessor(String sProfessorName) throws Exception{
		
		String sHQL = HQL_GET_PROFESSOR +  "'" + sProfessorName + "'";
		Professor professor = (Professor)BasicDAO.queryByHql(sHQL).get(0);
		return professor;
	}
	public static Professor professorLogin(String sName,String sPassWord) throws Exception{
		
		MD5 md5 = new MD5();
		String sPassWordMD5 = md5.getMD5ofStr(sPassWord);		
		Professor professor = getProfessor(sName);
		if(professor==null){			
			return null;
		}else if(professor.getPwd().equals(sPassWordMD5)){			
			return professor;		
		}else {			
			return null;
		}
	}
	

}
