package apparels.Modal;

public class Employee {
	
	private int id;
	private String name;
	private String dob;
	private String tel;
	private String status;
	private String email;
	private String department;
	private String designation;
	private String category;
	private String coverpic;
	private String propic;
	private String marital;
	private String resignation;
	private double basicsal;
	private String empjoin;
	private String empresign;
	private String actstatus;
	private String password;
	
	

	public Employee(int id, String name, String dob, String tel, String status, String email, String department,
			String designation, String category, String coverpic, String propic, String marital, String resignation,
			double basicsal, String empjoin, String empresign, String actstatus, String password) {
		super();
		this.id = id;
		this.name = name;
		this.dob = dob;
		this.tel = tel;
		this.status = status;
		this.email = email;
		this.department = department;
		this.designation = designation;
		this.category = category;
		this.coverpic = coverpic;
		this.propic = propic;
		this.marital = marital;
		this.resignation = resignation;
		this.basicsal = basicsal;
		this.empjoin = empjoin;
		this.empresign = empresign;
		this.actstatus = actstatus;
		this.password = password;
	}

	public Employee() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCoverpic() {
		return coverpic;
	}

	public void setCoverpic(String coverpic) {
		this.coverpic = coverpic;
	}

	public String getPropic() {
		return propic;
	}

	public void setPropic(String propic) {
		this.propic = propic;
	}

	public String getMarital() {
		return marital;
	}

	public void setMarital(String marital) {
		this.marital = marital;
	}

	public String getResignation() {
		return resignation;
	}

	public void setResignation(String resignation) {
		this.resignation = resignation;
	}

	public double getBasicsal() {
		return basicsal;
	}

	public void setBasicsal(double basicsal) {
		this.basicsal = basicsal;
	}

	public String getEmpjoin() {
		return empjoin;
	}

	public void setEmpjoin(String empjoin) {
		this.empjoin = empjoin;
	}

	public String getEmpresign() {
		return empresign;
	}

	public void setEmpresign(String empresign) {
		this.empresign = empresign;
	}

	public String getActstatus() {
		return actstatus;
	}

	public void setActstatus(String actstatus) {
		this.actstatus = actstatus;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", dob=" + dob + ", tel=" + tel + ", status=" + status
				+ ", email=" + email + ", department=" + department + ", designation=" + designation + ", category="
				+ category + ", coverpic=" + coverpic + ", propic=" + propic + ", marital=" + marital + ", resignation="
				+ resignation + ", basicsal=" + basicsal + ", empjoin=" + empjoin + ", empresign=" + empresign
				+ ", actstatus=" + actstatus + ", password=" + password + "]";
	}
	
	
	
}
