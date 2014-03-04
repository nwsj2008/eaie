package com.eaie.common;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	
	private static final SessionFactory sessionFactory;
	static{
		try{
			//����Session Factory
			sessionFactory = new Configuration().configure().buildSessionFactory();
		}
		catch (Throwable ex){
			ex.printStackTrace();
			System.out.println("Initial SessionFactory creation failed");
			throw new ExceptionInInitializerError(ex);
		}
	}
	
	public static final ThreadLocal tLocalsess = new ThreadLocal();
	public static final ThreadLocal tLocaltx = new ThreadLocal();
	
	private static Session openSession() throws HibernateException {
		return getSessionFactory().openSession();
	}
	
	private static SessionFactory getSessionFactory() throws HibernateException {
		return sessionFactory;
	}
	
	//ȡ��session
	public static Session currentSession() {
		Session session = (Session)tLocalsess.get();
		//��һ���µ�session,�����ǰ�Ĳ�����
		try {
			if (session == null || !session.isOpen()){
				session = openSession();
				tLocalsess.set(session);
			}
		}
		catch (HibernateException e){
			e.printStackTrace();
			//�׳�HibernateException�쳣
		}
		return session;
	}
	
	//�ر�session
	public static void closeSession() {
		Session session = (Session) tLocalsess.get();
		tLocalsess.set(null);
		try {
			if (session != null && session.isOpen()) {
				session.close();
			}
		}
		catch (HibernateException e){
			e.printStackTrace();
			//�׳�HibernateException�쳣
		}
	}
	
	//��ʼ����
	public static void beginTransaction() {
		Transaction tx = (Transaction)tLocaltx.get();
		try {
			if (tx==null) {
				tx = currentSession().beginTransaction();
				tLocaltx.set(tx);
			}
		}
		catch (HibernateException e){
			e.printStackTrace();
			//�׳�InfrastructureException�쳣
		}
	}

	//�ر�����
	public static void commitTransaction() {
		Transaction tx = (Transaction)tLocaltx.get();
		try {
			if (tx != null && !tx.wasCommitted() && !tx.wasRolledBack())
				tx.commit();
			tLocaltx.set(null);
		}
		catch (HibernateException e){
			e.printStackTrace();
			//�׳�InfrastructureException�쳣
		}
	}
	
	//����ع�
	public static void rollbackTransaction() {
		Transaction tx = (Transaction)tLocaltx.get();
		try {
			tLocaltx.set(null);
			if (tx!=null && !tx.wasCommitted() && !tx.wasRolledBack()) {
				tx.rollback();
			}
		}
		catch (HibernateException e){
			e.printStackTrace();
			//�׳�HibernateException�쳣
		}
	}

}
