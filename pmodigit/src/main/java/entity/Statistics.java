package entity;

import java.util.List;

public class Statistics {
	
	public static int nbOpenStatus(List<ProjectReview> list_pr){
		int nb = 0;
		for(ProjectReview pr:list_pr){
			if(pr.getStatus().equals("open")){
				nb++;
			}
		}
		return nb;
	}
	
	public static int nbClosedStatus(List<ProjectReview> list_pr){
		int nb = 0;
		for(ProjectReview pr:list_pr){
			if(pr.getStatus().equals("closed")){
				nb++;
			}
		}
		return nb;
	}


}
