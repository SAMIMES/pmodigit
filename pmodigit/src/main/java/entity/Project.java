package entity;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
@Entity(name="project")
public class Project {
		@GeneratedValue
		private String project_id;
		@Id
		private String project_title;
		private String customer;
		private String pm;
		@Column(name="creation_date")
		private Date date;
		@OneToMany
		private List<ProjectReview> project_reviews;
		
		public Project(String project_title, String customer, String project_id, String pm, Date date) {
			super();
			this.project_title = project_title;
			this.customer = customer;
			this.project_id = project_id;
			this.pm = pm;
			this.date = date;
		}

		public Project(){}
		
	
		public String getProject_title() {
			return project_title;
		}
		public void setProject_title(String project_title) {
			this.project_title = project_title;
		}
		public String getCustomer() {
			return customer;
		}
		public void setCustomer(String customer) {
			this.customer = customer;
		}
		public String getProject_id() {
			return project_id;
		}
		public void setProject_id(String project_id) {
			this.project_id = project_id;
		}

		public String getPm() {
			return pm;
		}

		public void setPm(String pm) {
			this.pm = pm;
		}

		public Date getDate() {
			return date;
		}

		public void setDate(Date date) {
			this.date = date;
		}

		public List<ProjectReview> getProject_reviews() {
			return project_reviews;
		}

		public void setProject_reviews(List<ProjectReview> project_reviews) {
			this.project_reviews = project_reviews;
		}
		
		
}
