package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PrImplDao;
import dao.ProjectImplDao;

/**
 * Servlet implementation class deleteprServ
 */
@WebServlet("/deletepr")
public class deleteprServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
    PrImplDao prDao; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteprServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		boolean flag = false;
		String result ="";
		prDao = new PrImplDao();
		Long id = Long.parseLong(request.getParameter("id"));
		try{
		prDao.remove(id);
		result = "the project review was successfully deleted";
		flag=true;
		} catch(IllegalArgumentException e){
			result="Project not found or already deleted";
			flag=false;
		}
		request.setAttribute("result", result);
		request.setAttribute("flag", flag);
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
