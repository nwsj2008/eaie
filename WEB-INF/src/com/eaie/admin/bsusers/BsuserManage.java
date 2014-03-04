package com.eaie.admin.bsusers;

import java.util.List;
import com.eaie.dbmanage.*;
import com.eaie.common.*;


public class BsuserManage {

	private static final String HQL_GET_USER ="FROM Bsstudent As Bsusers where Bsusers.name = ";
	
	//保存博士用户
	public static void SaveUser(Bsstudent bsuser) throws Exception{		
		
	BasicDAO.save(bsuser);		
	}
	
	//删除博士用户
	public static void DeleteUser(Bsstudent bsuser) throws Exception {
		
		BasicDAO.delete(bsuser);
	}	
	//更新博士用户
	public static void UpDateUser(Bsstudent bsuser) throws Exception{
		
		BasicDAO.update(bsuser);
	}

//在数据库中查找该该用户名，返回该用户（如果不存在该用户，返回空）
	public static Bsstudent getBsuser(String bsUserName) throws Exception{
		
		String sHQL = HQL_GET_USER +  "'" + bsUserName + "'";
	    //for(int i=0;i<BasicDAO.queryByHql(sHQL).size();i++){
	
		Bsstudent bsuser = (Bsstudent)BasicDAO.queryByHql(sHQL).get(0);
	    return bsuser;
	}
}




