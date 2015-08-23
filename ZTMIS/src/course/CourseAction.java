package course;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import util.Counter;
import util.PagedListHolder;
import dao.*;


public class CourseAction extends DispatchAction
{

	public ActionForward addCourse(ActionMapping mapping, ActionForm form,
			HttpServletRequest req, HttpServletResponse res)
	{
		CourseForm acf = (CourseForm) form;
		String courseName = acf.getCourseName();
		Long fee = acf.getFee();
		String courseTime = acf.getCourseTime();
		String coursePlace = acf.getCoursePlace();
		String despretion = acf.getDespretion();
		OperationDB operation = new OperationDB();
		ActionForward forward = new ActionForward();

		Course course = new Course();
		course.setCourseName(courseName);
		course.setFee(fee);
		course.setCourseTime(courseTime);
		course.setCoursePlace(coursePlace);
		course.setCourseInfo(despretion);

		if (operation.insert(course))
		{
			try
			{
				forward = mapping.findForward("success");
			} catch (Exception e)
			{
				forward = mapping.findForward("failure");
			}
		} else
		{
			forward = mapping.findForward("failure");
		}

		return (forward);
	}

	// ��ʾĳһ����γ̵���Ϣ���Ա?����ʽ
	public ActionForward displayCourse(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
	{

		CourseForm courseform = (CourseForm) form;
		CourseDAO dao = new CourseDAO();
		Course course = dao.findById(courseform.getCourseId());

		// ���δ�ҵ���ת�����ҳ��
		if (course == null)
		{
			request.setAttribute("message", "δ�ҵ����˻�");
			return mapping.findForward("failure");
		}

		// ����Ϣ���ڱ?��Ϣ��
		courseform.setCourseName(course.getCourseName());
		courseform.setCoursePlace(course.getCoursePlace());
		courseform.setCourseTime(course.getCourseTime());
		courseform.setDespretion(course.getCourseInfo());
		courseform.setFee(course.getFee());

		return mapping.findForward("updateCourse");

	}

	// �޸Ŀγ���Ϣ
	public ActionForward updateCourse(ActionMapping mapping, ActionForm form,
			HttpServletRequest req, HttpServletResponse res)
	{
		CourseForm addform = (CourseForm) form;
		String courseName = addform.getCourseName();
		Long fee = addform.getFee();
		String courseTime = addform.getCourseTime();
		String coursePlace = addform.getCoursePlace();
		String despretion = addform.getDespretion();
		Long courseId = addform.getCourseId();
		OperationDB operation = new OperationDB();
		ActionForward forward = new ActionForward();

		Course course = new Course();
		course.setCourseName(courseName);
		course.setFee(fee);
		course.setCourseTime(courseTime);
		course.setCoursePlace(coursePlace);
		course.setCourseInfo(despretion);
		course.setCourseId(courseId);

		if (operation.update(course))
		{
			try
			{
				forward = mapping.findForward("success");
			} catch (Exception e)
			{
				forward = mapping.findForward("failure");
			}
		} else
		{
			forward = mapping.findForward("failure");
		}
		// forward = mapping.findForward("success");
		return (forward);
	}

	public ActionForward deleteCourse(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
	{

		CourseForm deleteform = (CourseForm) form;
		CourseDAO dao = new CourseDAO();
		Course course = dao.findById(deleteform.getCourseId());
		OperationDB operation = new OperationDB();
		ActionForward forward = new ActionForward();

		// ���δ�ҵ���ת�����ҳ��
		if (course == null)
		{
			request.setAttribute("message", "δ�ҵ����˻�");
			return mapping.findForward("failure");
		}

		if (operation.delete(course))
		{
			try
			{
				forward = mapping.findForward("success");
			} catch (Exception e)
			{
				forward = mapping.findForward("failure");
			}
		} else
		{
			forward = mapping.findForward("failure");
		}

		return (forward);

	}

	/**
	 * ѧ���б�
	 */
	public ActionForward courseList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
	{

		CourseDAO dao = new CourseDAO();
		List courses = dao.findAll();

		// ���δ�ҵ���ת�����ҳ��
		if (courses == null || courses.size() == 0)
		{
			request.setAttribute("message", "δ�ҵ����˻�");
			return mapping.findForward("failure");
		}

		PagedListHolder courseList = new PagedListHolder(courses);
		courseList.setPageSize(10);

		request.getSession().setAttribute("courseList", courseList);
		request.setAttribute("courseList", courseList);

		request.getSession().setAttribute("courses", courses);

		return mapping.findForward("courseList");
	}

	/**
	 * ��һҳ
	 */
	public ActionForward nextPage(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
	{

		// ȡ��Session�еķ�ҳ��
		PagedListHolder courseList = (PagedListHolder) request.getSession()
				.getAttribute("courseList");

		// ȡ����һҳ���
		courseList.nextPage();
		request.setAttribute("courseList", courseList);

		return mapping.findForward("courseList");
	}

	/**
	 * ��һҳ
	 */
	public ActionForward previousPage(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
	{

		// ȡ��Session�еķ�ҳ��
		PagedListHolder courseList = (PagedListHolder) request.getSession()
				.getAttribute("courseList");

		// ȡ����һҳ���
		courseList.previousPage();
		request.setAttribute("courseList", courseList);

		return mapping.findForward("courseList");
	}

	/**
	 * ��ҳ
	 */
	public ActionForward firstPage(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
	{

		// ȡ��Session�еķ�ҳ��
		PagedListHolder courseList = (PagedListHolder) request.getSession()
				.getAttribute("courseList");

		// ȡ����һҳ���
		courseList.firstPage();
		request.setAttribute("courseList", courseList);

		return mapping.findForward("courseList");
	}

	/**
	 * βҳ
	 */
	public ActionForward lastPage(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
	{

		// ȡ��Session�еķ�ҳ��
		PagedListHolder courseList = (PagedListHolder) request.getSession()
				.getAttribute("courseList");

		// ȡ����һҳ���
		courseList.lastPage();
		request.setAttribute("courseList", courseList);

		return mapping.findForward("courseList");
	}

	public ActionForward viewCourse(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
	{
		CourseForm courseform = (CourseForm) form;
		CourseDAO dao = new CourseDAO();
		Course course = dao.findById(courseform.getCourseId());

		if (course == null)
		{
			request.setAttribute("message", "no such course");
			return mapping.findForward("failure");
		}

		StudentCourseDAO scdao = new StudentCourseDAO();
		List list = scdao.findAll();

		StudentCourseId sc = new StudentCourseId();

		int count = 0;
		for (int i = 0; i < list.size(); i++)
		{
			sc = (StudentCourseId) list.get(i);
			if (sc.getCourseId() == courseform.getCourseId())
				count++;
		}
		Counter counter = new Counter();
		counter.setCount(count);

		request.setAttribute("course", course);
		request.setAttribute("counter", counter);
		return mapping.findForward(util.Constants.SUCCESS);
	}
	public ActionForward choiceList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
	{
		System.out.println("\nok\n");
		if(request.getSession().getAttribute("usertype").toString().equalsIgnoreCase("student"))
		{
		Student student=(Student)(request.getSession().getAttribute("user"));
		StudentCourseDAO scDao = new StudentCourseDAO();
		CourseDAO cDao=new CourseDAO();
		List list = scDao.findAll();
		List choiceList=new java.util.Vector();
		for(int i=0;i<list.size();i++)
		{
			System.out.println("\nok\n");
			if(((StudentCourse)
			(list.get(i))).
			getId().
			getStudentId().
			longValue()==
			student.
			getStudentId().
			longValue())
			{
				
				choiceList.add(cDao.findById(((StudentCourse)(list.get(i))).getId().getCourseId()));
				System.out.println("ok\n");
			}	
		}
	request.getSession().setAttribute("choiceList",choiceList);
		}
	return mapping.findForward("showchoice");
		
		
	}
	
}
