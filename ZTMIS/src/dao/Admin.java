package dao;

/**
 * Admin entity. @author MyEclipse Persistence Tools
 */

public class Admin implements java.io.Serializable
{

	// Fields

	private Long adminId;
	private String name;
	private String password;

	// Constructors

	/** default constructor */
	public Admin()
	{
	}

	/** full constructor */
	public Admin(String name, String password)
	{
		this.name = name;
		this.password = password;
	}

	// Property accessors

	public Long getAdminId()
	{
		return this.adminId;
	}

	public void setAdminId(Long adminId)
	{
		this.adminId = adminId;
	}

	public String getName()
	{
		return this.name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getPassword()
	{
		return this.password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}

}