/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package struts.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import util.ItemList;


import dao.FaqListDAO;

/**
 * MyEclipse Struts Creation date: 12-19-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action validate="true"
 * @struts.action-forward name="success" path="/showFAQ.jsp"
 */
public class ShowFAQAction extends Action
{
	/*
	 * Generated Methods
	 */

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
		FaqListDAO dao = new FaqListDAO();
		ItemList faqList = new ItemList();

		List list = dao.findAll();
		faqList.setList(list);
		request.getSession().setAttribute("faqList", faqList);

		return mapping.findForward("success");
	}
}