package apparels.Modal;

public class WhishList extends Product {

	private int rate;
	private double quality;
	
	public WhishList() {
		super();
		
	}
	
	public WhishList(int rate, double quality) {
		super();
		this.rate = rate;
		this.quality = quality;
	}

	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}

	public double getQuality() {
		return quality;
	}

	public void setQuality(double quality) {
		this.quality = quality;
	}
	
	
}
