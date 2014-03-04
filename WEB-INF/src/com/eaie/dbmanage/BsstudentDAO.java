package com.eaie.dbmanage;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

/**
 * A data access object (DAO) providing persistence and search support for
 * Bsstudent entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.eaie.dbmanage.Bsstudent
 * @author MyEclipse Persistence Tools
 */

public class BsstudentDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(BsstudentDAO.class);
	// property constants
	public static final String NAME = "name";
	public static final String PWD = "pwd";
	public static final String BKZY = "bkzy";
	public static final String BKDS = "bkds";
	public static final String WAIYU = "waiyu";
	public static final String YEWU1 = "yewu1";
	public static final String YEWU2 = "yewu2";
	public static final String ZONGFEN = "zongfen";
	public static final String MSTZ = "mstz";
	public static final String LQZY = "lqzy";
	public static final String LQDS = "lqds";
	public static final String LQLB = "lqlb";

	public void save(Bsstudent transientInstance) {
		log.debug("saving Bsstudent instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Bsstudent persistentInstance) {
		log.debug("deleting Bsstudent instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Bsstudent findById(java.lang.Integer id) {
		log.debug("getting Bsstudent instance with id: " + id);
		try {
			Bsstudent instance = (Bsstudent) getSession().get(
					"com.eaie.dbmanage.Bsstudent", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Bsstudent instance) {
		log.debug("finding Bsstudent instance by example");
		try {
			List results = getSession().createCriteria(
					"com.eaie.dbmanage.Bsstudent")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Bsstudent instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Bsstudent as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List findByPwd(Object pwd) {
		return findByProperty(PWD, pwd);
	}

	public List findByBkzy(Object bkzy) {
		return findByProperty(BKZY, bkzy);
	}

	public List findByBkds(Object bkds) {
		return findByProperty(BKDS, bkds);
	}

	public List findByWaiyu(Object waiyu) {
		return findByProperty(WAIYU, waiyu);
	}

	public List findByYewu1(Object yewu1) {
		return findByProperty(YEWU1, yewu1);
	}

	public List findByYewu2(Object yewu2) {
		return findByProperty(YEWU2, yewu2);
	}

	public List findByZongfen(Object zongfen) {
		return findByProperty(ZONGFEN, zongfen);
	}

	public List findByMstz(Object mstz) {
		return findByProperty(MSTZ, mstz);
	}

	public List findByLqzy(Object lqzy) {
		return findByProperty(LQZY, lqzy);
	}

	public List findByLqds(Object lqds) {
		return findByProperty(LQDS, lqds);
	}

	public List findByLqlb(Object lqlb) {
		return findByProperty(LQLB, lqlb);
	}

	public List findAll() {
		log.debug("finding all Bsstudent instances");
		try {
			String queryString = "from Bsstudent";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Bsstudent merge(Bsstudent detachedInstance) {
		log.debug("merging Bsstudent instance");
		try {
			Bsstudent result = (Bsstudent) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Bsstudent instance) {
		log.debug("attaching dirty Bsstudent instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Bsstudent instance) {
		log.debug("attaching clean Bsstudent instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}