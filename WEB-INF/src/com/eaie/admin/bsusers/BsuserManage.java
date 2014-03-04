package com.eaie.admin.bsusers;

import java.util.List;
import com.eaie.dbmanage.*;
import com.eaie.common.*;


public class BsuserManage {

	private static final String HQL_GET_USER ="FROM Bsstudent As Bsusers where Bsusers.name = ";
	
	//���沩ʿ�û�
	public static void SaveUser(Bsstudent bsuser) throws Exception{		
		
	BasicDAO.save(bsuser);		
	}
	
	//ɾ����ʿ�û�
	public static void DeleteUser(Bsstudent bsuser) throws Exception {
		
		BasicDAO.delete(bsuser);
	}	
	//���²�ʿ�û�
	public static void UpDateUser(Bsstudent bsuser) throws Exception{
		
		BasicDAO.update(bsuser);
	}

//�����ݿ��в��Ҹø��û��������ظ��û�����������ڸ��û������ؿգ�
	public static Bsstudent getBsuser(String bsUserName) throws Exception{
		
		String sHQL = HQL_GET_USER +  "'" + bsUserName + "'";
	    //for(int i=0;i<BasicDAO.queryByHql(sHQL).size();i++){
	
		Bsstudent bsuser = (Bsstudent)BasicDAO.queryByHql(sHQL).get(0);
	    return bsuser;
	}
}




