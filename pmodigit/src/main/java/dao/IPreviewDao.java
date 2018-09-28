package dao;

import java.util.List;

import entity.ProjectReview;

public interface IPreviewDao {
	public void addPR(ProjectReview pr);
	public List<ProjectReview> findAll();
	public void remove(Long id);
	public void update(ProjectReview p);
	public List<ProjectReview> findByTitle(String title);
	ProjectReview findOne(Long i);
}
