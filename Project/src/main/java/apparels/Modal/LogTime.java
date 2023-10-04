package apparels.Modal;

public class LogTime extends RegTime {
	
	private int role;

	public LogTime() {
	}

	public LogTime(int id, String uemail, String time, String day, String month, String date,int role) {
		super();
		this.role = role;
	}

	public LogTime(String uemail, String time, String day, String month, String date,int role) {

		super();
		this.role = role;
	}

	
	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

}
