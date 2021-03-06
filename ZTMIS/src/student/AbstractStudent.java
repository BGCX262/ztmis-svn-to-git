package student;

/**
 * AbstractStudent entity provides the base persistence definition of the
 * Student entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractStudent implements java.io.Serializable {

	// Fields

	private Long studentId;
	private String name;
	private String password;
	private String email;
	private String gender;
	private String phone;
	private String dormitory;
	private String major;

	// Constructors

	/** default constructor */
	public AbstractStudent() {
	}

	/** minimal constructor */
	public AbstractStudent(String name, String password, String phone) {
		this.name = name;
		this.password = password;
		this.phone = phone;
	}

	/** full constructor */
	public AbstractStudent(String name, String password, String email,
			String gender, String phone, String dormitory, String major) {
		this.name = name;
		this.password = password;
		this.email = email;
		this.gender = gender;
		this.phone = phone;
		this.dormitory = dormitory;
		this.major = major;
	}

	// Property accessors

	public Long getStudentId() {
		return this.studentId;
	}

	public void setStudentId(Long studentId) {
		this.studentId = studentId;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDormitory() {
		return this.dormitory;
	}

	public void setDormitory(String dormitory) {
		this.dormitory = dormitory;
	}

	public String getMajor() {
		return this.major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

}