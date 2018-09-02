package entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity(name="Item")
public class Item implements Serializable {
	private static final long serialVersionUID = 11L;

	@Id @GeneratedValue
	private long id_domain;
	@Column(name="domain_name")
	private String domain_name;
	@Column(name="title")
	private String item;
	@Column(name="comment")
	private String comment;
	@Column(name="grade")
	private String grade;
	
	
	
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

	
	
	
}
