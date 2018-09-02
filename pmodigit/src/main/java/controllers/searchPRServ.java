package controllers;

import java.io.IOException;
import java.util.Calendar;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Item;
import entities.Project;
import entities.ProjectReview;
import utils.EntityManagerUtil;

/**
 * Servlet implementation class searchPRServ
 */
@WebServlet("/searchPRServ")
public class searchPRServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private EntityManager entityManager;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchPRServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		ProjectReview pr = new ProjectReview();

		entityManager = EntityManagerUtil.getEntityManager();
		

		String ptitle= request.getParameter("projecttitle");
		
		System.out.println(ptitle);


		
		entityManager.getTransaction().begin();
		
		@SuppressWarnings("unchecked")
		List<ProjectReview> prs = entityManager.createQuery("SELECT p FROM pr p").getResultList();
		
		
	    entityManager.getTransaction().commit();
	    entityManager.close();
		
		for(ProjectReview p:prs){
			System.out.println("id="+p.getId_pr());
			System.out.println("overall: " + p.overallStatus(p.getItems()));
			for(Item i: p.getItems()){
				System.out.println(i.getItem());
			}
		}
		
		
	}

}
