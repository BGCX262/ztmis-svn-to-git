package dao;

/**
 * StudentCourse entity. @author MyEclipse Persistence Tools
 */

public class StudentCourse implements java.io.Serializable
{

	// Fields

	private StudentCourseId id;

	// Constructors

	/** default constructor */
	public StudentCourse()
	{
	}

	/** full constructor */
	public StudentCourse(StudentCourseId id)
	{
		this.id = id;
	}

	// Property accessors

	public StudentCourseId getId()
	{
		return this.id;
	}

	public void setId(StudentCourseId id)
	{
		this.id = id;
	}

}