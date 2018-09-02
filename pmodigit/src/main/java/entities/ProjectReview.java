package entities;

import java.io.Serializable;
import java.sql.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity(name="pr")
public class ProjectReview implements Serializable{
	@Id @GeneratedValue
	private Long id_pr;	
	private Date pr_date;
	private String performer, participants;
	private int prn;
	private int prv;
	@OneToMany
	private List<Item> items;
	@OneToOne
	private Project projet;
	
	//@OneToMany
	//private Set<Scope> scopes = new HashSet<Scope>();
	
	public ProjectReview(){
		
	}

	public Long getId_pr() {
		return id_pr;
	}

	public void setId_pr(Long id_pr) {
		this.id_pr = id_pr;
	}

	public Date getPr_date() {
		return pr_date;
	}

	public void setPr_date(Date pr_date) {
		this.pr_date = pr_date;
	}

	public String getPerformer() {
		return performer;
	}

	public void setPerformer(String performer) {
		this.performer = performer;
	}

	public String getParticipants() {
		return participants;
	}

	public void setParticipants(String participants) {
		this.participants = participants;
	}

	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}
	
	public int convertGrade(String grade){
		int value= -1;
		if(grade.equals("A"))
			value=4;
		else if(grade.equals("B"))
			value=3;
		else if(grade.equals("C"))
			value=2;
		else if(grade.equals("D"))
			value=1;
		else
			value = -1;
		
		return value;
	}
	public float overallStatus(List<Item> items){
		float os=0;
		int count = 0;
		int sum=0;
		for(Item i: items){
			sum = sum + convertGrade(i.getGrade());
			count++;
		}
		os = (float) (sum/count);
		
		return os;
	}

	public int getPrn() {
		return prn;
	}

	public void setPrn(int prn) {
		this.prn = prn;
	}

	public int getPrv() {
		return prv;
	}

	public void setPrv(int prv) {
		this.prv = prv;
	}

	public Project getProjet() {
		return projet;
	}

	public void setProjet(Project projet) {
		this.projet = projet;
	}
	
		
}
