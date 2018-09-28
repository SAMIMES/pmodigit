<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css" >
    
    <!-- Custom styles for this template -->
    <link href="/pmodigit/css/style.css" rel="stylesheet">
	<link  href="/pmodigit/css/all.min.css" rel="stylesheet">
     <style>
            .ui-autocomplete-loading {
                background: white url("img/anim_16x16.gif") right center no-repeat;
            }
        </style>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {

                $("#customers").autocomplete({
                    source: "../Customers",
                    minLength: 1,
                });
            });
            
            $(function () {

                $("#pm").autocomplete({
                    source: "../PM",
                    minLength: 1,
                });
            });
        </script>
       
<title>Quality Assurance</title>
</head>

<body>

      <div class="container">
	
      <!-- Navbar -->
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
          <a class="dropdown-item" href="${pageContext.request.contextPath}/list">Project</a>
          <a class="dropdown-item" href="/pmodigit/temp/pr_home.jsp">Project Review</a>
           <a class="dropdown-item" href="/pmodigit/temp/pr_home.jsp">Project Closure</a>
          <a class="dropdown-item" href="/pmodigit/temp/qa_home.jsp">Quality Assurance</a>
          <a class="dropdown-item" href="#..">Action Follow-up</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Calendar</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="${pageContext.request.contextPath}/dashboard"><i class="fas fa-fw fa-tachometer-alt"></i>Dashboard</a>
      </li>
       <!-- Navbar Search -->
       
       <li>
       <form class="pl-5" method="POST" action="searchproject">
         <div class="ui-widget">
	        <div class="input-group">
	          <input id="bugs" name="searchtitle" type="text" class="form-control" placeholder="Search by project title..." aria-label="Search" aria-describedby="basic-addon2">
	          <div class="input-group-append">
	            <button class="btn btn-primary" type="submit">
	              <i class="fas fa-search"></i>
	            </button>
	          </div>
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
                               
                            </form>
                             
                                <div class="form-group text-center">
                                    <a href="/pmodigit/connexion/register.jsp"><small>Register</small></a>
                                </div>
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
        
   
    
     		
              
             
 
 <div class="accordion" id="accordionExample">
   <form  action="/pmodigit/addqa" method="post">
   
   	
    <div class="form-group row mt-5">
            
        
		 
	
		
             
         <div class="col-md-12">
          	<input name="ptitle" class="form-control" type="text" placeholder="Project Title"> 
         </div>
         
     </div>
  <div class="card card-register mx-auto mt-5">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Project Monitoring 
        </button>
      </h5>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
  
      <div class="card-body">

	
            <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label>Project Change Request</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="pcrgrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="pcrcomment" class="form-control" placeholder="Project Change Request comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
                         <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label>Risk/Issue/Action Register</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="riskissuegrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="riskissuecomment" class="form-control" placeholder="Risk/Issue/Action Register comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
            <div class="form-group row">
           
				<div class = "col-md-3">
				<label>Governance Meeting Minutes</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="govmeetinggrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="govmeetingcomment" class="form-control" placeholder="Governance Meeting Minutes comment"></textarea>
               
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
          G1 Project Launched
        </button>
      </h5>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
      
    	 <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label>Statement of Work</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="sopgrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="sopcomment" class="form-control" placeholder="Statement of Work comment"></textarea>
               
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
          G2 Project Management Plan Approved
        </button>
      </h5>
    </div>
    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
      <div class="card-body">
      
       <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label>Deliverable Register</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="delivReggrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="delivRegcomment" class="form-control" placeholder="Deliverable Register comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
              <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label>Stakeholder Register</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="stackReggrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="stackRegcomment" class="form-control" placeholder="Stakeholder Register comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
              <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label>Governance Charter</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="govchartgrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="govchartcomment" class="form-control" placeholder="Governance Charter comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             
                          
              <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label>Project Master Schedule</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="projectMSgrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="projectMScomment" class="form-control" placeholder="Project Master Schedule comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
            <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label>Project Budget</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="projectbudgetgrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="projectbudgetomment" class="form-control" placeholder="Project Budget comment"></textarea>
               
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
          G3 Solution Defined
        </button>
      </h5>
    </div>
    <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
      <div class="card-body">
       
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label>Project WBS</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="WBSgrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="WBScomment" class="form-control" placeholder="Project WBS comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label>Quality Management plan (Acceptance criteria)</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="acceptcritgrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="acceptcritcomment" class="form-control" placeholder="Quality Management plan comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  -->
             
             
             <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label>Requirement Specification</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="reqspecgrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="reqspeccomment" class="form-control" placeholder="Requirement Specification comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  --> 
		
     
      </div>
    </div>
  </div>
  
  
  
  
  <div class="card">
    <div class="card-header" id="headingBudget">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseG4" aria-expanded="false" aria-controls="collapseBudget">
          G4 Solution Design Approved
        </button>
      </h5>
    </div>
    <div id="collapseG4" class="collapse" aria-labelledby="headingBudget" data-parent="#accordionExample">
      <div class="card-body">
   
       
               <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label>Architecture Document</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="archidocgrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="archidoccomment" class="form-control" placeholder="Architecture Document comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  --> 
             
                     <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label>Functional Specification</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="functspecgrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="functspeccomment" class="form-control" placeholder="Functional Specification comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  --> 
             
                     <div class="form-group row">
            
              
				<div class = "col-md-3">
				<label>System Integration Test Plan</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="systinteggrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="systintegcomment" class="form-control" placeholder="System Integration Test comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  --> 
             
             
             <div class="form-group row">
            
                <div class = "col-md-3">
				<label>Requirement Traceability Matrix</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="reqTracgrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="reqTraccomment" class="form-control" placeholder="Requirement Traceability Matrix comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  --> 
       
       
      </div>
    </div>
  </div>
  
    <div class="card">
    <div class="card-header" id="headingBudget">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseG5" aria-expanded="false" aria-controls="collapseBudget">
          G5 Solution Delivered
        </button>
      </h5>
    </div>
    <div id="collapseG5" class="collapse" aria-labelledby="headingBudget" data-parent="#accordionExample">
      <div class="card-body">
   
            <div class="form-group row">
            
                <div class = "col-md-3">
				<label>Solution Source Code</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="solutioncodegrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="solutioncodecomment" class="form-control" placeholder="Solution Source Code"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  --> 
             
                  <div class="form-group row">
            
                <div class = "col-md-3">
				<label>Solution Build</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="solutionbuildgrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="solutionbuildcomment" class="form-control" placeholder="Solution Build comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  --> 
             
                  <div class="form-group row">
            
                <div class = "col-md-3">
				<label>System Integration Test Results</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="sysresgrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="sysrescomment" class="form-control" placeholder="System Integration Test Results comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  --> 
       
       
      </div>
    </div>
  </div>
  

  
      <div class="card">
    <div class="card-header" id="headingBudget">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseG6" aria-expanded="false" aria-controls="collapseBudget">
         	G6 Solution Approved
        </button>
      </h5>
    </div>
    <div id="collapseG6" class="collapse" aria-labelledby="headingBudget" data-parent="#accordionExample">
      <div class="card-body">
   
       
           <div class="form-group row">
            
                <div class = "col-md-3">
				<label>Solution Issue Log</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="solloggrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="sollogcomment" class="form-control" placeholder="Solution Issue Log comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  --> 
       
      </div>
    </div>
  </div>
  
        <div class="card">
    <div class="card-header" id="headingBudget">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseG7" aria-expanded="false" aria-controls="collapseBudget">
         	G7 Project Closed
        </button>
      </h5>
    </div>
    <div id="collapseG7" class="collapse" aria-labelledby="headingBudget" data-parent="#accordionExample">
      <div class="card-body">
   
   
   		    <div class="form-group row">
            
                <div class = "col-md-3">
				<label>Certificate of Acceptance </label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="certificateAccgrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="certificateAcccomment" class="form-control" placeholder="Certificate of Acceptance comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  --> 
             
                 <div class="form-group row">
            
                <div class = "col-md-3">
				<label>Lessons Learned</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="lessonsLearnedgrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="lessonsLearnedcomment" class="form-control" placeholder="Lessons Learned comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  --> 
             
                 <div class="form-group row">
            
                <div class = "col-md-3">
				<label>Other non mandatory documents stored (under DSxCP)</label>   
				</div>
                <div class="col-md-1">
                 	
					 
					    <select name="othergrade" class="form-control">
					      <option></option>
					      <option>0</option>
					      <option>1</option>
					    </select>
                </div>
                <div class="col-md-8">
                  <div class="form-label-group">
                    <textarea name ="othercomment" class="form-control" placeholder="Other non mandatory documents comment"></textarea>
               
                </div>
              </div>
              
             </div>  <!--  row  --> 
       
      </div>
    </div>
  </div>
  
            
             <button type="submit" class="btn btn-primary btn-block mb-2"> Validate </button>
        
            
            </form>
</div>


    
   
            
         
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2018 Dassault Data Services, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
    </div><!-- /.container -->
    
   

   
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</body>
</html>