package dao;

/**
 * FaqList entity. @author MyEclipse Persistence Tools
 */

public class FaqList implements java.io.Serializable
{

	// Fields

	private Long faqId;
	private String question;
	private String answer;

	// Constructors

	/** default constructor */
	public FaqList()
	{
	}

	/** full constructor */
	public FaqList(String question, String answer)
	{
		this.question = question;
		this.answer = answer;
	}

	// Property accessors

	public Long getFaqId()
	{
		return this.faqId;
	}

	public void setFaqId(Long faqId)
	{
		this.faqId = faqId;
	}

	public String getQuestion()
	{
		return this.question;
	}

	public void setQuestion(String question)
	{
		this.question = question;
	}

	public String getAnswer()
	{
		return this.answer;
	}

	public void setAnswer(String answer)
	{
		this.answer = answer;
	}

}