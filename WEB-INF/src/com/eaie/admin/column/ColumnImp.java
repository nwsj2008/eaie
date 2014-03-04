package com.eaie.admin.column;

import java.util.List;

import com.eaie.dbmanage.Bigclass;
import com.eaie.dbmanage.Smallclass;
import com.eaie.common.BasicDAO;

public class ColumnImp {
	
	public static List getBigclass(){
		List list = null;
		String hql = "from Bigclass";
		try{
			list = BasicDAO.queryByHql(hql);
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}
	}
	
	public static List getSmallclass(){
		List list = null;
		String hql = "from Smallclass";
		try{
			list = BasicDAO.queryByHql(hql);
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}
	}

}
