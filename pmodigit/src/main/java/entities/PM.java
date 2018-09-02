package entities;

public class PM {
	
	String name, prenom, trigram, role;
	
	public PM(){}
	
	public PM(String name, String prenom, String trigram, String role) {
		super();
		this.name = name;
		this.prenom = prenom;
		this.trigram = trigram;
		this.role = role;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrenom() {
		return prenom;
	}


	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}


	public String getTrigram() {
		return trigram;
	}

	public void setTrigram(String trigram) {
		this.trigram = trigram;
	}


	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}


	
}
