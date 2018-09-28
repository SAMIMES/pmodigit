package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PrImplDao;
import dao.ProjectImplDao;
import entity.Project;
import entity.ProjectReview;
import entity.Statistics;

/**
 * Servlet implementation class dashboard
 */
@WebServlet("/dashboard")
public class dashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dashboard() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		PrImplDao prDao = new PrImplDao();
		ProjectImplDao pDao = new ProjectImplDao();
		
		List<Project> list_project = pDao.findAll();
		List<ProjectReview> list_pr= prDao.findAll();
		
		/* System.out.println(list_project.size());
		System.out.println(list_pr.size()); */
		
		request.setAttribute("nbOpen", Statistics.nbOpenStatus(list_pr));
		request.setAttribute("nbClosed", Statistics.nbClosedStatus(list_pr));
		request.setAttribute("nbProjects", list_project.size());
		request.setAttribute("nbPR", list_pr.size());
		//request.setAttribute("listpr", listpr);
		this.getServletContext().getRequestDispatcher("/admin/dashboard.jsp").forward( request, response );
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
