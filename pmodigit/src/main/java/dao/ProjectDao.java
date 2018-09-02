package dao;

import java.util.List;

import javax.persistence.EntityManager;

import entity.Project;
import util.EntityManagerUtil;

public class ProjectDao implements IProjectDao{
	private EntityManager entitymanager = EntityManagerUtil.getEntityManager();
	@Override
	public void addProject(Project p) {
		try{
			  entitymanager.getTransaction().begin();
		      entitymanager.persist(p);
		      entitymanager.getTransaction().commit();
			} catch(Exception e){
				entitymanager.getTransaction().rollback();
			}finally{
				entitymanager.close();
			}
		
	}

	@Override
	public List<Project> findAll() {
		
		entitymanager.getTransaction().begin();
		@SuppressWarnings("unchecked")
		List<Project> projects = entitymanager.createQuery("SELECT p FROM project p").getResultList();
	    entitymanager.getTransaction().commit();
	    entitymanager.close();
		return projects;
	}

	@Override
	public Project findOne(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void remove(Long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Project p) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Project> findByTitle(String title) {
		// TODO Auto-generated method stub
		return null;
	}

}
