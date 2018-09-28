package entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class ItemQA implements Serializable{
	
	@Id @GeneratedValue
	private long id_item;
	private String domain_name;
	private String item;
	private String comment;
	private String grade;
	@ManyToOne
	@JoinColumn(name = "id_qa")
	private QualityAssurance quality_assurance;
	
	
	
	public ItemQA(String domain_name, String item, String comment, String grade) {

		this.domain_name = domain_name;
		this.item = item;
		this.comment = comment;
		this.grade = grade;
	}
	
	public ItemQA(){}
	
	
	public QualityAssurance getQuality_assurance() {
		return quality_assurance;
	}


	public void setQuality_assurance(QualityAssurance quality_assurance) {
		this.quality_assurance = quality_assurance;
	}



	
	public long getId_item() {
		return id_item;
	}
	public void setId_item(long id_item) {
		this.id_item = id_item;
	}
	public String getDomain_name() {
		return domain_name;
	}
	public void setDomain_name(String domain_name) {
		this.domain_name = domain_name;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	
	
	
	
}
