package dao;

/**
 * Teacher entity. @author MyEclipse Persistence Tools
 */

public class Teacher implements java.io.Serializable
{

	// Fields

	private Long teacherId;
	private String name;
	private String password;
	private String email;
	private String title;
	private String description;

	// Constructors

	/** default constructor */
	public Teacher()
	{
	}

	/** minimal constructor */
	public Teacher(String name, String password, String description)
	{
		this.name = name;
		this.password = password;
		this.description = description;
	}

	/** full constructor */
	public Teacher(String name, String password, String email, String title,
			String description)
	{
		this.name = name;
		this.password = password;
		this.email = email;
		this.title = title;
		this.description = description;
	}

	// Property accessors

	public Long getTeacherId()
	{
		return this.teacherId;
	}

	public void setTeacherId(Long teacherId)
	{
		this.teacherId = teacherId;
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

	public String getEmail()
	{
		return this.email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public String getTitle()
	{
		return this.title;
	}

	public void setTitle(String title)
	{
		this.title = title;
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