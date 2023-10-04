package apparels.Modal;

public class Attendance {
	
	private int id;
	private String punchIn;
	private String punchOut;
	private String wrkHrs;
	private String email;
	private String role;

	public Attendance() {
		super();
	}
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
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


	public String getWrkHrs() {
		return wrkHrs;
	}


	public void setWrkHrs(String wrkHrs) {
		this.wrkHrs = wrkHrs;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}


}
