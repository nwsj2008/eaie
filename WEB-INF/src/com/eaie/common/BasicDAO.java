package com.eaie.common;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.eaie.common.HibernateUtil;


public class BasicDAO {

	public static void save(Object obj) throws Exception  {
		Session session = HibernateUtil.currentSession();
		HibernateUtil.beginTransaction();
		try{
			session.save(obj);
			HibernateUtil.commitTransaction();
		}catch(RuntimeException re){
			HibernateUtil.rollbackTransaction();
			System.out.println("存储对象失败");
			throw re;
		}finally{
//			session.flush();
			HibernateUtil.closeSession();
		}
	}
	
	/**
	 * 更新对象
	 * @param obj
	 * @throws Exception 
	 */
	public static void update(Object obj) throws Exception  {
		Session session = HibernateUtil.currentSession();
		HibernateUtil.beginTransaction();
		try{
			session.update(obj);
			HibernateUtil.commitTransaction();
		}catch(RuntimeException re){
			System.out.println("更新对象失败");
			HibernateUtil.rollbackTransaction();
			throw re;
		}finally{
			session.flush();
			HibernateUtil.closeSession();
		}
	}
	
	/**
	 * 删除对象
	 * @param obj
	 * @throws Exception 
	 */
	public static void delete(Object obj) throws Exception  {
		Session session = HibernateUtil.currentSession();
		HibernateUtil.beginTransaction();
		try{
			session.delete(obj);
			HibernateUtil.commitTransaction();
		}catch(RuntimeException re){
			System.out.println("删除对象失败");
			HibernateUtil.rollbackTransaction();
			throw re;
		}finally{
			HibernateUtil.closeSession();
		}
	}
	
	
	
	/**
	 * 更新对象
	 * @throws Exception 
	 * @throws BException
	 */
	public static void saveOrUpdate(Object obj) throws Exception {
		Session session = HibernateUtil.currentSession();
		HibernateUtil.beginTransaction();
		try{
			session.saveOrUpdate(obj);
			HibernateUtil.commitTransaction();
		}catch(RuntimeException re){
			System.out.println("删除对象失败");
			HibernateUtil.rollbackTransaction();
			throw re;
		}finally{
			HibernateUtil.closeSession();
		}
	}
	
	/**
	 * 根据hql语句查找对象
	 * @param hql
	 * @return
	 * @throws Exception 
	 */
	public static List queryByHql(String hql) throws Exception{
    	Session session = HibernateUtil.currentSession();
		try{
			Query q=session.createQuery(hql);
			List temp=q.list();
			
			return temp;
		}
		catch(RuntimeException re){
			System.out.println("HQL查询失败");
            throw re;	
		}finally{
			HibernateUtil.closeSession();
		}
		
	}


	/**
	 * 按id号查找对象
	 * @param obj 对象的实体
	 * @param id 对象的主键值
	 * @return 
	 * @throws Exception 
	 */
	public static Object queryById(Object obj,int id) throws Exception{
		Session session = HibernateUtil.currentSession();
	
		try{
			Object object=session.get(obj.getClass(),id);
			return object;
		}catch(RuntimeException re){
			System.out.println("HQL-id查询失败");
			throw re;
		}finally{
			HibernateUtil.closeSession();
		}	
	 }	
	
	public static Object queryByStrId(Class classInfo,String id) throws Exception{
		Session session = HibernateUtil.currentSession();
		try{
			Object object=session.get(classInfo,id);
			return object;
		}catch(RuntimeException re){
			System.out.println("HQL-id查询失败");
			throw re;
		}finally{
			HibernateUtil.closeSession();
		}	
	 }
	
	
	public static Object queryById(Class classInfo, int id) throws Exception {		
		Session session = HibernateUtil.currentSession();
		try {
			Object object = session.get(classInfo, id);
			return object;
		} catch (RuntimeException re) {
			System.out.println("HQL-id查询失败");			
			throw re;
		} finally {
			session.flush();
			HibernateUtil.closeSession();
		}

	}
	
	/**
	 * 查询数据库返回记录数
	 * @param obj 对象的实体
	 * @param id 对象的主键值
	 * @return 
	 * @throws Exception 
	 */
	public static int getRowsNum(String hql) throws Exception{
		Session session = HibernateUtil.currentSession();
		int rowsNum=0;
		try{
			Query q = session.createQuery(hql);
			rowsNum = Integer.parseInt(q.list().get(0).toString());
			return rowsNum;
		}catch(RuntimeException re){
			System.out.println("查询数据库返回记录数失败");
			throw re;
		}finally{
			HibernateUtil.closeSession();
		}
		
	 }	
	
	/**Top查询
	 * @param topnum 返回记录数
	 * @param hql 用于查询的HQL
	 * @return
	 */
	public static List getTops(int topnum,String hql){
		
		Session session = HibernateUtil.currentSession();
		try{
			Query q = session.createQuery(hql);			
			q.setMaxResults(topnum);
			return q.list();
		}catch(RuntimeException re){
			System.out.println("Top查询失败");
			throw re;			
		}finally{
			HibernateUtil.closeSession();
		}
		
		
	}
}
