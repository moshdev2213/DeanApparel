package apparels.Modal;

public class Licence {
	
	private String name;
	
	private  String issudate;
	private String expdate;
	private String dob;
	private String add;
	private String blood;
	private String licencecardid;
	private String Type;
	private String created;
	private int driverid;
	
	
	
	public Licence() {
		
	}



	public Licence(String name, String issudate, String expdate, String dob, String add, String blood, String licencecardid, String Type, String created, int driverid) {
		super();
		this.name = name;
		
		this.issudate = issudate;
		this.expdate = expdate;
		this.dob = dob;
		this.add = add;
		this.blood = blood;
		this.licencecardid=licencecardid;
		this.Type = Type;
		this.created = created;
		this.driverid = driverid;
		
		
	}



	public String getName() {
		return name;
	}





	public String getIssudate() {
		return issudate;
	}



	public String getExpdate() {
		return expdate;
	}



	public String getDob() {
		return dob;
	}



	public String getAdd() {
		return add;
	}



	public String getBlood() {
		return blood;
	}



	public void setName(String name) {
		this.name = name;
	}







	public void setIssudate(String issudate) {
		this.issudate = issudate;
	}



	public void setExpdate(String expdate) {
		this.expdate = expdate;
	}



	public void setDob(String dob) {
		this.dob = dob;
	}



	public void setAdd(String add) {
		this.add = add;
	}



	public void setBlood(String blood) {
		this.blood = blood;
	}



	public String getLicencecardid() {
		return licencecardid;
	}



	public void setLicencecardid(String licencecardid) {
		this.licencecardid = licencecardid;
	}



	public String getType() {
		return Type;
	}



	public String getCreated() {
		return created;
	}



	public void setType(String type) {
		Type = type;
	}



	public void setCreated(String created) {
		this.created = created;
	}



	public int getDriverid() {
		return driverid;
	}



	public void setDriverid(int driverid) {
		this.driverid = driverid;
	}
	
	
	
	
	
	

}
