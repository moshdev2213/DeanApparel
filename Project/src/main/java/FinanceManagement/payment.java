package FinanceManagement;

public class payment {
	
	private int ID;
	private String name;
	private String email;
	private String card_number;
	
	
	
	
	public payment(int ID, String name, String email, String card_number) {
		super();
		this.ID = ID;
		this.name = name;
		this.email = email;
		this.card_number = card_number;
	}
	public int getID() {
		return ID;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getCard_number() {
		return card_number;
	}

	
	
	

}
