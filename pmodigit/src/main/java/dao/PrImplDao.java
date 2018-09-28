package dao;

import java.util.List;

import javax.persistence.EntityManager;

import entity.ProjectReview;
import util.EntityManagerUtil;

public class PrImplDao implements IPreviewDao{
	
	private EntityManager entitymanager = EntityManagerUtil.getEntityManager();
	
	
	
	@Override
	public void addPR(ProjectReview pr) {
		// TODO Auto-generated method stub
		try{
			 entitymanager.getTransaction().begin();
			 entitymanager.persist(pr);
			 entitymanager.getTransaction().commit();
		}catch(Exception e){
			entitymanager.getTransaction().rollback();
		}
		
		
	}

	@Override
	public List<ProjectReview> findAll() {
		// TODO Auto-generated method stub
		
		entitymanager.getTransaction().begin();
		@SuppressWarnings("unchecked")
		List<ProjectReview> prs = entitymanager.createQuery("SELECT p FROM pr p").getResultList();
	    entitymanager.getTransaction().commit();
		return prs;
	}

	@Override
	public ProjectReview findOne(Long i) {
		ProjectReview pr= entitymanager.find(ProjectReview.class, i);
	
		return pr;
		
	}

	@Override
	public void remove(Long id) {
		
		      entitymanager.getTransaction().begin();
		      ProjectReview it = (ProjectReview) entitymanager.find(ProjectReview.class, id);
		      try{
		      entitymanager.remove(it);
		      }
		      catch (Exception e) {
			      entitymanager.getTransaction().rollback();
			    }
		   
	}

	@Override
	public void update(ProjectReview p) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ProjectReview> findByTitle(String title) {
		// TODO Auto-generated method stub
		return null;
	}

}
