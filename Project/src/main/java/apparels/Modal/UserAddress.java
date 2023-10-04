package apparels.Modal;

public class UserAddress {
	private int aId;
	private String provinceId;
	private String districtId;
	private String srteet;
	private String city;
	private String email;
	private String role;
	private String addressOf;
	private int postalCode;
	private String addedDate;
	private String updatedDate;
	
	
	public UserAddress() {
		
	}
	
	public String getAddedDate() {
		return addedDate;
	}

	public void setAddedDate(String addedDate) {
		this.addedDate = addedDate;
	}

	public String getUpdatedDate() {
		return updatedDate;
	}

	public void setUpdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
	}

	public int getaId() {
		return aId;
	}
	public void setaId(int aId) {
		this.aId = aId;
	}
	public String getProvinceId() {
		return provinceId;
	}
	public void setProvinceId(String provinceId) {
		this.provinceId = provinceId;
	}
	public String getDistrictId() {
		return districtId;
	}
	public void setDistrictId(String districtId) {
		this.districtId = districtId;
	}
	public String getSrteet() {
		return srteet;
	}
	public void setSrteet(String srteet) {
		this.srteet = srteet;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getAddressOf() {
		return addressOf;
	}
	public void setAddressOf(String addressOf) {
		this.addressOf = addressOf;
	}
	public int getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(int postalCode) {
		this.postalCode = postalCode;
	}
	
	
}
