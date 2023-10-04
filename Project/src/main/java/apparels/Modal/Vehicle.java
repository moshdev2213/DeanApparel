package apparels.Modal;

public class Vehicle {
	private int vehicleid;
	private String vname;
	private String vtype;
	private String insurance;
	private String chasisNo;
	private String about;
	private int mileage;
	private Double shipfee;
	private int avgSpeed;
	private int batteryHealth;
	private int avaiFuel;
	private String Vimg;
	
	
	public Vehicle(int vehicleid, String vname, String vtype, String insurance, String chasisNo, String about,
			int mileage, Double shipfee, int avgSpeed, int batteryHealth, int avaiFuel) {
		super();
		this.vehicleid = vehicleid;
		this.vname = vname;
		this.vtype = vtype;
		this.insurance = insurance;
		this.chasisNo = chasisNo;
		this.about = about;
		this.mileage = mileage;
		this.shipfee = shipfee;
		this.avgSpeed = avgSpeed;
		this.batteryHealth = batteryHealth;
		this.avaiFuel = avaiFuel;
	}

	public Vehicle() {
		super();
	}
	
	public int getVehicleid() {
		return vehicleid;
	}
	public void setVehicleid(int vehicleid) {
		this.vehicleid = vehicleid;
	}
	public String getVname() {
		return vname;
	}
	public void setVname(String vname) {
		this.vname = vname;
	}
	public String getVtype() {
		return vtype;
	}
	public void setVtype(String vtype) {
		this.vtype = vtype;
	}
	public String getInsurance() {
		return insurance;
	}
	public void setInsurance(String insurance) {
		this.insurance = insurance;
	}
	public String getChasisNo() {
		return chasisNo;
	}
	public void setChasisNo(String chasisNo) {
		this.chasisNo = chasisNo;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	public Double getShipfee() {
		return shipfee;
	}
	public void setShipfee(Double shipfee) {
		this.shipfee = shipfee;
	}

	public int getAvgSpeed() {
		return avgSpeed;
	}

	public int getBatteryHealth() {
		return batteryHealth;
	}

	public int getAvaiFuel() {
		return avaiFuel;
	}

	public void setAvgSpeed(int avgSpeed) {
		this.avgSpeed = avgSpeed;
	}

	public void setBatteryHealth(int batteryHealth) {
		this.batteryHealth = batteryHealth;
	}

	public void setAvaiFuel(int avaiFuel) {
		this.avaiFuel = avaiFuel;
	}

	public String getVimg() {
		return Vimg;
	}

	public void setVimg(String vimg) {
		Vimg = vimg;
	}
	
	
	
	
}	
