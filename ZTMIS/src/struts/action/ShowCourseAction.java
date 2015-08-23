/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import struts.form.ShowCourseForm;
import dao.CourseDAO;

/** 
 * MyEclipse Struts
 * Creation date: 12-23-2009
 * 
 * XDoclet definition:
 * @struts.action path="/showCourse" name="showCourseForm" input="/student.jsp" scope="request" validate="true"
 * @struts.action-forward name="showcourse" path="/course/chooseCourse.jsp" contextRelative="true"
 */
public class ShowCourseAction extends Action {
	/*
	 * Generated Methods
	 */
	private CourseDAO courseDao;
	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		ShowCourseForm showCourseForm = (ShowCourseForm) form;// TODO Auto-generated method stub
		courseDao=new dao.CourseDAO();
		java.util.List courseList = courseDao.findAll();
		
		request.getSession().setAttribute("courseList", courseList);
		return mapping.findForward("showcourse");
	}
}