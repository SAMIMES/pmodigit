package dao;

import java.util.List;

import javax.persistence.EntityManager;

import entity.Project;


public interface IProjectDao {
	public void addProject(Project p);
	public List<Project> findAll();
	public void update(Project p);
	List<Project> findByTitle(String title);
	void remove(String title);
	Project findOne(String ptitle);

}
