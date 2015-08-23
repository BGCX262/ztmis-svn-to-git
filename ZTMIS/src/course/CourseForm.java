package course;

import org.apache.struts.action.ActionForm;

public class CourseForm extends ActionForm {
	
	private Long courseId;
	private String courseName;
	private String teacherName;
	private Long fee;
	private String courseTime;
	private String coursePlace;
	private String despretion;
	
	public void setCourseId(Long i)
	{
		this.courseId=i;
	}
	
	public Long getCourseId()
	{
		return courseId;
	}
	
	public void setCourseName(String i)
	{
		this.courseName=i;
	}
	
	public String getCourseName()
	{
		return courseName;
	}
	
	public void setTeacherName(String i)
	{
		this.teacherName=i;
	}
	
	public String getTeacherName()
	{
		return teacherName;
	}
	
	public void setFee(Long i)
	{
		this.fee=i;
	}
	
	public Long getFee()
	{
		return fee;
	}
	
	public void setCourseTime(String i)
	{
		this.courseTime=i;
	}
	
	public String getCourseTime()
	{
		return courseTime;
	}
	
	public void setCoursePlace(String i)
	{
		this.coursePlace=i;
	}
	
	public String getCoursePlace()
	{
		return coursePlace;
	}
	
	public void setDespretion(String i)
	{
		this.despretion=i;
	}
	
	public String getDespretion()
	{
		return despretion;
	}
}
