package dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;

/**
 * A data access object (DAO) providing persistence and search support for
 * Course entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see dao.Course
 * @author MyEclipse Persistence Tools
 */

public class CourseDAO extends BaseHibernateDAO
{
	private static final Log log = LogFactory.getLog(CourseDAO.class);
	// property constants
	public static final String COURSE_INFO = "courseInfo";
	public static final String FEE = "fee";
	public static final String COURSE_NAME = "courseName";
	public static final String COURSE_TIME = "courseTime";
	public static final String COURSE_PLACE = "coursePlace";
	public static final String TEACHER_ID = "teacherId";

	public void save(Course transientInstance)
	{
		log.debug("saving Course instance");
		try
		{
			/*getSession().save(transientInstance);
			log.debug("save successful");
			*/
			//以下是要修改的DAO，解决提交问题
			Session session=getSession();
			Transaction tx=session.beginTransaction();
			session.save(transientInstance);
			log.debug("save successful");
			tx.commit();
		   session.close();
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Course persistentInstance)
	{
		log.debug("deleting Course instance");
		try
		{
			/*getSession().delete(persistentInstance);
			log.debug("delete successful");*/
			//以下是要修改的DAO，解决提交问题
			Session session=getSession();
			   Transaction tx=session.beginTransaction();
			   session.delete(persistentInstance);
			   log.debug("delete successful");
			   tx.commit();
			   session.close();
		} catch (RuntimeException re)
		{
			log.error("delete failed", re);
			throw re;
		}
	}

	public Course findById(java.lang.Long id)
	{
		log.debug("getting Course instance with id: " + id);
		try
		{
			Course instance = (Course) getSession().get("dao.Course", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Course instance)
	{
		log.debug("finding Course instance by example");
		try
		{
			List results = getSession().createCriteria("dao.Course").add(
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
		log.debug("finding Course instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from Course as model where model."
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

	public List findByCourseInfo(Object courseInfo)
	{
		return findByProperty(COURSE_INFO, courseInfo);
	}

	public List findByFee(Object fee)
	{
		return findByProperty(FEE, fee);
	}

	public List findByCourseName(Object courseName)
	{
		return findByProperty(COURSE_NAME, courseName);
	}

	public List findByCourseTime(Object courseTime)
	{
		return findByProperty(COURSE_TIME, courseTime);
	}

	public List findByCoursePlace(Object coursePlace)
	{
		return findByProperty(COURSE_PLACE, coursePlace);
	}

	public List findByTeacherId(Object teacherId)
	{
		return findByProperty(TEACHER_ID, teacherId);
	}

	public List findAll()
	{
		log.debug("finding all Course instances");
		try
		{
			String queryString = "from Course";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public Course merge(Course detachedInstance)
	{
		log.debug("merging Course instance");
		try
		{
			Course result = (Course) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Course instance)
	{
		log.debug("attaching dirty Course instance");
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

	public void attachClean(Course instance)
	{
		log.debug("attaching clean Course instance");
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