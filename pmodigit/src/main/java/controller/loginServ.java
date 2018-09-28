package controller;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoException;
import dao.IUserDao;
import dao.UserImpDao;

import entity.User;

import util.EntityManagerUtil;

/**
 * Servlet implementation class loginServ
 */
@WebServlet("/login")
public class loginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static final String ATT_USER                  = "user";
    public static final String ATT_FLAG			 		 = "flag";
    public static final String ATT_SESSION_USER          = "sessionUser";
    public static final String COOKIE_DERNIERE_CONNEXION = "derniereConnexion";
    public static final String FORMAT_DATE               = "dd/MM/yyyy HH:mm:ss";
    public static final String VUE                       = "/index.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServ() {
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
		String flag="Connexion failed";
		HttpSession session = request.getSession();
		
		String exemple = "abc";
		/* Mise en session d'une chaîne de caractères */
		session.setAttribute( "chaine", exemple );
		
		/* Récupération de l'objet depuis la session */
		String chaine = (String) session.getAttribute( "chaine" );
		
		IUserDao userdao = new UserImpDao();
		
		
		
		String username  = request.getParameter("username");
		String password  = request.getParameter("password");
		
		
		
		EntityManager entityManager =  EntityManagerUtil.getEntityManager();
		User user=new User();
		
		boolean res=false;
	
		try {
			user = userdao.findOne(username, entityManager);
		} catch (DaoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		if(user != null){
			if(user.getPassword().equals(password)){
			res =true;
			flag = "connexion successful";
			session.setAttribute( ATT_SESSION_USER, user );
			System.out.println("ok");
			}
		
		}else
		{
			res =false;
			session.setAttribute( ATT_SESSION_USER, null );
			
		}
		
	     request.setAttribute( ATT_USER, user );
	     request.setAttribute( ATT_FLAG, flag );
	     request.getSession().setAttribute( "res", res );

	     this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
			
	
		
	
		entityManager.close();
		
		
		
		
		
	}

}
