package controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import entity.ItemQA;
import entity.Project;
import entity.QualityAssurance;
import util.EntityManagerUtil;

/**
 * Servlet implementation class addQaServ
 */
@WebServlet("/addqa")
public class addQaServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EntityManager entityManager;
	
	private QualityAssurance qa;


    private boolean saved;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addQaServ() {
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
		
		
		entityManager = EntityManagerUtil.getEntityManager();
		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		java.sql.Date sqlDate;
		Date date = new Date();
		String performer = "sami";
		String ptitle = request.getParameter("ptitle");
		saved =false;
	    sqlDate = new java.sql.Date(date.getTime());

	    Project p = new Project();
		
		try {
		p = entityManager.find(Project.class, ptitle);
		
		}catch(Exception e){

		}
		
		
		if(p!=null){
		//doGet(request, response);
		/* String performer = request.getParameter("performer");
		String date_pr =  request.getParameter("date"); */
		
		
		
		 

	      
		
	    
	    
	    
	    
		qa = new QualityAssurance();
		qa.setQa_date(sqlDate);
		qa.setPerformer(performer);
		qa.setStatus("open");
		
		
		
	
		
       // EntityManager entityManager = jpaUtil.getEntityManager("pmodigit");

	
		

		
		
	
		//EntityManager entityManager = factory.createEntityManager();
		 
		entityManager.getTransaction().begin();
		
		/** Project Monitoring  **/
		
		ItemQA pcr = new ItemQA("Project Monitoring", "Project Change Request", request.getParameter("pcrgrade"), request.getParameter("pcrcomment"));
		ItemQA riskissue = new ItemQA("Project Monitoring", "Risk/Issue/Action Register", request.getParameter("riskissuegrade"), request.getParameter("riskissuecomment"));
		ItemQA govmeeting = new ItemQA("Project Monitoring", "Governance Meeting Minutes", request.getParameter("govmeetinggrade"), request.getParameter("govmeetingcomment"));

		
		pcr.setQuality_assurance(qa);
		riskissue.setQuality_assurance(qa);
		govmeeting.setQuality_assurance(qa);
		
		
		entityManager.persist(pcr);
		entityManager.persist(riskissue);
		entityManager.persist(govmeeting);
		
		/** G1 Project Launched **/
		
		ItemQA sop = new ItemQA("G1 Project Launched", "Statement of Work", request.getParameter("sopgrade"), request.getParameter("sopcomment"));
		sop.setQuality_assurance(qa);
		entityManager.persist(sop);
		
	    /** G2 Project Launched **/
		
		ItemQA delivReg = new ItemQA("G2 Project Management Plan Approved", "Deliverable Register", request.getParameter("delivReggrade"), request.getParameter("delivRegcomment"));
		ItemQA stackReg = new ItemQA("G2 Project Management Plan Approved", "Stakeholder Register", request.getParameter("stackReggrade"), request.getParameter("stackRegcomment"));
		ItemQA govchart = new ItemQA("G2 Project Management Plan Approved", "Governance Charter", request.getParameter("govchartgrade"), request.getParameter("govchartcomment"));
		ItemQA projectMS = new ItemQA("G2 Project Management Plan Approved", "Project Master Schedule", request.getParameter("projectMSgrade"), request.getParameter("projectMScomment"));
		ItemQA projectbudget = new ItemQA("G2 Project Management Plan Approved", "Project Budget", request.getParameter("projectbudgetgrade"), request.getParameter("projectbudgetomment"));
		delivReg.setQuality_assurance(qa);
		stackReg.setQuality_assurance(qa);
		govchart.setQuality_assurance(qa);
		projectMS.setQuality_assurance(qa);
		projectbudget.setQuality_assurance(qa);
		entityManager.persist(delivReg);
		entityManager.persist(stackReg);
		entityManager.persist(govchart);
		entityManager.persist(projectMS);
		entityManager.persist(projectbudget);
		
	    /** G3 Solution Defined **/
		
		ItemQA WBS = new ItemQA("G3 Solution Defined", "Project WBS", request.getParameter("WBSgrade"), request.getParameter("WBScomment"));
		ItemQA acceptcrit = new ItemQA("G3 Solution Defined", "Quality Management plan", request.getParameter("acceptcritgrade"), request.getParameter("acceptcritcomment"));
		ItemQA reqspec = new ItemQA("G3 Solution Defined", "Requirement Specification", request.getParameter("reqspecgrade"), request.getParameter("reqspeccomment"));
		
		WBS.setQuality_assurance(qa);
		acceptcrit.setQuality_assurance(qa);
		reqspec.setQuality_assurance(qa);
		
		entityManager.persist(WBS);
		entityManager.persist(acceptcrit);
		entityManager.persist(reqspec);
		
		
	    /** G4 Solution Design Approved **/
		
		ItemQA archidoc = new ItemQA("G4 Solution Design Approved", "Architecture Document", request.getParameter("archidocgrade"), request.getParameter("archidoccomment"));
		ItemQA functspec = new ItemQA("G4 Solution Design Approved", "Functional Specification", request.getParameter("functspecgrade"), request.getParameter("functspeccomment"));
		ItemQA systinteg = new ItemQA("G4 Solution Design Approved", "System Integration Test Plan", request.getParameter("systinteggrade"), request.getParameter("systintegcomment"));
		ItemQA reqTrac = new ItemQA("G4 Solution Design Approved", "Requirement Traceability Matrix", request.getParameter("reqTracgrade"), request.getParameter("reqTraccomment"));
		
		archidoc.setQuality_assurance(qa);
		functspec.setQuality_assurance(qa);
		systinteg.setQuality_assurance(qa);
		reqTrac.setQuality_assurance(qa);
		
		entityManager.persist(archidoc);
		entityManager.persist(functspec);
		entityManager.persist(systinteg);
		entityManager.persist(reqTrac);
		
		
		/** G5 Solution Delivered **/
		
		ItemQA solutioncode = new ItemQA("G5 Solution Delivered", "Solution Source Code", request.getParameter("solutioncodegrade"), request.getParameter("solutioncodecomment"));
		ItemQA solutionbuild = new ItemQA("G5 Solution Delivered", "Solution Build", request.getParameter("solutionbuildgrade"), request.getParameter("solutionbuildcomment"));
		ItemQA sysres = new ItemQA("G5 Solution Delivered", "System Integration Test Results", request.getParameter("sysresgrade"), request.getParameter("sysrescomment"));
		
		solutioncode.setQuality_assurance(qa);
		solutionbuild.setQuality_assurance(qa);
		sysres.setQuality_assurance(qa);
		
		entityManager.persist(solutioncode);
		entityManager.persist(solutionbuild);
		entityManager.persist(sysres);
		

		/** G6 Solution Approved **/
		
		ItemQA sollog = new ItemQA("G6 Solution Approved", "Solution Issue Log", request.getParameter("solloggrade"), request.getParameter("sollogcomment"));
		sollog.setQuality_assurance(qa);
		entityManager.persist(sollog);
		
		/** G7 Project Closed **/
		
		ItemQA certificateAcc =  new ItemQA("G7 Project Closed", "Solution Source Code", request.getParameter("certificateAccgrade"), request.getParameter("certificateAcccomment"));
		ItemQA lessonsLearned = new ItemQA("G7 Project Closed", "Lessons Learned", request.getParameter("lessonsLearnedgrade"), request.getParameter("lessonsLearnedcomment"));
		ItemQA other =        new ItemQA("G7 Project Closed", "Other non mandatory documents stored", request.getParameter("othergrade"), request.getParameter("othercomment"));
		
		certificateAcc.setQuality_assurance(qa);
		lessonsLearned.setQuality_assurance(qa);
		other.setQuality_assurance(qa);
		
		entityManager.persist(certificateAcc);
		entityManager.persist(lessonsLearned);
		entityManager.persist(other);
		
		

		
	
		

			
		 qa.setProject(p);
		//pr.setItems(list_items);
	
		entityManager.persist(qa);
		
		
		
		entityManager.getTransaction().commit();
		
		saved = true;
		entityManager.close();
	
		}
		else{
			System.out.println("NPPP");
			saved = false;
		}
		
		/* ItemDao id= new ItemDao();
		
		List<Item> items= id.findAll();
		
		for(Item i:items){
			System.out.println(i.getDomain_name());
		}  */
		
		
		
		
	
		request.setAttribute("saved", saved);
		
		
	
		this.getServletContext().getRequestDispatcher("/temp/qa_home.jsp").forward(request, response);
	}

}
