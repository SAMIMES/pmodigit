package entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="user_p")
public class User {
	
	
	private String email;
	private String fullname;
	@Id
	private String username;
	private String password;
	private int userType;
	private int userValid;
	
	
	public User() {

	}




	public User(String email, String fullname, String username, String password, int userType, int userValid) {
		super();
		this.email = email;
		this.fullname = fullname;
		this.username = username;
		this.password = password;
		this.userType = userType;
		this.userValid = userValid;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getFullname() {
		return fullname;
	}




	public void setFullname(String fullname) {
		this.fullname = fullname;
	}




	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public int getUserType() {
		return userType;
	}


	public void setUserType(int userType) {
		this.userType = userType;
	}




	public int getUserValid() {
		return userValid;
	}




	public void setUserValid(int userValid) {
		this.userValid = userValid;
	}
	


}
