package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProjectImplDao;
import entity.Project;

/**
 * Servlet implementation class deleteprojectServ
 */
@WebServlet("/delete")
public class deleteprojectServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProjectImplDao pDao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteprojectServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean flag = false;
		String result ="";
		pDao = new ProjectImplDao();
		String title = request.getParameter("id");
		try{
		pDao.remove(title);
		result = "the project was successfully deleted";
		flag=true;
		} catch(IllegalArgumentException e){
			result="Project not found or already deleted";
			flag=false;
		}
		request.setAttribute("result", result);
		request.setAttribute("flag", flag);
		this.getServletContext().getRequestDispatcher("/temp/list.jsp").forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
	}

}
