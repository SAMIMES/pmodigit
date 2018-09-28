package controller;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;
import entity.registrationForm;
import util.EntityManagerUtil;

/**
 * Servlet implementation class registerServ
 */
@WebServlet("/register")
public class registerServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 public static final String VUE      = "/connexion/register.jsp";
	 public static final String ATT_USER = "user";
	 public static final String ATT_FORM = "form";
	

    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerServ() {
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
		
		registrationForm form = new registrationForm();
		
		User user = form.registerUser(request);
		user.setUserType(0);
		user.setUserValid(0);
		
		if(form.getErreurs().isEmpty()){
			
			System.out.println("success");
			  EntityManager entityManager = EntityManagerUtil.getEntityManager();
			entityManager.getTransaction().begin();
			
			entityManager.persist(user);
			
			entityManager.getTransaction().commit();
			entityManager.close(); 
		}
		else {
			System.out.println("Echec");
		}
		
	   
		request.setAttribute( ATT_FORM, form );
		request.setAttribute( ATT_USER, user );
		
		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
		
		System.out.println("Hello");
	}

}
