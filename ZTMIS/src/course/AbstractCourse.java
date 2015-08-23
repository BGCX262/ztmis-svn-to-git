package course;

/**
 * AbstractCourse entity provides the base persistence definition of the Course
 * entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public abstract class AbstractCourse implements java.io.Serializable {

	// Fields

	private Long courseId;
	private String courseInfo;
	private Long fee;
	private String courseName;
	private String courseTime;
	private String coursePlace;

	// Constructors

	/** default constructor */
	public AbstractCourse() {
	}

	/** full constructor */
	public AbstractCourse(String courseInfo, Long fee, String courseName,
			String courseTime, String coursePlace) {
		this.courseInfo = courseInfo;
		this.fee = fee;
		this.courseName = courseName;
		this.courseTime = courseTime;
		this.coursePlace = coursePlace;
	}

	// Property accessors

	public Long getCourseId() {
		return this.courseId;
	}

	public void setCourseId(Long courseId) {
		this.courseId = courseId;
	}

	public String getCourseInfo() {
		return this.courseInfo;
	}

	public void setCourseInfo(String courseInfo) {
		this.courseInfo = courseInfo;
	}

	public Long getFee() {
		return this.fee;
	}

	public void setFee(Long fee) {
		this.fee = fee;
	}

	public String getCourseName() {
		return this.courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getCourseTime() {
		return this.courseTime;
	}

	public void setCourseTime(String courseTime) {
		this.courseTime = courseTime;
	}

	public String getCoursePlace() {
		return this.coursePlace;
	}

	public void setCoursePlace(String coursePlace) {
		this.coursePlace = coursePlace;
	}

}