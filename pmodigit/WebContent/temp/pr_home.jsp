<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<%@ page import="entity.User" %>  
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/pmodigit/css/bootstrap.min.css" >
    <!-- Custom styles for this template -->
    <link href="/pmodigit/css/style.css" rel="stylesheet">
	<link  href="/pmodigit/css/all.min.css" rel="stylesheet">
	
	
     <link href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"  rel="stylesheet" >

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>

$(function () {

    $("#bugs").autocomplete({
        source: "/pmodigit/Titles",
        minLength: 1,
    });
});
</script>


       

    
<title>Project Review</title>
</head>

<body>

      <div class="container">
	
           <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/pmodigit/index.jsp">pmo<font color="blue">Digit</font></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="pmodigit/temp/search.jsp">Search</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Templates
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/pmodigit/temp/pcreation.jsp">Project</a>
          <a class="dropdown-item" href="/pmodigit/temp/pr_home.jsp">Project Review</a>
           <a class="dropdown-item" href="/pmodigit/temp/pr_home.jsp">Project Closure</a>
          <a class="dropdown-item" href="/pmodigit/temp/qa_home.html">Quality Assurance</a>
          <a class="dropdown-item" href="#..">Action Follow-up</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Calendar</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Dashboard</a>
      </li>
       <!-- Navbar Search -->
       
       <li>
       <form class="pl-5" method="POST" action="list">
	        <div class="input-group">
	          <input type="text" class="form-control" placeholder="Search by project title..." aria-label="Search" aria-describedby="basic-addon2">
	          <div class="input-group-append">
	            <button class="btn btn-primary" type="submit">
	              <i class="fas fa-search"></i>
	            </button>
	          </div>
	        </div>
	      </form>
	      
	     </li>
	   </ul>
	   <ul class="navbar-nav pull-right"> 
	   <c:choose>
	   <c:when test = "${res == false }">
          
         
       <li class="dropdown order-1">
                    <button type="button" id="dropdownMenu1" id="navbarDropdown" data-toggle="dropdown" class="btn btn-primary dropdown-toggle">Login <span class="caret"></span></button>
                    <ul class="dropdown-menu dropdown-menu-right">
                       <li class="px-3 py-2">
                           <form method="POST" action="login">
                                <div class="form-group">
                                    <input name="username" placeholder="Username" class="form-control form-control-sm" type="text" required="required">
                                </div>
                                <div class="form-group">
                                    <input name="password" placeholder="Password" class="form-control form-control-sm" type="password" required="required">
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                                </div>
                                <div class="form-group text-center">
                                    <small><a href="#" data-toggle="modal" data-target="#modalPassword">Forgot password?</a></small>
                                </div>
                                
                                <div class="form-group text-center">
                                    <small><a href="#" data-toggle="modal" data-target="#modalPassword">Register</a></small>
                                </div>
                            </form>
                        </li>
                    </ul>
                
       </li>
       </c:when>
       <c:when test = "${res == true}">
            <li class="dropdown order-1">
                    <button type="button" id="dropdownMenu1" id="navbarDropdown" data-toggle="dropdown" class="btn btn-primary dropdown-toggle">
                  
                
                    <c:choose>
         
         <c:when test = "${sessionUser.userType == 0}">
           
          User: <c:out value="${sessionUser.username}"></c:out> 
          </c:when> 
          <c:when test = "${sessionUser.userType == 1}">
           Admin: <c:out value="${sessionUser.username}"></c:out> 
           </c:when>
           </c:choose>
                     
                     <span class="caret"></span></button>
                    <ul class="dropdown-menu dropdown-menu-right">
                       <li class="px-3 py-2">
                           <form class="form" role="form">
                                
                                <div class="form-group text-center">
                                    <small><a href="logout"> Logout </a></small>
                                </div>
                            </form>
                        </li>
                    </ul>
                
       </li>
         </c:when>
         
         <c:otherwise>
          <li class="dropdown order-1">
                    <button type="button" id="dropdownMenu1" id="navbarDropdown" data-toggle="dropdown" class="btn btn-primary dropdown-toggle">Login <span class="caret"></span></button>
                    <ul class="dropdown-menu dropdown-menu-right">
                       <li class="px-3 py-2">
                           <form method="POST" action="login" role="form">
                                <div class="form-group">
                                    <input name="username" placeholder="Username" class="form-control form-control-sm" type="text" required="required">
                                </div>
                                <div class="form-group">
                                    <input name="password" id="passwordInput" placeholder="Password" class="form-control form-control-sm" type="password" required="required">
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                                </div>
                                <div class="form-group text-center">
                                    <small><a href="#" data-toggle="modal" data-target="#modalPassword">Forgot password?</a></small>
                                </div>
                                
                                <div class="form-group text-center">
                                    <small><a href="#" data-toggle="modal" data-target="#modalPassword">Register</a></small>
                                </div>
                            </form>
                        </li>
                    </ul>
                
       </li>
         </c:otherwise>
       </c:choose>
    </ul>
   
  </div>
</nav>
	<!-- <div class="card card-register mx-auto mt-5">
       <div class="card-header">Scope</div>
       
         </div>    card -->
        
   
    


     		 
 	
      <!--   <c:out value="${sessionUtilisateur.username}">  Nooo </c:out>       -->
             
 
 <div class="accordion" id="accordionExample">
   <form  action="/pmodigit/projectReview" method="post">
   
 	

   
	    <c:if test="${saved == true}">
	    
	    		
	        <div class="alert alert-success" role="alert">
  					Project Review has been saved! <a href="pr_home.jsp" > click here to see details  </a>
			</div>

	        
	    </c:if>    
	    
	     <c:if test="${saved == false}">
	      <div class="alert alert-danger" role="alert">
	  				Project Title not found  <a href="/pmodigit/temp/pcreation.jsp" > click here to create project  </a>
			</div>
	    </c:if>  
	 
	
      
  
    <div class="row mt-5">
			<div class="col-12">
		 <div class="input-group">
          	<input id="bugs" name="ptitle" class="form-control" type="text" placeholder="Project Title"> 
          </div>
		</div>

         
     </div>
     
     
            
 

     
  <div class="card card-register mx-auto mt-5">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Scope
        </button>
      </h5>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">

      <div class="card-body">	
	            <div class="form-group row">
            
              
				<div class = "col-md-3">
					<h5> Item </h5>   
				</div>
                <div class="col-md-1">
              	 	<h5> Grade </h5>
				</div>
				
                <div class="col-md-8">
               		<h5> Comment </h5>
             	</div>
              
             </div>  <!--  row  -->
            <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label>ORB</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="orbgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="orbcomment" class="form-control" placeholder="ORB comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
               <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Assumptions</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="assumptionsgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name="assumptionscomment" class="form-control" placeholder="assumptions comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             
                   <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Pre Sales Demonstration</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="presalesgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name="presalescomment" class="form-control" placeholder="Pre Sales Demonstration comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
               <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >External Dependencies</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="externaldgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name="externaldcomment" class="form-control" placeholder="External dependencies comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Internal Dependencies</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="internaldgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="internaldcomment" class="form-control" placeholder="Internal Dependencies comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             
              <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Data Migration</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="dmigrationgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="dmigrationcomment" class="form-control" placeholder="Data Migration comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             
              <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >WBS</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="wbsgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="wbscomment" class="form-control" placeholder="WBS comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
              <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Scope Creep and Change Control</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="scopecreepgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="scopecreepcomment" class="form-control" placeholder="Scope Creep and Change Control comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Deliverables</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="deliverablesgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="deliverablescomment" class="form-control" placeholder="Deliverables comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Gate Milestone or Deliverable Acceptance</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="gatemilestonegrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="gatemilestonecomment" class="form-control" placeholder="Gate Milestone or Deliverable Acceptance comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Customer responsibilities</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="customerrespgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="customerrespcomment" class="form-control" placeholder="Customer responsibilities comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Requirement Traceability</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="reqtracgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="reqtraccomment" class="form-control" placeholder="Requirement Traceability comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
              
			             
             
           </div> <!--  card body -->
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Schedule
        </button>
      </h5>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
      
             <div class="form-group row">
            
              
				<div class = "col-md-3">
					<h5> Item </h5>   
				</div>
                <div class="col-md-1">
              	 	<h5> Grade </h5>
				</div>
				
                <div class="col-md-8">
               		<h5> Comment </h5>
             	</div>
              
             </div>  <!--  row  -->
             
             
        <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label for="Schedule Planning">Schedule Planning</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="schplanninggrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="schplanningcomment" class="form-control" placeholder="Schedule Planning comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
               <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label for="Project Schedule Baseline">Project Schedule Baseline</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="baselinegrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name="baselinecomment" class="form-control" placeholder="project schedule baseline comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
               <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >DSx.C-P schedule (WBS)</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="schwbsgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name="schwbscomment" class="form-control" placeholder="DSx.C-P schedule"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Critical Tasks</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="critasksgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="critaskscomment" class="form-control" placeholder="Critical tasks comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
   	
           
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingThree">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Communication
        </button>
      </h5>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
      <div class="card-body">
      
        <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label>Governance And Communication Plan</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="governgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="governcomment" class="form-control" placeholder="ORB comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
               <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Stakeholders Management</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="stackholdersgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name="stackholderscomment" class="form-control" placeholder="Stakeholders Management comment"> </textarea>

                </div>
              </div>
              
             </div>  <!--  row  -->
             
               <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Meeting Minutes</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="meetinggrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name="meetingcomment" class="form-control" placeholder="External dependencies comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Collaboration with other DS organization</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="collabograde" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="collabocomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
      </div>
    </div>
  </div>
  
   <div class="card">
    <div class="card-header" id="headingFour">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
          Risk
        </button>
      </h5>
    </div>
    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
      <div class="card-body">
         <div class="form-group row">
            
				<div class = "col-md-3">
				<label >Risks Management</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="riskmgmtgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="riskmgmtcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
               <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Risks Identification</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="risksidentgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name="risksidentcomment" class="form-control" placeholder="assumptions comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
               <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Risks Mitigation Plan</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="risksmitiggrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name="risksmitigcomment" class="form-control" placeholder="External dependencies comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Change management and End User adoption</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="changemgmtgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="changemgmtcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
      </div>
    </div>
  </div>
  
  <div class="card">
    <div class="card-header" id="headingFive">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFour">
          Quality
        </button>
      </h5>
    </div>
    <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
      <div class="card-body">
           <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label>Quality Management Plan</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="qualitymgmtgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="qualitymgmtcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
               <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Quality Standards Compliance</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="qualitystandsgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name="qualitystandcomment" class="form-control" placeholder="assumptions comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
               <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Deliverable SOP Role Compliance</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="delivsopgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name="delivsopcomment" class="form-control" placeholder="External dependencies comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Project Tools - Configuration management</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="projectoolsgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="projectoolscomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
              <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Issue Management</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="issuemgmtgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="issuemgmtcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             
             
              <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >OOTB Product Quality</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="ootbgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="ootbcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Requirements, Functional, Tech Spec Signoff Process</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="reqfuncgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="reqfunccomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
            <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Test cases</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="testcasesgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="testcasescomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
            <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >UAT</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="uatgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="uatcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
          <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Infrastructure Compliance</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="infracomplgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="infracomplcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
               <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >QA Process of Partners' Deliverables</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="qaprocessgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="qaprocesscomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
      </div>
    </div>
  </div>
  
  
  <div class="card">
    <div class="card-header" id="headingTeam">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTeam" aria-expanded="false" aria-controls="collapseTeam">
          Team
        </button>
      </h5>
    </div>
    <div id="collapseTeam" class="collapse" aria-labelledby="headingTeam" data-parent="#accordionExample">
      <div class="card-body">
         <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Training Requirements</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="trainingreqgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="trainingreqcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
               <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Team Skill And Experience</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="teamskillgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="teamskillcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Roles And Responsibilities</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="rolesrespgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="rolesrespcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
               <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Internal Governance</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="internalgovgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="internalgovomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Resources</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="resouresgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="resourescomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
               <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Knowledge Transfer</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="ktgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="ktcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
              <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Team Dynamics And Atmosphere</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="teamdynamicgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="teamdynamiccomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Working Environment</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="workingenvgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="workingenvcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
              <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Partner and  Subcontractors</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="partnersubgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="partnersubcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
              <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Offshore Team</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="offshoregrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="offshorecomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
      </div>
    </div>
  </div>
  
  <div class="card">
    <div class="card-header" id="headingBudget">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseBudget" aria-expanded="false" aria-controls="collapseBudget">
          Budget
        </button>
      </h5>
    </div>
    <div id="collapseBudget" class="collapse" aria-labelledby="headingBudget" data-parent="#accordionExample">
      <div class="card-body">
       	<div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >PO</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="pograde" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="pocomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Baseline Update Process</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="baselineupgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="baselineupcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Margin delta</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="margindeltagrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="margindeltacomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >External Impact management</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="externalimpactgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="externalimpactcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Customer invoices management</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="customerinvgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="customerinvcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Partner invoicing management</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="partnerinvgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="partnerinvcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >On Budget</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="onbudgetgrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="onbudgetcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
            </div>  <!--  row  -->
            
                <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label >Non Billable time management</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="nonbillablegrade" class="form-control">
					      <option>A</option>
					      <option>B</option>
					      <option>C</option>
					      <option>D</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="nonbillablecomment" class="form-control" placeholder="ORB comment"> </textarea>
               
                </div>
              </div>
              
            </div>  <!--  row  -->
      </div>
    </div>
  </div>
  
            <br>
            <br>
            
            <a href="#"> <button type="submit" class="btn btn-primary btn-block mb-2"> Save PR </button> </a>
             
        
            
            </form>
</div>


    
   
            
         
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2018 Dassault Data Services, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
    </div><!-- /.container -->
   
   

<script type="text/javascript" src="/pmodigit/js/bootstrap.min.js"></script>

 
</body>
</html>