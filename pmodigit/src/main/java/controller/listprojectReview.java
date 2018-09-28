package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProjectImplDao;
import entity.Project;
import entity.ProjectReview;

/**
 * Servlet implementation class listprojectReview
 */
@WebServlet("/listpr")
public class listprojectReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public listprojectReview() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ptitle = request.getParameter("idtitle");
		ProjectImplDao pdao = new ProjectImplDao();
		Project project = pdao.findOne(ptitle);
		List<ProjectReview> listpr = project.getProject_reviews();
		System.out.println(project.getCustomer());
		
		
	//	for()
		request.setAttribute("project", project);
		request.setAttribute("listpr", listpr);
		this.getServletContext().getRequestDispatcher("/temp/list_pr.jsp").forward( request, response );
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
