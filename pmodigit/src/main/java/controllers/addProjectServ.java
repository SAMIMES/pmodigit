package controllers;

import java.io.IOException;
import java.sql.Date;
import java.util.Calendar;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProjectDao;
import entities.Project;
import utils.EntityManagerUtil;

/**
 * Servlet implementation class addProjectServ
 */
@WebServlet("/addProjects")
public class addProjectServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private EntityManager entityManager;
	private EntityManagerUtil entityUtils;
	private ProjectDao pdao;
	
	private Project project;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addProjectServ() {
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
		
		entityManager = EntityManagerUtil.getEntityManager();
		

		String ptitle= request.getParameter("projecttitle");
		String customer= request.getParameter("cus");
		String pm= request.getParameter("PM");
		Calendar calendar = Calendar.getInstance();
		java.sql.Date ourJavaDateObject = new java.sql.Date(calendar.getTime().getTime());


		project = new Project();
		project.setProject_title(ptitle);
		project.setCustomer(customer);
		project.setPm(pm);
		project.setDate(ourJavaDateObject);
		
		entityManager.getTransaction().begin();
		entityManager.persist(project);
		
		@SuppressWarnings("unchecked")
		List<Project> projects = entityManager.createQuery("SELECT p FROM project p order by p.project_id desc").getResultList();
		
		
	    entityManager.getTransaction().commit();
	    entityManager.close();
		
		for(Project p:projects){
			System.out.println(p.getProject_id());
		}
		request.getSession().setAttribute("listprojects", projects);
		response.sendRedirect("temp/pcreation.jsp");		
		
	}

}
