package entities;

public class User {
	
	private String mail;
	private String trigram;
	private String password;
	
	
	public User() {
		
	}
	
	
	public User(String mail, String trigram, String password) {
		this.mail = mail;
		this.trigram = trigram;
		this.password = password;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getTrigram() {
		return trigram;
	}
	public void setTrigram(String trigram) {
		this.trigram = trigram;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
