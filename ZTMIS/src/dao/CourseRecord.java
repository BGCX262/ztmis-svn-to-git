package dao;

/**
 * Course entity. @author MyEclipse Persistence Tools
 */

public class CourseRecord implements java.io.Serializable
{

	// Fields

	private Long courseId;
	private String tname;
	private String courseInfo;
	private Long fee;
	private String description;
	private int count;

	// Constructors

	public int getCount()
	{
		return count;
	}

	public void setCount(int count)
	{
		this.count = count;
	}

	/** default constructor */
	public CourseRecord()
	{
	}

	public String getTname()
	{
		return tname;
	}

	public void setTname(String tname)
	{
		this.tname = tname;
	}

	/** full constructor */
	public CourseRecord(String tname, String courseInfo, Long fee,
			String description, int count)
	{
		this.tname = tname;
		this.courseInfo = courseInfo;
		this.fee = fee;
		this.description = description;
		this.count = count;
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

	public String getDescription()
	{
		return this.description;
	}

	public void setDescription(String description)
	{
		this.description = description;
	}

}