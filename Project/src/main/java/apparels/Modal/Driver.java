package apparels.Modal;

public class Driver {
	
	
	
		private int id;
		private String name;
		private String email;
		private String password;
		private int Vid;
		private String fullname;
		private String propic;
		private String firstname;
		private String lastname;
		private String middlename;
		
		
		
		
		
		
		public Driver() {
		
		}
		  
		public Driver(int id, String name, String email, String password, int Vid, String fullname,String propic,String firstname,String lastname,String middlename) {
			
			this.id = id;
			this.name = name;
			this.email = email;
			this.password = password;
			this.Vid = Vid;
			this.fullname =  fullname;
			this.propic = propic;
			this.firstname=firstname;
			this.lastname=lastname;
			this.middlename=middlename;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}
		
		
		public int getVId() {
			return Vid;
		}

		public void setVId(int Vid) {
			this.Vid = Vid;
		}

		public String getFullname() {
			return fullname;
		}

		public void setFullname(String fullname) {
			this.fullname = fullname;
		}

		public String getPropic() {
			return propic;
		}

		public void setPropic(String propic) {
			this.propic = propic;
		}

		public String getFirstname() {
			return firstname;
		}

		public String getLastname() {
			return lastname;
		}

		public String getMiddlename() {
			return middlename;
		}

		public void setFirstname(String firstname) {
			this.firstname = firstname;
		}

		public void setLastname(String lastname) {
			this.lastname = lastname;
		}

		public void setMiddlename(String middlename) {
			this.middlename = middlename;
		}
		

	
		
		
		


		
		
		  
	
		

}
