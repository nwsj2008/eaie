package com.eaie.admin.lecture;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import com.eaie.dbmanage.*;
import com.eaie.common.*;
import com.eaie.tools.*;
public class LectureManage {
	public static boolean saveLecture(Lecture lecture){
		try{
			BasicDAO.save(lecture);
			return true;
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
	}
	public static Lecture getLecture(int id){
		try{
			
			return (Lecture)BasicDAO.queryById(Lecture.class, id);
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	public static boolean delLecture(Lecture lecture){
		try{
			BasicDAO.delete(lecture);
		}catch(Exception ex){
			return false;
		}
		return true;
	}
	public static boolean delLecture(int id){
	    Lecture lecture = getLecture(id);
		if(lecture!=null)
		try{
			BasicDAO.delete(lecture);
		}catch(Exception ex){
			return false;
		}
		return true;
	}
	public static boolean updateLecture(Lecture lecture){
		try{
			BasicDAO.update(lecture);
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
		return true;
	}
	public static Date getDate(String dateStr, String format) throws Exception {

		if (dateStr == null || format == null) {
			throw new Exception("数据类型异常" + dateStr + "|" + format);
		}

		SimpleDateFormat df = new SimpleDateFormat(format,Locale.SIMPLIFIED_CHINESE);

		try {
			Date date = df.parse(dateStr);
			return date;
		} catch (Exception ex) {
			return null;
		}
	}
	public static  Date getDate() {
		return new Date(System.currentTimeMillis());
	}
}
