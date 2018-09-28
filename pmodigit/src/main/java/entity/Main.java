package entity;

import java.util.ArrayList;
import java.util.List;

import dao.ProjectImplDao;

public class Main {

	public static void main(String[] args) {
		
		ProjectImplDao  pdao = new ProjectImplDao();
		
		List<Project> list = pdao.findAll();
		
		for(Project p:list){
			System.out.println(p.getProject_reviews().size());
			
			for(ProjectReview pr: p.getProject_reviews()){
				System.out.println(pr.getPr_date());
			}
		}
	}

}
