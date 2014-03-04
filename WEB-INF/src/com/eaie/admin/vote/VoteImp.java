package com.eaie.admin.vote;

import java.sql.Connection;
import java.sql.Statement;
import java.util.List;

import org.hibernate.Session;

import com.eaie.common.BasicDAO;
import com.eaie.common.HibernateUtil;
import com.eaie.dbmanage.Vote;
import com.eaie.dbmanage.Votepaper;
import com.eaie.dbmanage.Voteip;

public class VoteImp {
	
	public static List getAllVote(){
		String hql = "from Votepaper as vote order by vote.pubtime desc";
		List list;
		try{
			list = BasicDAO.queryByHql(hql);
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public static int getItemNum(int id){
		String hql = "select count(*) from Vote as v where v.votepaper.paperid="+id;
		int num;
		try{
			num = BasicDAO.getRowsNum(hql);
			return num;
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}
	
	public static Votepaper getVoteById(int id){
		Votepaper vote;
		try{
			vote = (Votepaper)BasicDAO.queryById(Votepaper.class,id);
			return vote;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		
	}
	
	public static List getItemsById(int id){
		List list;
		String hql = "from Vote as vote where vote.votepaper.paperid="+id+" order by vote.orderid";
		try{
			list = BasicDAO.queryByHql(hql);
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public static Vote getItemById(int id){
		Vote item;
		try{
			item = (Vote)BasicDAO.queryById(Vote.class, id);
			return item;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public static boolean bulkDelItem(String checked[])
	{	
		String ids ="";
		try {
			Session sessionSql = HibernateUtil.currentSession();
			Connection con=sessionSql.connection();
			HibernateUtil.beginTransaction();
			String procedure = "delete from vote where subid in ";		
			for (int i=0;i<checked.length;i++)
			{	
				if(i!=0){
					ids +="," + checked[i];
				}else{
					ids += checked[i];
				}
			}	
			procedure += "(" + ids + ")";
			Statement stat = con.createStatement();
			stat.execute(procedure);
			HibernateUtil.commitTransaction();
			stat.close();
			con.close();
			HibernateUtil.closeSession();
			return true;
		}
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public static boolean bulkDelVote(String checked[])
	{	
		String ids ="";
		try {
			Session sessionSql = HibernateUtil.currentSession();
			Connection con=sessionSql.connection();
			HibernateUtil.beginTransaction();
			String procedure = "delete votepaper where paperid in ";		
			for (int i=0;i<checked.length;i++)
			{	
				if(i!=0){
					ids +="," + checked[i];
				}else{
					ids += checked[i];
				}
			}	
			procedure += "(" + ids + ")";
			Statement stat = con.createStatement();
			stat.execute(procedure);
			HibernateUtil.commitTransaction();
			stat.close();
			con.close();
			HibernateUtil.closeSession();
			return true;
		}
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public static boolean bulkChangeItem(List list,String ip,int paperid)
	{	
		Vote item = new Vote();
		Voteip vip = new Voteip();
		try{	
		    Session session = HibernateUtil.currentSession();
		    HibernateUtil.beginTransaction();
		    for(int i=0; i<list.size(); i++){
		    	item = (Vote)list.get(i);
		    	session.update(item);
		    }
		    
		    Votepaper vote = (Votepaper)session.get(Votepaper.class, paperid);
		    vip.setVoteip(ip);
		    vip.setVotetime(new java.util.Date());
		    vip.setVotepaper(vote);
		    session.save(vip);
		    	    
		    HibernateUtil.commitTransaction();
		    HibernateUtil.closeSession();
		    return true;
		}catch(Exception ex){
			HibernateUtil.rollbackTransaction();
			HibernateUtil.closeSession();
			ex.printStackTrace();
			return false;
		}
	}
	
	public static List getShowVote(){
		String hql = "from Votepaper as vote where vote.isselected='1' order by vote.pubtime desc";
		List list = null;
		try{
			list = BasicDAO.queryByHql(hql);
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}
		
	}
	
	public static List getVoteipById(int id){
		String hql = "from Voteip as voteip where voteip.votepaper.paperid="+id;
		List list = null;
		try{
			list = BasicDAO.queryByHql(hql);
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}
	}

}
