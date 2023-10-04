package apparels.Modal;

public class Delivery extends Order {
	
	private int did;
	private String reference;
	private String status;
	private String date;
	private String note;
	private String propic;
	
	
	
	
	public Delivery(int did, String reference, String status, String date, String note,String propic) {
		
		this.did = did;
		this.reference = reference;
		this.status = status;
		this.date = date;
		this.note = note;
		this.propic = propic;
	
	}
	



	public Delivery() {
		
	}




	public int getDid() {
		return did;
	}



	public String getReference() {
		return reference;
	}



	public String getStatus() {
		return status;
	}



	public String getDate() {
		return date;
	}



	public String getNote() {
		return note;
	}






	public void setDid(int did) {
		this.did = did;
	}



	public void setReference(String reference) {
		this.reference = reference;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	public void setDate(String date) {
		this.date = date;
	}



	public void setNote(String note) {
		this.note = note;
	}




	public String getPropic() {
		return propic;
	}




	public void setPropic(String propic) {
		this.propic = propic;
	}
	
	



	
	
	
	
	
	
	
	

}
