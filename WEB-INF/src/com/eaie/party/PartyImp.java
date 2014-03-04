package com.eaie.party;

import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Vector;

import org.hibernate.Query;
import org.hibernate.Session;

import com.eaie.common.BasicDAO;
import com.eaie.common.HibernateUtil;
import com.eaie.dbmanage.Commie;
import com.eaie.dbmanage.Commiepub;
import com.eaie.tools.MD5;

public class PartyImp {

	private static List getList(String hql){
		try{
			Session session = HibernateUtil.currentSession();
			Query query = session.createQuery(hql);
			query.setFirstResult(0);
			query.setMaxResults(6);
			return query.list();
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	
	private static List getPubList(String hql){
		try{
			Session session = HibernateUtil.currentSession();
			Query query = session.createQuery(hql);
			query.setFirstResult(0);
			query.setMaxResults(1);
			return query.list();
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	
	private static List getNews(){
		String hql = "Select news.id,news.title,news.pubtime,news.ispicnews FROM News AS news WHERE news.smallclassid=71 ORDER BY news.istop DESC,news.pubtime DESC";
		return getList(hql);
	}
	
	private static List getZhiBu(){
		String hql = "Select news.id,news.title,news.ispicnews FROM News AS news WHERE news.smallclassid=73 ORDER BY news.istop DESC,news.pubtime DESC";
		return getList(hql);
	}
	
	private static List getLiLun(){
		String hql = "Select news.id,news.title,news.ispicnews FROM News AS news WHERE news.smallclassid=74 ORDER BY news.istop DESC,news.pubtime DESC";
		return getList(hql);
	}
	
	private static List getXueXi(){
		String hql = "Select news.id,news.title,news.ispicnews FROM News AS news WHERE news.smallclassid = 75 ORDER BY news.istop DESC,news.pubtime DESC";
		return getList(hql);
	}
	
	private static List getDaohang(){
		String hql = "Select news.id,news.title,news.ispicnews FROM News AS news WHERE news.smallclassid = 76 ORDER BY news.istop DESC,news.pubtime DESC";
		return getList(hql);
	}
	
	private static List getMemberList(){
		String hql = "from Commiepub as pub order by pub.id desc";
		return getList(hql);
	}
	
	private static List getFileList(){
		String hql = "select file.id,file.filename from Upfile as file where file.bigclassid=7 order by file.uptime desc";
		return getPubList(hql);
	}
	
	public static Vector getParty(){
		Vector<List> party = new Vector();
		party.add(getNews());
		party.add(getZhiBu());
		party.add(getLiLun());
		party.add(getXueXi());
		party.add(getDaohang());
		party.add(getMemberList());
		party.add(getFileList());
		return party;
	}
	
	public static List getBranchLish(){
		String hql = "select distinct commie.branch from Commie as commie order by commie.branch";
		List list = null;
		try{
			list = BasicDAO.queryByHql(hql);
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return list;
		}
	}
	
	public static Collection getBranchInfo(String branchName){
		String hql = "select commie.name,commie.post from Commie as commie where commie.branch='"+branchName+"' order by commie.post,commie.id";
		String hqlCount = "select count(*) from Commie as commie where commie.branch='"+branchName+"'";
		Collection collection = new ArrayList();
		try {
			int num = BasicDAO.getRowsNum(hqlCount);
			List list = BasicDAO.queryByHql(hql);
			collection.add(num);
			collection.add(list);
			return collection;			
		}catch(Exception e){
			e.printStackTrace();
			return collection;
		}
	}
	
	public static String getPassword(String username){
		String hql = "from Commie as commie where commie.stuid='"+username+"'";
		try{
			Commie commie = (Commie)BasicDAO.queryByHql(hql).get(0);
			if(commie==null)
				return null;
			else
				return commie.getPwd();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public static Commie getCommie(String stuNum){
		try{
			Commie commie = (Commie)BasicDAO.queryByStrId(Commie.class, stuNum);
			return commie;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public static boolean setPw(String pwd, Commie commie){
		MD5 md5 = new MD5();
		try{
			String pw = md5.getMD5ofStr(pwd);		
			commie.setPwd(pw);
			BasicDAO.update(commie);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}	
	}
	
	public static boolean savePub(Commiepub pub){
		try{
			BasicDAO.save(pub);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
}
