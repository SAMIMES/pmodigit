package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mapper.CSVMapper;
import util.acompleteUtils;

/**
 * Servlet implementation class Titles
 */
@WebServlet(name = "Titles", urlPatterns = {"/Titles"})
public class Titles extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Titles() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
	    response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        String term = request.getParameter("term");
        String q = term.toLowerCase();

        List<String> bugsList = CSVMapper.readBugs(getServletContext());
        List<String> filteredBugsList = acompleteUtils.filterListByTerm(bugsList, q);
        String json = acompleteUtils.list2Json(filteredBugsList);

        response.getWriter().write(json);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
