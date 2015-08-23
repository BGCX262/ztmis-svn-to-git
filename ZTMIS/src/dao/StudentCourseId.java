package dao;

/**
 * StudentCourseId entity. @author MyEclipse Persistence Tools
 */

public class StudentCourseId implements java.io.Serializable
{

	// Fields

	private Long courseId;
	private Long studentId;

	// Constructors

	/** default constructor */
	public StudentCourseId()
	{
	}

	/** full constructor */
	public StudentCourseId(Long courseId, Long studentId)
	{
		this.courseId = courseId;
		this.studentId = studentId;
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

	public Long getStudentId()
	{
		return this.studentId;
	}

	public void setStudentId(Long studentId)
	{
		this.studentId = studentId;
	}

	public boolean equals(Object other)
	{
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof StudentCourseId))
			return false;
		StudentCourseId castOther = (StudentCourseId) other;

		return ((this.getCourseId() == castOther.getCourseId()) || (this
				.getCourseId() != null
				&& castOther.getCourseId() != null && this.getCourseId()
				.equals(castOther.getCourseId())))
				&& ((this.getStudentId() == castOther.getStudentId()) || (this
						.getStudentId() != null
						&& castOther.getStudentId() != null && this
						.getStudentId().equals(castOther.getStudentId())));
	}

	public int hashCode()
	{
		int result = 17;

		result = 37 * result
				+ (getCourseId() == null ? 0 : this.getCourseId().hashCode());
		result = 37 * result
				+ (getStudentId() == null ? 0 : this.getStudentId().hashCode());
		return result;
	}

}