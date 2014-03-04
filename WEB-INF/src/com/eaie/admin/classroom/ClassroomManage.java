package com.eaie.admin.classroom;

import com.eaie.dbmanage.*;
import com.eaie.common.*;
import java.util.*;
public class ClassroomManage {
	
	public static Classroom GetApply(int id){
		
		try {
			return (Classroom)BasicDAO.queryById(Classroom.class, id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	public static void Reply(Classroom classroom) throws Exception{		
		
		BasicDAO.update(classroom);
	}
	public static void DeleteApply(Classroom classroom) throws Exception{
		
		BasicDAO.delete(classroom);
	}
	public static void SaveApply(Classroom classroom) throws Exception{
		
		BasicDAO.save(classroom);
	}

}
