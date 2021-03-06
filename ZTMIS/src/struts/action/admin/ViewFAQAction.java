/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package struts.action.admin;

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
 */
public class ViewFAQAction extends Action
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
		// TODO Auto-generated method stub
		FaqListDAO dao = new FaqListDAO();
		ItemList faqs = new ItemList();

		List list = dao.findAll();
		faqs.setList(list);
		request.getSession().setAttribute("faqs", faqs);

		return mapping.findForward("success");
	}
}