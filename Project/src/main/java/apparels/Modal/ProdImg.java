package apparels.Modal;

public class ProdImg {
	private int id;
	private String img1;
	private String img2;
	private String img3;
	private String product_id;
	
	public ProdImg() {
		
	}
	
	
	
	public ProdImg(int id, String img1, String img2, String img3, String product_id) {
		super();
		this.id = id;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.product_id = product_id;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	
	
}
