package com.eaie.admin.leader;

import java.util.List;
import com.eaie.common.BasicDAO;
import com.eaie.dbmanage.Leader;


public class LeaderDAO {
	//±£´æ
	public static boolean Save(Leader leader) {
		try {
			BasicDAO.save(leader);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}
	
	//É¾³ý

	public static void Delete(Leader leader) {
		try {
			BasicDAO.delete(leader);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}
	
	//¸üÐÂ

	public static void Update(Leader leader) {

		try {
			BasicDAO.update(leader);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	public static List GetPersonList() {

		try {
			return BasicDAO.queryByHql("from Person");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public static Leader GetLeader(int id) throws Exception {

		return (Leader) BasicDAO.queryById(Leader.class, id);

	}


}
