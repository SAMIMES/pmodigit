package entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity(name="Item")
public class Item implements Serializable {
	private static final long serialVersionUID = 11L;

	@Id @GeneratedValue
	private long id_domain;
	private String domain_name;
	private String item;
	private String comment;
	private String grade;
	
	@ManyToOne
	@JoinColumn(name = "id_pr")
	private ProjectReview project_review;
	
	
	
	public Item(){}
	
	public Item(String domain_name,String item, String grade,String comment) {
		this.domain_name = domain_name;
		this.item = item;
		this.comment = comment;
		this.grade = grade;

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

	public long getId_domain() {
		return id_domain;
	}

	public void setId_domain(long id_domain) {
		this.id_domain = id_domain;
	}

	public String getDomain_name() {
		return domain_name;
	}

	public void setDomain_name(String domain_name) {
		this.domain_name = domain_name;
	}

	public ProjectReview getProject_review() {
		return project_review;
	}

	public void setProject_review(ProjectReview project_review) {
		this.project_review = project_review;
	}

	
	
	
}
