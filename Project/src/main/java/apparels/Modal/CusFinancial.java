package apparels.Modal;

public class CusFinancial {
	private int payment_id;
	private String usermail;
	private String cnumber;
	
	public String getUsermali() {
		return usermail;
	}

	public void setUsermail(String usermali) {
		this.usermail = usermali;
	}

	public double getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}

	private String Date;
	private double subtotal;
	private double total;
	
	
	 
	public CusFinancial() {
		super();
	}

	

	public int getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}

	public String getCnumber() {
		return cnumber;
	}

	public void setCnumber(String cnumber) {
		this.cnumber = cnumber;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	
	
	
	
	


}
