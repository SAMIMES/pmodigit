package dao;

import java.util.List;

import entity.Item;;

public interface IItemDao {
	
	public void addItem(Item pr);
	public List<Item> findAll();
	public Item findOne(Long id);
	public void remove(Long id);
	public void update(Item p);
	public List<Item> findByTitle(String title);
}
