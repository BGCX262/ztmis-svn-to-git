/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package struts.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import util.ItemList;
import dao.Course;
import dao.CourseRecord;
import dao.StudentCourse;
import dao.Teacher;
import dao.TeacherDAO;

/**
 * MyEclipse Struts Creation date: 12-20-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action validate="true"
 * @struts.action-forward name="viewselection" path="/viewselection.jsp"
 */
public class ViewselectionAction extends Action
{
	/*
	 * Generated Methods
	 */
	private dao.CourseDAO courseDao;
	private dao.StudentCourseDAO studentCourseDao;

	/**
	 * Method execute
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
	{

		// how to solve studentid��

		// No logic support for counting in DAO.
		ItemList info = new ItemList();
		Long j = new Long(1);
		Long courseid = new Long(1);
		StudentCourse sd;
		CourseRecord cr;
		Course cs;
		String tname;
		int count = 0;
		studentCourseDao = new dao.StudentCourseDAO();
		courseDao = new dao.CourseDAO();
		java.util.List studentCourseList = studentCourseDao.findAll();
		List courseList = new ArrayList();
		List resultList = new ArrayList();
		for (int i = 0; i < studentCourseList.size(); i++)
		{
			sd = (StudentCourse) (studentCourseList.get(i));
			if ((sd.getId().getStudentId()).equals(j))
			{
				cs = courseDao.findById(sd.getId().getCourseId());
				courseList.add(cs);
			}

		}

		for (int i = 0; i < courseList.size(); i++)
		{
			count = 0;
			cs = (Course) (courseList.get(i));
			for (int l = 0; l < studentCourseList.size(); l++)
			{
				sd = (StudentCourse) (studentCourseList.get(l));
				if ((sd.getId().getCourseId()).equals(cs.getCourseId()))
					count++;
			}
			TeacherDAO dao = new TeacherDAO();
			Teacher teacher = dao.findById(cs.getTeacherId());

			tname = teacher.getName();
			cr = new CourseRecord(tname, cs.getCourseInfo(), cs.getFee(), cs
					.getCourseInfo(), count);
			resultList.add(cr);
		}

		info.setList(resultList);

		// java.util.List studentCourseList = studentCourseDao.viewInfo("1");
		// studentCourseDao.getSession().close();
		request.getSession().setAttribute("info", info);

		return mapping.findForward("viewselection");
	}
}