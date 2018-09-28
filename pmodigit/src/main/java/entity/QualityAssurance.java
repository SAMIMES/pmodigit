package entity;

import java.sql.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity(name="qa")
public class QualityAssurance {
	
	
	@Id @GeneratedValue
	private Long id_qa;	
	private Date qa_date;
	private String performer;
	private int prv;
	private String status;
	private float qa;
	@OneToMany(mappedBy="quality_assurance",orphanRemoval = true)
	private List<ItemQA> items;
	@ManyToOne
	@JoinColumn(name = "project_title")
	private Project project;
	
	public QualityAssurance(){}
	
	
	
	
	
	public Long getId_qa() {
		return id_qa;
	}
	public void setId_qa(Long id_qa) {
		this.id_qa = id_qa;
	}
	public Date getQa_date() {
		return qa_date;
	}
	public void setQa_date(Date qa_date) {
		this.qa_date = qa_date;
	}
	public String getPerformer() {
		return performer;
	}
	public void setPerformer(String performer) {
		this.performer = performer;
	}
	public int getPrv() {
		return prv;
	}
	public void setPrv(int prv) {
		this.prv = prv;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	public Project getProject() {
		return project;
	}
	public void setProject(Project project) {
		this.project = project;
	}
	public List<ItemQA> getItems() {
		return items;
	}
	public void setItems(List<ItemQA> items) {
		this.items = items;
	}
	public float getQa() {
		return qa;
	}
	public void setQa(float qa) {
		this.qa = qa;
	}
	
	
	

}
