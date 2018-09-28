package dao;

import java.util.List;

import javax.persistence.EntityManager;

import entity.User;

public interface IUserDao {
	public void addUser(User user);
	public List<User> findAll();
	public User findOne(String username, EntityManager entity) throws DaoException ;
	public void remove(String username);
	public void update(User user);
}
