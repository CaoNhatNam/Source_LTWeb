package Serlet_login;

public class Account {
	String user;
	String passw;
	String email;
	String fname;
	String lname;
	int admin;
	
	public Account(String user, String passw, String email, String fname, String lname) {
		super();
		this.user = user;
		this.passw = passw;
		this.email = email;
		this.fname = fname;
		this.lname = lname;
	}

		
	public Account(String user, String passw,String email,int admin) {
		super();
		this.user = user;
		this.passw = passw;
		this.email=email;
		this.admin=admin;

		
	}
	public Account(String user, String passw) {
		super();
		this.user = user;
		this.passw = passw;
		this.email=email;
		
	}
	
	public Account(String user, String passw, String email) {
		super();
		this.user = user;
		this.passw = passw;
		this.email = email;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassw() {
		return passw;
	}
	public void setPassw(String passw) {
		this.passw = passw;
	}
	@Override
	public String toString() {
		return "Account [user=" + user + ", passw=" + passw + ", email=" + email + ", admin=" + admin + "]";
	}
	
	

}
