package dao;

import java.util.List;

import javax.persistence.EntityManager;

import entity.Item;
import util.EntityManagerUtil;

public class ItemDao implements IItemDao{
	
	private EntityManager entitymanager = EntityManagerUtil.getEntityManager();
	@Override
	public void addItem(Item pr) {
		  entitymanager.getTransaction().begin();
	      entitymanager.persist(pr);
	      entitymanager.getTransaction().commit();
		
		 entitymanager.close();
	
	}

	@Override
	public List<Item> findAll() {
		entitymanager.getTransaction().begin();
		@SuppressWarnings("unchecked")
		List<Item> items = entitymanager.createQuery("SELECT c FROM Item c").getResultList();
	    entitymanager.getTransaction().commit();
		return items;
	}

	@Override
	public Item findOne(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void remove(Long id) {
		  try {
		      entitymanager.getTransaction().begin();
		      Item it = (Item) entitymanager.find(Item.class, id);
		      entitymanager.remove(it);
		      entitymanager.getTransaction().commit();
		    } catch (Exception e) {
		      entitymanager.getTransaction().rollback();
		    }
		
	}

	@Override
	public void update(Item p) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Item> findByTitle(String title) {
		// TODO Auto-generated method stub
		return null;
	}

}
