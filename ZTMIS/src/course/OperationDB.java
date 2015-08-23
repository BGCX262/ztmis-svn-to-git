package course;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Transaction;

import dao.Course;
import dao.CourseDAO;
import factory.HibernateSessionFactory;

public class OperationDB
{

	private static final Log log = LogFactory.getLog(CourseDAO.class);

	public boolean insert(Course transientInstance)
	{
		boolean bool = false;
		log.debug("saving Course instance");

		try
		{
			Transaction tran = HibernateSessionFactory.getSession()
					.beginTransaction();
			HibernateSessionFactory.getSession().save(transientInstance);
			log.debug("save successfully");
			tran.commit();
			bool = true;
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
		return bool;
	}

	public boolean delete(Course transientInstance)
	{
		boolean bool = false;
		log.debug("delete Course instance");

		try
		{
			Transaction tran = HibernateSessionFactory.getSession()
					.beginTransaction();
			HibernateSessionFactory.getSession().delete(transientInstance);
			log.debug("delete successfully");
			tran.commit();
			bool = true;
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
		return bool;
	}

	public boolean update(Course transientInstance)
	{
		boolean bool = false;
		log.debug("update Course instance");

		try
		{
			Transaction tran = HibernateSessionFactory.getSession()
					.beginTransaction();
			HibernateSessionFactory.getSession().clear();
			HibernateSessionFactory.getSession().update(transientInstance);
			log.debug("update successfully");
			tran.commit();
			bool = true;
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
		return bool;
	}

}
