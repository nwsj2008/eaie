package com.eaie.common;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class EbasicDAO extends BasicDAO{
         public static void mDeleteHQL(String  hql,String []ss){
        	 Session session = HibernateUtil.currentSession();
        	 Transaction transaction = session.beginTransaction();
        	try {
				Query query = session.createQuery(hql);
				query.setParameterList("Ids", ss, Hibernate.STRING);
				query.executeUpdate();
				transaction.commit();
			} catch (RuntimeException e) {
				e.printStackTrace();
				HibernateUtil.rollbackTransaction();
			} 
			finally {
				HibernateUtil.closeSession();
			}
         }
}
