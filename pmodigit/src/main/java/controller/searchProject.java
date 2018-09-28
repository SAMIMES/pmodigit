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

/**
 * Servlet implementation class searchProject
 */
@WebServlet("/searchproject")
public class searchProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchProject() {
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
		
		boolean flag = true;
		ProjectImplDao pDao=new ProjectImplDao();
		List<Project> projects;
		String ptitle = request.getParameter("searchtitle");
		
		System.out.println("titre:" + ptitle);
		pDao = new ProjectImplDao();
		

		projects = pDao.findByTitle(ptitle);
	
		
		System.out.println("true" +projects.size());
		
		
		
		//entitymanager.close();
		
		request.getSession().setAttribute("liste", projects);
		request.getSession().setAttribute("flag", flag);
		this.getServletContext().getRequestDispatcher("/temp/list.jsp").forward( request, response );
	}

}
