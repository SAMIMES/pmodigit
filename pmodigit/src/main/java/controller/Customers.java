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
 * Servlet implementation class serv
 */
@WebServlet(name = "Customers", urlPatterns = {"/Customers"})
public class Customers extends HttpServlet {
	private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        String term = request.getParameter("term");
        String q = term.toLowerCase();

        List<String> bugsList = CSVMapper.readCustomers(getServletContext());
        List<String> filteredBugsList = acompleteUtils.filterListByTerm(bugsList, q);
        String json = acompleteUtils.list2Json(filteredBugsList);

        response.getWriter().write(json);
    }
}

