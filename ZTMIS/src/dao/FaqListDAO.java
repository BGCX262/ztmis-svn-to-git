package dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

/**
 * A data access object (DAO) providing persistence and search support for
 * FaqList entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see dao.FaqList
 * @author MyEclipse Persistence Tools
 */

public class FaqListDAO extends BaseHibernateDAO
{
	private static final Log log = LogFactory.getLog(FaqListDAO.class);
	// property constants
	public static final String QUESTION = "question";
	public static final String ANSWER = "answer";

	public void save(FaqList transientInstance)
	{
		log.debug("saving FaqList instance");
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

	public void delete(FaqList persistentInstance)
	{
		log.debug("deleting FaqList instance");
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

	public FaqList findById(java.lang.Long id)
	{
		log.debug("getting FaqList instance with id: " + id);
		try
		{
			FaqList instance = (FaqList) getSession().get("dao.FaqList", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(FaqList instance)
	{
		log.debug("finding FaqList instance by example");
		try
		{
			List results = getSession().createCriteria("dao.FaqList").add(
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
		log.debug("finding FaqList instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from FaqList as model where model."
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

	public List findByQuestion(Object question)
	{
		return findByProperty(QUESTION, question);
	}

	public List findByAnswer(Object answer)
	{
		return findByProperty(ANSWER, answer);
	}

	public List findAll()
	{
		log.debug("finding all FaqList instances");
		try
		{
			String queryString = "from FaqList";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public FaqList merge(FaqList detachedInstance)
	{
		log.debug("merging FaqList instance");
		try
		{
			FaqList result = (FaqList) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(FaqList instance)
	{
		log.debug("attaching dirty FaqList instance");
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

	public void attachClean(FaqList instance)
	{
		log.debug("attaching clean FaqList instance");
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