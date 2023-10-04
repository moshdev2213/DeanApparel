package apparels.Modal;

public class EmpLeaves {
	
	private int id;
	private String name;
	private String fromDate;
	private String toDate;
	private String appliedDate;
	private String type;
	private String status;
	private String reason;
	private String breakdown;
	
	
	



	public EmpLeaves() {
		super();
	}



	public EmpLeaves(int id, String fromDate, String toDate, String appliedDate, String type, String status,String reason, String name, String breakdown) {
		super();
		this.id = id;
		this.fromDate = fromDate;
		this.toDate = toDate;
		this.appliedDate = appliedDate;
		this.type = type;
		this.status = status;
		this.reason=reason;
		this.name=name;
		this.breakdown=breakdown;
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



	public String getFromDate() {
		return fromDate;
	}



	public void setFromDate(String fromDate) {
		this.fromDate = fromDate;
	}



	public String getToDate() {
		return toDate;
	}



	public void setToDate(String toDate) {
		this.toDate = toDate;
	}



	public String getAppliedDate() {
		return appliedDate;
	}



	public void setAppliedDate(String appliedDate) {
		this.appliedDate = appliedDate;
	}



	public String getType() {
		return type;
	}



	public void setType(String type) {
		this.type = type;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}
	
	
	public String getReason() {
		return reason;
	}



	public void setReason(String reason) {
		this.reason = reason;
	}

	
	

	public String getBreakdown() {
		return breakdown;
	}



	public void setBreakdown(String breakdown) {
		this.breakdown = breakdown;
	}



	@Override
	public String toString() {
		return "EmpLeaves [id=" + id + ", fromDate=" + fromDate + ", toDate=" + toDate + ", appliedDate=" + appliedDate
				+ ", type=" + type + ", status=" + status + "]";
	}
	
	

}
