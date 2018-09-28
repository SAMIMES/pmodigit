package dao;

import java.util.List;
import java.util.logging.Logger;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.PersistenceException;

import entity.User;

public class UserImpDao implements IUserDao{

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findOne(String username,EntityManager entity) throws DaoException {
		EntityTransaction transaction = entity.getTransaction();
		User u= new User();
		transaction.begin();
		try{
		u = entity.find(User.class, username);
		transaction.commit();
		}catch(PersistenceException e){
			transaction.rollback();
			throw new DaoException("errrrrrr", e);
		}
		return u;
	}

	@Override
	public void remove(String username) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		
	}

}
