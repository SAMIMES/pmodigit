package controller;

import java.io.IOException;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;


import javax.persistence.EntityManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ItemDao;
import entity.Item;
import entity.Project;
import entity.ProjectReview;
import utils.EntityManagerUtil;


/**
 * Servlet implementation class prServlet
 */
@WebServlet("/projectReview")
public class addprServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	private EntityManager entityManager;
	
	//main classes
	
	private ProjectReview pr;


    private boolean saved;
	
	
	


	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addprServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String performer = request.getParameter("performer");
		String date_pr =  request.getParameter("date");
		
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		 
	      java.util.Date dat;
	      java.sql.Date sqlDate = null;
		try {
			dat = format.parse(date_pr);
			sqlDate = new java.sql.Date(dat.getTime());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}/*cette fois ci eclipse me souligne en rouge du format jusqu'à le point virgule et me propose de lever l'exception c'est-à-dire mettre à l'intérieur de try et catch.*/
	      

		System.out.println(sqlDate.toString());



		
		pr = new ProjectReview();
		saved = false;
		
		
	/*	scope_list = new ArrayList<>();
		
		orb = new Item("Orb", ,);
		
		//System.out.println(orb.getElm_name() + " " +orb.getGrade() +" " +orb.getComment());
		scope_list.add(orb); 
		scope_list.add(assumption);
		
		
		
		Scope = new entities.Scope(); */
		
       // EntityManager entityManager = jpaUtil.getEntityManager("pmodigit");

	
		entityManager = EntityManagerUtil.getEntityManager();
		/** Scope **/
		
		Item orb = new Item("Scope", "ORB", request.getParameter("orbgrade"), request.getParameter("orbcomment"));
		Item assumption = new Item("Scope","Assumptions", request.getParameter("assumptionsgrade"),request.getParameter("assumptionscomment"));
		Item externald = new Item("Scope","External Dependencies", request.getParameter("externaldgrade"),request.getParameter("externaldcomment"));
		Item internald = new Item("Scope","Internal Dependencies", request.getParameter("internaldgrade"),request.getParameter("internaldcomment"));
		
		Item dmigration = new Item("Scope","Data Migration", request.getParameter("dmigrationgrade"),request.getParameter("dmigrationcomment"));
		Item wbs = new Item("Scope","WBS", request.getParameter("wbsgrade"),request.getParameter("wbscomment"));
		Item scopecreep = new Item("Scope","Scope Creep and Change Control", request.getParameter("scopecreepgrade"),request.getParameter("scopecreepcomment"));
		Item deliverables= new Item("Scope","Deliverables", request.getParameter("deliverablesgrade"),request.getParameter("deliverablescomment"));
		Item gatemilestone= new Item("Scope","Gate Milestone or Deliverable Acceptance", request.getParameter("gatemilestonegrade"),request.getParameter("gatemilestonecomment"));
		Item customerresp= new Item("Scope","Customer responsibilities", request.getParameter("customerrespgrade"),request.getParameter("customerrespcomment"));
		Item reqtrac= new Item("Scope","Requirement Traceability", request.getParameter("reqtracgrade"),request.getParameter("reqtraccomment"));
		
	
		//EntityManager entityManager = factory.createEntityManager();
		 
		entityManager.getTransaction().begin();
		
	
		
		
		entityManager.persist(orb);
		entityManager.persist(assumption);
		entityManager.persist(externald);
		entityManager.persist(internald);
		entityManager.persist(dmigration);
		entityManager.persist(wbs);
		entityManager.persist(scopecreep);
		entityManager.persist(deliverables);
		entityManager.persist(gatemilestone);
		entityManager.persist(customerresp);
		entityManager.persist(reqtrac);
		
		//entityManager.persist(p);
		/** Schedule **/
		
		Item schedule_plan = new Item("Schedule","Schedule Planning",request.getParameter("schplanninggrade"), request.getParameter("schplanningcomment"));
		Item baseline = new Item("Schedule","Project Schedule Baseline",request.getParameter("baselinegrade"), request.getParameter("baselinecomment"));
		Item schwbs = new Item("Schedule","DSx.C-P schedule (WBS)",request.getParameter("schwbsgrade"), request.getParameter("schwbscomment"));
		Item critasks = new Item("Schedule","Critical Tasks",request.getParameter("critasksgrade"), request.getParameter("critaskscomment"));
		
		entityManager.persist(schedule_plan);
		entityManager.persist(baseline);
		entityManager.persist(schwbs);
		entityManager.persist(critasks);


		
		/** Communication **/
		
		Item govern = new Item("Communication","Governance And Communication Plan",request.getParameter("governgrade"), request.getParameter("governcomment"));
		Item stackholders = new Item("Communication","Stakeholders Management",request.getParameter("stackholdersgrade"), request.getParameter("stackholderscomment"));
		Item meeting = new Item("Communication","Meeting Minutes",request.getParameter("meetinggrade"), request.getParameter("meetingcomment"));
		Item collabo = new Item("Communication","Collaboration with other DS organization",request.getParameter("collabograde"), request.getParameter("collabocomment"));
		
		entityManager.persist(govern);
		entityManager.persist(stackholders);
		entityManager.persist(meeting);
		entityManager.persist(collabo);
		
		/** Risk **/
		
		Item riskmgmt = new Item("Risk","Risks Management",request.getParameter("riskmgmtgrade"), request.getParameter("riskmgmtcomment"));
		Item risksident = new Item("Risk","Risks Identification",request.getParameter("risksidentgrade"), request.getParameter("risksidentcomment"));
		Item risksmitig = new Item("Risk","Risks Mitigation Plan",request.getParameter("meetinggrade"), request.getParameter("meetingcomment"));
		Item changemgmt = new Item("Risk","Change management and End User adoption",request.getParameter("changemgmtgrade"), request.getParameter("changemgmtcomment"));
		
		entityManager.persist(riskmgmt);
		entityManager.persist(risksident);
		entityManager.persist(risksmitig);
		entityManager.persist(changemgmt);
		
		/** Quality **/
		
		Item qualitymgmt = new Item("Quality","Quality Management Plan",request.getParameter("qualitymgmtgrade"), request.getParameter("qualitymgmtcomment"));
		Item qualitystand = new Item("Quality","Quality Standards Compliance",request.getParameter("qualitystandsgrade"), request.getParameter("qualitystandcomment"));
		Item delivsop = new Item("Quality","Deliverable SOP Role Compliance",request.getParameter("delivsopgrade"), request.getParameter("delivsopcomment"));
		Item projectools = new Item("Quality","Project Tools - Configuration management",request.getParameter("projectoolsgrade"), request.getParameter("projectoolscomment"));
		
		Item issuemgmt = new Item("Quality","Issue Management",request.getParameter("issuemgmtgrade"), request.getParameter("issuemgmtcomment"));
		Item ootb = new Item("Quality","OOTB Product Quality",request.getParameter("ootbgrade"), request.getParameter("ootbcomment"));
		Item reqfunc = new Item("Quality","Requirements, Functional, Tech Spec Signoff Process",request.getParameter("reqfuncgrade"), request.getParameter("reqfunccomment"));
		Item testcases = new Item("Quality","Test cases",request.getParameter("testcasesgrade"), request.getParameter("testcasescomment"));
		
		Item uat = new Item("Quality","UAT",request.getParameter("uatgrade"), request.getParameter("uatcomment"));
		Item infracompl = new Item("Quality","Infrastructure Compliance",request.getParameter("infracomplgrade"), request.getParameter("infracomplcomment"));
		Item qaprocess = new Item("Quality","QA Process of Partners' Deliverables",request.getParameter("qaprocessgrade"), request.getParameter("qaprocesscomment"));

		
		entityManager.persist(qualitymgmt);
		entityManager.persist(qualitystand);
		entityManager.persist(delivsop);
		entityManager.persist(projectools);
		entityManager.persist(issuemgmt);
		entityManager.persist(ootb);
		entityManager.persist(reqfunc);
		entityManager.persist(testcases);
		entityManager.persist(uat);
		entityManager.persist(infracompl);
		entityManager.persist(qaprocess);
		
		
		/** Team **/

		Item trainingreq = new Item("Team","Training Requirements",request.getParameter("trainingreqgrade"), request.getParameter("trainingreqcomment"));
		Item teamskill = new Item("Team","Team Skill And Experience",request.getParameter("delivsopgrade"), request.getParameter("delivsopcomment"));
		Item rolesresp = new Item("Team","Roles And Responsibilities",request.getParameter("rolesrespgrade"), request.getParameter("rolesrespcomment"));
		
		Item internalgov = new Item("Team","Internal Governance",request.getParameter("internalgovgrade"), request.getParameter("internalgovomment"));
		Item resoures = new Item("Team","Resources",request.getParameter("resouresgrade"), request.getParameter("resourescomment"));
		Item kt = new Item("Team","Knowledge Transfer",request.getParameter("ktgrade"), request.getParameter("ktcomment"));
		
		
		Item teamdynamic = new Item("Team","Team Dynamics And Atmosphere",request.getParameter("teamdynamicgrade"), request.getParameter("teamdynamiccomment"));
		Item workingenv = new Item("Team","Working Environment",request.getParameter("workingenvgrade"), request.getParameter("workingenvcomment"));
		Item partnersub = new Item("Team","Partner and  Subcontractors",request.getParameter("partnersubgrade"), request.getParameter("partnersubcomment"));
		Item offshore = new Item("Team","Offshore Team",request.getParameter("offshoregrade"), request.getParameter("offshorecomment"));

		entityManager.persist(trainingreq);
		entityManager.persist(teamskill);
		entityManager.persist(rolesresp);
		entityManager.persist(internalgov);
		entityManager.persist(resoures);
		entityManager.persist(kt);
		entityManager.persist(teamdynamic);
		entityManager.persist(workingenv);
		
		entityManager.persist(partnersub);
		entityManager.persist(offshore);
		
		
		/** Budget **/
		Item po = new Item("Budget","PO",request.getParameter("pograde"), request.getParameter("pocomment"));
		Item baselineup = new Item("Budget","Baseline Update Process",request.getParameter("baselineupgrade"), request.getParameter("baselineupcomment"));
		Item margindelta = new Item("Budget","Margin delta",request.getParameter("margindeltagrade"), request.getParameter("margindeltacomment"));
		Item externalimpact = new Item("Budget","External Impact management",request.getParameter("externalimpactgrade"), request.getParameter("externalimpactcomment"));
		
		Item customerinv = new Item("Budget","Customer invoices management",request.getParameter("customerinvgrade"), request.getParameter("customerinvcomment"));
		Item partnerinv = new Item("Budget","Partner invoicing management",request.getParameter("partnerinvgrade"), request.getParameter("partnerinvcomment"));
		Item onbudget = new Item("Budget","On Budget",request.getParameter("onbudgetgrade"), request.getParameter("onbudgetcomment"));
		Item nonbillable = new Item("Budget","Non Billable time management",request.getParameter("nonbillablegrade"), request.getParameter("nonbillablecomment"));
		
		
		entityManager.persist(po);
		entityManager.persist(baselineup);
		entityManager.persist(margindelta);
		entityManager.persist(externalimpact);
		entityManager.persist(customerinv);
		entityManager.persist(partnerinv);
		entityManager.persist(onbudget);
		entityManager.persist(nonbillable);
		
		
		Project p = new Project();
		p.setProject_title("samiiiiron");
		/** Project Review **/
		List<Item> list_items = new ArrayList<>();
		list_items.add(orb);
		list_items.add(assumption);
		list_items.add(po);
		
		pr.setPr_date(sqlDate);
		pr.setPerformer(performer);
		pr.setProjet(p);
		pr.setItems(list_items);
	
		entityManager.persist(pr);
		
		entityManager.getTransaction().commit();
		entityManager.close();
	
		
		
		ItemDao id= new ItemDao();
		
		List<Item> items= id.findAll();
		
		for(Item i:items){
			System.out.println(i.getDomain_name());
		} 
		
		
		
		saved = true;
	
		request.setAttribute("saved", saved);
		
		response.sendRedirect("temp/pr_home.jsp");

	}

}
