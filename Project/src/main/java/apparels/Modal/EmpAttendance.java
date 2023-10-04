package apparels.Modal;

public class EmpAttendance extends Employee{
	
	private String punchIn;
	private String punchOut;
	private String workHours;
	private String date;
	private String role;
	
	
	public EmpAttendance() {
		
	}
	
	public EmpAttendance(int id, String name, String dob, String tel, String status, String email, String department,
			String designation, String category, String coverpic, String propic, String marital, String resignation,
			double basicsal, String empjoin, String empresign, String actstatus, String password, String punchIn,
			String punchOut, String workHours, String date, String role) {
		super(id, name, dob, tel, status, email, department, designation, category, coverpic, propic, marital,
				resignation, basicsal, empjoin, empresign, actstatus, password);
		
		this.punchIn = punchIn;
		this.punchOut = punchOut;
		this.workHours = workHours;
		this.date = date;
		this.setRole(role);
	}




	

	public String getPunchIn() {
		return punchIn;
	}




	public void setPunchIn(String punchIn) {
		this.punchIn = punchIn;
	}




	public String getPunchOut() {
		return punchOut;
	}




	public void setPunchOut(String punchOut) {
		this.punchOut = punchOut;
	}




	public String getWorkHours() {
		return workHours;
	}




	public void setWorkHours(String workHours) {
		this.workHours = workHours;
	}
	
	
	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	




	@Override
	public String toString() {
		return "EmpAttendance [punchIn=" + punchIn + ", punchOut=" + punchOut + ", workHours=" + workHours + ", date=" + date +"]";
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	
	

}
