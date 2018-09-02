<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css" >
    <!-- Custom styles for this template -->
    <link href="../css/style.css" rel="stylesheet">
	<link  href="../css/all.min.css" rel="stylesheet">
     <style>
            .ui-autocomplete-loading {
                background: white url("img/anim_16x16.gif") right center no-repeat;
            }
        </style>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

       

    
<title>Project Review</title>
</head>

<body>

      <div class="container">
	
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
      
	  <a class="navbar-brand" href="../index.html">digit<font color="blue">PMO</font></a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>

	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Search</a>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          Templates
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	          <a class="dropdown-item" href="pr_home.jsp">Project Review</a>
	          <a class="dropdown-item" href="qa_home.html">Quality Assurance</a>
	          <a class="dropdown-item" href="#">Action Follow-up</a>
	          <div class="dropdown-divider"></div>
	          <a class="dropdown-item" href="#">Calendar</a>
	        </div>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link disabled" href="#">Dashboard</a>
	      </li>
	    </ul>
	    <!-- Navbar Search -->
	      <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0" method="POST" action="../list">
	      
	        <div class="input-group">
	        
	          <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
	          <div class="input-group-append">
	            <button class="btn btn-primary" type="submit">
	              <i class="fas fa-search"></i>
	            </button>
	          </div>
	        </div>
	      </form>
	  </div>
	</nav>
	<!-- <div class="card card-register mx-auto mt-5">
       <div class="card-header">Scope</div>
       
         </div>    card -->
        
   
    

<!-- <div class="alert-box success">Successful Alert !!!</div> -->
<div class="alert-box failure">Failure Alert !!!</div>
<div class="alert-box warning">Warning Alert !!!</div>	
     		 
     		 

              
             
 
 <div class="accordion" id="accordionExample">
   <form  action="../projectReview" method="post">
   
 	
   <c:choose>
   
	    <c:when test="${saved==true}">
	    
	    		<c:out value="${saved}"> </c:out>
	        <div class="alert-box success" role="alert" >
	  				Project Review has been saved! <a href="pr_home.jsp" > click here to see details  </a>
			</div>
	        <br />
	        
	    </c:when>    
	    
	    <c:otherwise>
	        <div class="alert-box failure" role="alert">
	  				This is a danger alert—check it out!
			</div>
	    </c:otherwise>
	 
	</c:choose>
      
  
    <div class="form-group row mt-5">
            
             
         <div class="col-md-4">
          	<input name="projecttitle" class="form-control" type="text" placeholder="Project Title"> 
         </div>
         
 
         
          <div class="col-md-4">
          	<input name="performer" class="form-control" type="text" placeholder="Performed By"> 
         </div>
         
           <div class="col-md-4">
          	<input name="date" class="form-control" type="date" placeholder="Date"> 
         </div>
     </div>
    <div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
    60%
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
          <h6 class="card-title">Special title treatment</h6>
	
	            <div class="form-group row">
            
              
				<div class = "col-md-3">
					<h5> Items </h5>   
				</div>
                <div class="col-md-1">
              	 	<h5> Grades </h5>
				</div>
				
                <div class="col-md-8">
               		<h5> Comments </h5>
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
                    <textarea name ="orbcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
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
                    <textarea name="assumptionscomment" class="form-control" placeholder="assumptions comment"> </textarea>
               
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
                    <textarea name="externaldcomment" class="form-control" placeholder="External dependencies comment"> </textarea>
               
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
                    <textarea name ="internaldcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
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
                    <textarea name ="dmigrationcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
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
                    <textarea name ="wbscomment" class="form-control" placeholder="ORB comment"> </textarea>
               
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
                    <textarea name ="scopecreepcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
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
                    <textarea name ="deliverablescomment" class="form-control" placeholder="ORB comment"> </textarea>
               
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
                    <textarea name ="gatemilestonecomment" class="form-control" placeholder="ORB comment"> </textarea>
               
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
                    <textarea name ="customerrespcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
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
                    <textarea name ="reqtraccomment" class="form-control" placeholder="ORB comment"> </textarea>
               
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
                    <textarea name ="schplanningcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
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
                    <textarea name="baselinecomment" class="form-control" placeholder="assumptions comment"> </textarea>
               
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
                    <textarea name="schwbscomment" class="form-control" placeholder="External dependencies comment"> </textarea>
               
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
                    <textarea name ="critaskscomment" class="form-control" placeholder="Critical tasks comment"> </textarea>
               
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
                    <textarea name ="governcomment" class="form-control" placeholder="ORB comment"> </textarea>
               
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
                    <textarea name="stackholderscomment" class="form-control" placeholder="assumptions comment"> </textarea>
               
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
                    <textarea name="meetingcomment" class="form-control" placeholder="External dependencies comment"> </textarea>
               
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
  
            
            <a href="#"> <button type="submit" class="btn btn-primary mb-2"> Validate </button> </a>
             
        
            
            </form>
</div>


    
   
            
         
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2018 Dassault Data Services, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
    </div><!-- /.container -->
   
   
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>   
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/myjs.js"></script>

 
</body>
</html>