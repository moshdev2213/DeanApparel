package apparels.Modal;

public class GrnPay extends Grn{
	

	int id;
	String grnid;
	String paytypeid;
	String payment;
	String balance;
	String extra;
	String total;
	public GrnPay() {
		
	}
	public int getId() {
		return id;
	}
	public String getGrnid() {
		return grnid;
	}
	public String getPaytypeid() {
		return paytypeid;
	}
	public String getPayment() {
		return payment;
	}
	public String getBalance() {
		return balance;
	}
	public String getExtra() {
		return extra;
	}
	public String getTotal() {
		return total;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setGrnid(String grnid) {
		this.grnid = grnid;
	}
	public void setPaytypeid(String paytypeid) {
		this.paytypeid = paytypeid;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	public void setExtra(String extra) {
		this.extra = extra;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	
	

	

	

}
