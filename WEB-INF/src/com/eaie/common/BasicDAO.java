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
			System.out.println("�洢����ʧ��");
			throw re;
		}finally{
//			session.flush();
			HibernateUtil.closeSession();
		}
	}
	
	/**
	 * ���¶���
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
			System.out.println("���¶���ʧ��");
			HibernateUtil.rollbackTransaction();
			throw re;
		}finally{
			session.flush();
			HibernateUtil.closeSession();
		}
	}
	
	/**
	 * ɾ������
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
			System.out.println("ɾ������ʧ��");
			HibernateUtil.rollbackTransaction();
			throw re;
		}finally{
			HibernateUtil.closeSession();
		}
	}
	
	
	
	/**
	 * ���¶���
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
			System.out.println("ɾ������ʧ��");
			HibernateUtil.rollbackTransaction();
			throw re;
		}finally{
			HibernateUtil.closeSession();
		}
	}
	
	/**
	 * ����hql�����Ҷ���
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
			System.out.println("HQL��ѯʧ��");
            throw re;	
		}finally{
			HibernateUtil.closeSession();
		}
		
	}


	/**
	 * ��id�Ų��Ҷ���
	 * @param obj �����ʵ��
	 * @param id ���������ֵ
	 * @return 
	 * @throws Exception 
	 */
	public static Object queryById(Object obj,int id) throws Exception{
		Session session = HibernateUtil.currentSession();
	
		try{
			Object object=session.get(obj.getClass(),id);
			return object;
		}catch(RuntimeException re){
			System.out.println("HQL-id��ѯʧ��");
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
			System.out.println("HQL-id��ѯʧ��");
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
			System.out.println("HQL-id��ѯʧ��");			
			throw re;
		} finally {
			session.flush();
			HibernateUtil.closeSession();
		}

	}
	
	/**
	 * ��ѯ���ݿⷵ�ؼ�¼��
	 * @param obj �����ʵ��
	 * @param id ���������ֵ
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
			System.out.println("��ѯ���ݿⷵ�ؼ�¼��ʧ��");
			throw re;
		}finally{
			HibernateUtil.closeSession();
		}
		
	 }	
	
	/**Top��ѯ
	 * @param topnum ���ؼ�¼��
	 * @param hql ���ڲ�ѯ��HQL
	 * @return
	 */
	public static List getTops(int topnum,String hql){
		
		Session session = HibernateUtil.currentSession();
		try{
			Query q = session.createQuery(hql);			
			q.setMaxResults(topnum);
			return q.list();
		}catch(RuntimeException re){
			System.out.println("Top��ѯʧ��");
			throw re;			
		}finally{
			HibernateUtil.closeSession();
		}
		
		
	}
}
