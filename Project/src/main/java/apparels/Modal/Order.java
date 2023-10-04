package apparels.Modal;

public class Order extends Product {
	private String email;
	private int quantity;
	private int oid;
	private String invoice;
	private String vehicle;
	private String company;
	private String cnum;
	private String cname;
	private String cphoto;
	private String status;
	private String dayz;
	private String diff;
	private String oplaceddate;
	private String oconfirmeddate;
	private String otransmiteddate;
	private String odelivereddate;
	private double cpn;
	private double dfee;
	private double total;

	public Order() {

	}

	
	public int getOid() {
		return oid;
	}


	public void setOid(int oid) {
		this.oid = oid;
	}


	public String getDiff() {
		return diff;
	}

	public void setDiff(String diff) {
		this.diff = diff;
	}

	public String getDayz() {
		return dayz;
	}

	public void setDayz(String dayz) {
		this.dayz = dayz;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getInvoice() {
		return invoice;
	}

	public void setInvoice(String invoice) {
		this.invoice = invoice;
	}

	public String getVehicle() {
		return vehicle;
	}

	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getCnum() {
		return cnum;
	}

	public void setCnum(String cnum) {
		this.cnum = cnum;
	}

	public String getCphoto() {
		return cphoto;
	}

	public void setCphoto(String cphoto) {
		this.cphoto = cphoto;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getOplaceddate() {
		return oplaceddate;
	}

	public void setOplaceddate(String oplaceddate) {
		this.oplaceddate = oplaceddate;
	}

	public String getOconfirmeddate() {
		return oconfirmeddate;
	}

	public void setOconfirmeddate(String oconfirmeddate) {
		this.oconfirmeddate = oconfirmeddate;
	}

	public String getOtransmiteddate() {
		return otransmiteddate;
	}

	public void setOtransmiteddate(String otransmiteddate) {
		this.otransmiteddate = otransmiteddate;
	}

	public String getOdelivereddate() {
		return odelivereddate;
	}

	public void setOdelivereddate(String odelivereddate) {
		this.odelivereddate = odelivereddate;
	}

	public double getCpn() {
		return cpn;
	}

	public void setCpn(double cpn) {
		this.cpn = cpn;
	}

	public double getDfee() {
		return dfee;
	}

	public void setDfee(double dfee) {
		this.dfee = dfee;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

}
