package dao;

import java.sql.Timestamp;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

/**
 * A data access object (DAO) providing persistence and search support for
 * ReceiptList entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see dao.ReceiptList
 * @author MyEclipse Persistence Tools
 */

public class ReceiptListDAO extends BaseHibernateDAO
{
	private static final Log log = LogFactory.getLog(ReceiptListDAO.class);
	// property constants
	public static final String STUDENT_ID = "studentId";
	public static final String AMOUNT = "amount";
	public static final String DESCRIPTION = "description";

	public void save(ReceiptList transientInstance)
	{
		log.debug("saving ReceiptList instance");
		try
		{
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(ReceiptList persistentInstance)
	{
		log.debug("deleting ReceiptList instance");
		try
		{
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re)
		{
			log.error("delete failed", re);
			throw re;
		}
	}

	public ReceiptList findById(java.lang.Long id)
	{
		log.debug("getting ReceiptList instance with id: " + id);
		try
		{
			ReceiptList instance = (ReceiptList) getSession().get(
					"dao.ReceiptList", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(ReceiptList instance)
	{
		log.debug("finding ReceiptList instance by example");
		try
		{
			List results = getSession().createCriteria("dao.ReceiptList").add(
					Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re)
		{
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value)
	{
		log.debug("finding ReceiptList instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from ReceiptList as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByStudentId(Object studentId)
	{
		return findByProperty(STUDENT_ID, studentId);
	}

	public List findByAmount(Object amount)
	{
		return findByProperty(AMOUNT, amount);
	}

	public List findByDescription(Object description)
	{
		return findByProperty(DESCRIPTION, description);
	}

	public List findAll()
	{
		log.debug("finding all ReceiptList instances");
		try
		{
			String queryString = "from ReceiptList";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public ReceiptList merge(ReceiptList detachedInstance)
	{
		log.debug("merging ReceiptList instance");
		try
		{
			ReceiptList result = (ReceiptList) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(ReceiptList instance)
	{
		log.debug("attaching dirty ReceiptList instance");
		try
		{
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(ReceiptList instance)
	{
		log.debug("attaching clean ReceiptList instance");
		try
		{
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}
}