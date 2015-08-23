package dao;

import java.sql.Timestamp;

/**
 * ReceiptList entity. @author MyEclipse Persistence Tools
 */

public class ReceiptList implements java.io.Serializable
{

	// Fields

	private Long listId;
	private Long studentId;
	private Double amount;
	private Timestamp date;
	private String description;

	// Constructors

	/** default constructor */
	public ReceiptList()
	{
	}

	/** minimal constructor */
	public ReceiptList(Long studentId)
	{
		this.studentId = studentId;
	}

	/** full constructor */
	public ReceiptList(Long studentId, Double amount, Timestamp date,
			String description)
	{
		this.studentId = studentId;
		this.amount = amount;
		this.date = date;
		this.description = description;
	}

	// Property accessors

	public Long getListId()
	{
		return this.listId;
	}

	public void setListId(Long listId)
	{
		this.listId = listId;
	}

	public Long getStudentId()
	{
		return this.studentId;
	}

	public void setStudentId(Long studentId)
	{
		this.studentId = studentId;
	}

	public Double getAmount()
	{
		return this.amount;
	}

	public void setAmount(Double amount)
	{
		this.amount = amount;
	}

	public Timestamp getDate()
	{
		return this.date;
	}

	public void setDate(Timestamp date)
	{
		this.date = date;
	}

	public String getDescription()
	{
		return this.description;
	}

	public void setDescription(String description)
	{
		this.description = description;
	}

}