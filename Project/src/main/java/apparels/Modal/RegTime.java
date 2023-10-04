package apparels.Modal;

public class RegTime {
	private int id;
	private String uemail;
	private String time;
	private String day;
	private String month;
	private String date;
	
	public RegTime() {
		
	}
	public RegTime(int id, String uemail, String time, String day, String month, String date) {
		super();
		this.id = id;
		this.uemail = uemail;
		this.time = time;
		this.day = day;
		this.month = month;
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
}
