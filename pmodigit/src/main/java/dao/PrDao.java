package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import entities.Item;
import entities.ProjectReview;
import utils.EntityManagerUtil;

public class PrDao implements IPreviewDao{
	
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
	public ProjectReview findOne(Long id) {
		ProjectReview pr=new ProjectReview();
		try {
			pr = entitymanager.find(ProjectReview.class, id);
		} catch (Exception e) {
		      entitymanager.getTransaction().rollback();
		    }
		return pr;
		
	}

	@Override
	public void remove(Long id) {
		// TODO Auto-generated method stub
		  try {
		      entitymanager.getTransaction().begin();
		      ProjectReview it = (ProjectReview) entitymanager.find(ProjectReview.class, id);
		      entitymanager.remove(it);
		      entitymanager.getTransaction().commit();
		    } catch (Exception e) {
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
