package dao;

/**
 * Course entity. @author MyEclipse Persistence Tools
 */

public class Course implements java.io.Serializable
{

	// Fields

	private Long courseId;
	private String courseInfo;
	private Long fee;
	private String courseName;
	private String courseTime;
	private String coursePlace;
	private Long teacherId;

	// Constructors

	/** default constructor */
	public Course()
	{
	}

	/** minimal constructor */
	public Course(String courseInfo, Long fee, String courseName,
			String courseTime, String coursePlace)
	{
		this.courseInfo = courseInfo;
		this.fee = fee;
		this.courseName = courseName;
		this.courseTime = courseTime;
		this.coursePlace = coursePlace;
	}

	/** full constructor */
	public Course(String courseInfo, Long fee, String courseName,
			String courseTime, String coursePlace, Long teacherId)
	{
		this.courseInfo = courseInfo;
		this.fee = fee;
		this.courseName = courseName;
		this.courseTime = courseTime;
		this.coursePlace = coursePlace;
		this.teacherId = teacherId;
	}

	// Property accessors

	public Long getCourseId()
	{
		return this.courseId;
	}

	public void setCourseId(Long courseId)
	{
		this.courseId = courseId;
	}

	public String getCourseInfo()
	{
		return this.courseInfo;
	}

	public void setCourseInfo(String courseInfo)
	{
		this.courseInfo = courseInfo;
	}

	public Long getFee()
	{
		return this.fee;
	}

	public void setFee(Long fee)
	{
		this.fee = fee;
	}

	public String getCourseName()
	{
		return this.courseName;
	}

	public void setCourseName(String courseName)
	{
		this.courseName = courseName;
	}

	public String getCourseTime()
	{
		return this.courseTime;
	}

	public void setCourseTime(String courseTime)
	{
		this.courseTime = courseTime;
	}

	public String getCoursePlace()
	{
		return this.coursePlace;
	}

	public void setCoursePlace(String coursePlace)
	{
		this.coursePlace = coursePlace;
	}

	public Long getTeacherId()
	{
		return this.teacherId;
	}

	public void setTeacherId(Long teacherId)
	{
		this.teacherId = teacherId;
	}

}