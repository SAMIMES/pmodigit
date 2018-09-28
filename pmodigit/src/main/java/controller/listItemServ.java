package controller;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoException;
import dao.PrImplDao;
import dao.ProjectImplDao;
import entity.Project;
import entity.ProjectReview;
import util.EntityManagerUtil;

/**
 * Servlet implementation class listItemServ
 */
@WebServlet("/list")
public class listItemServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	boolean flag;

	EntityManager entitymanager= EntityManagerUtil.getEntityManager();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public listItemServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		flag = false;
		ProjectImplDao pDao=new ProjectImplDao();
		List<Project> projects = pDao.findAll();
		System.out.println("get"+projects.size());
		request.getSession().setAttribute("liste_projects", projects);
		request.getSession().setAttribute("flag", flag);
		this.getServletContext().getRequestDispatcher("/temp/list.jsp").forward( request, response );
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		//List<Item> liste_items = itemdao.findAll() ;
		
	
		
		
	}

}
