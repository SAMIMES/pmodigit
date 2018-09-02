package controller;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PrDao;
import entity.ProjectReview;
import utils.EntityManagerUtil;

/**
 * Servlet implementation class listItemServ
 */
@WebServlet("/list")
public class listItemServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private List<ProjectReview> liste_pr;
	private PrDao prdao;

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
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		//List<Item> liste_items = itemdao.findAll() ;
		prdao = new PrDao();
		
		liste_pr = prdao.findAll();
		for(ProjectReview p:liste_pr){
			System.out.println(p.getId_pr());
		}
		request.getSession().setAttribute("liste", liste_pr);
		response.sendRedirect("temp/list.jsp");		
		
	}

}
