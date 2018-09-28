package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.PersistenceException;
import javax.persistence.Query;
import javax.transaction.Transaction;

import entity.Project;
import entity.ProjectReview;
import util.EntityManagerUtil;

public class ProjectImplDao implements IProjectDao{
	private EntityManager entitymanager = EntityManagerUtil.getEntityManager();
	@Override
	public void addProject(Project p) {
		try{
			  entitymanager.getTransaction().begin();
		      entitymanager.persist(p);
		      entitymanager.getTransaction().commit();
			} catch(Exception e){
				entitymanager.getTransaction().rollback();
			}
	}

	@Override
	public List<Project> findAll() {
		
		@SuppressWarnings("unchecked")
		List<Project> projects = entitymanager.createQuery("SELECT p FROM project p").getResultList();
		return projects;
	}

	@Override
	public Project findOne(String ptitle) {
		
		Project project = entitymanager.find(Project.class, ptitle);
		
		return project;
	}

	@Override
	public void remove(String title) {

		EntityTransaction transaction = entitymanager.getTransaction();
		
		transaction.begin();
		
		Project project = entitymanager.find(Project.class, title);
		entitymanager.remove(project);
		transaction.commit();
		
	}

	@Override
	public void update(Project p) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Project> findByTitle(String title){
		

		
		List<Project> projects =  entitymanager.createQuery("select p FROM project p where p.project_title like '" + title + "%'").getResultList();
	    
	
		return projects;
	}

	public EntityManager getEntitymanager() {
		return entitymanager;
	}

	public void setEntitymanager(EntityManager entitymanager) {
		this.entitymanager = entitymanager;
	}








}
