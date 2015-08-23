/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package struts.action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import struts.form.AddFAQForm;
import util.Constants;
import dao.FaqList;
import factory.HibernateSessionFactory;

/**
 * MyEclipse Struts Creation date: 12-16-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/admin/addFAQ" name="addFAQForm"
 *                input="/admin/addFAQ.jsp" scope="request" validate="true"
 */
public class AddFAQAction extends Action
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
		AddFAQForm addFAQForm = (AddFAQForm) form;
		FaqList faq = new FaqList();
		faq.setAnswer(addFAQForm.getAnswer());
		faq.setQuestion(addFAQForm.getQuestion());

		// use session to save entity
		// you can use DAO to save the entity as below
		// FaqListDAO dao = new FaqListDAO();
		// dao.save(faq);
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try
		{
			session.saveOrUpdate(faq);

			tx.commit();
			session.close();

		} catch (HibernateException e)
		{
			e.printStackTrace();
			tx.rollback();
		}

		ActionForward forward = mapping.findForward(Constants.SUCCESS);
		return forward;
	}
}