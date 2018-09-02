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
      
	  <a class="navbar-brand" href="../index.html">PMO</a>
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
	      <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
	        <div class="input-group">
	          <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
	          <div class="input-group-append">
	            <button class="btn btn-primary" type="button">
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
 
 
   <form action="../searchPRServ" method="POST">
   
 	

    <div class="form-group row mt-5">
            
       
		
             
         <div class="col-md-6">
          	<input name="projecttitle" class="form-control" type="text" placeholder="Project Title"> 
         </div>
         
        
   		 <div class="col-md-6">
        	<button type="submit" class="btn btn-primary mb-2"> Validate </button>
        </div>
     </div>
     
    
    
   
        
          
     </form>
</div>


    
  

	<div class="row">
		
  
        <div class="col-md-12">
        <h4> Projets list</h4>
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   
                   <th>Project ID</th>
                     <th>Project Title</th>
                     <th>Customer</th>
                     <th>Project Manager</th>
                     <th>Date</th>
                      <th>Edit</th>
                       <th>Delete</th>
                   </thead>
    <tbody>
     <c:forEach items="${listprojects}" var="c">

    <tr>

    <td>${c.project_id}</td>
    <td>${c.project_title}</td>
    <td>${c.customer}</td>
    <td>${c.pm}</td>
    <td>${c.date}</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><i class="fas fa-pencil-alt"></i></button></p></td>
    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><i class="fa fa-trash"></i></button></p></td>
    </tr>
  </c:forEach>
 
   
    
   
    
    </tbody>
        
</table>

<div class="clearfix"></div>
<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>
                
            </div>
            
        </div>
	</div>
</div>


<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
      </div>
          <div class="modal-body">
          <div class="form-group">
        <input class="form-control " type="text" placeholder="Mohsin">
        </div>
        <div class="form-group">
        
        <input class="form-control " type="text" placeholder="Irshad">
        </div>
        <div class="form-group">
        <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>
    
        
        </div>
      </div>
          <div class="modal-footer ">
        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
    
    
    
    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
      </div>
          <div class="modal-body">
       
       <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>
       
      </div>
        <div class="modal-footer ">
        <button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
      </div>
        </div>
    <!-- /.modal-content --> 
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
 
 <script>
 
 $( "document" ).ready(function() {
	  $( "div.success" ).fadeIn( 300 ).delay( 1500 ).fadeOut( 400 );
	});

	$( "document" ).click(function() {
	  $( "div.failure" ).fadeIn( 300 ).delay( 1500 ).fadeOut( 400 );
	});

	$( "document" ).click(function() {
	  $( "div.warning" ).fadeIn( 300 ).delay( 1500 ).fadeOut( 400 );
	});
</script>



</body>
</html>