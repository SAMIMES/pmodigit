package dao;

import java.util.List;

import entity.Project;


public interface IProjectDao {
	public void addProject(Project p);
	public List<Project> findAll();
	public Project findOne(Long id);
	public void remove(Long id);
	public void update(Project p);
	public List<Project> findByTitle(String title);
}
