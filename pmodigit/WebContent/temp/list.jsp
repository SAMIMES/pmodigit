<%@page import="entity.Item"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/pmodigit/css/bootstrap.min.css" >
    <!-- Custom styles for this template -->
    <link href="/pmodigit/css/style.css" rel="stylesheet">
	<link  href="/pmodigit/css/all.min.css" rel="stylesheet">
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
      
	  <a class="navbar-brand" href="/pmodigit/index.jsp">PMO</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>

	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
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
	         <div class="input-group-btn search-panel">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    	<span id="search_concept">item</span> <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#contains">project</a></li>
                      <li><a href="#its_equal">project review</a></li>
                      <li><a href="#its_equal">project closure</a></li>
                      <li><a href="#greather_than">quality assurance</a></li>
                      <li class="divider"></li>
                      <li><a href="#all">Anything</a></li>
                    </ul>
                </div>
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
        
   
    
<!-- <c:if test="${flag==true}">
<div class="alert alert-success" role="alert">
  <c:out value="${result}" />
</div>
 </c:if>     -->		 
 

<c:if test="${flag==true}">

	<div class="row">
		
  
        <div class="col-md-12">
        <h4>Projects list</h4>
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   
                   <th>Project ID</th>
                   <th>Project Title</th>
                    <th>Customer</th>
                     <th>Project Manager</th>
                     <th>Date</th>
                     <th>PR Count</th>
                      <th>Edit</th>
                      
                       <th>Delete</th>
                   </thead>
    <tbody>
    
    <c:forEach items="${liste}" var="c">

    <tr>
    <td>${c.project_id}</td>
    <td><a href="${pageContext.request.contextPath}/listpr?idtitle=${c.project_title}">${c.project_title}</a></td>
    <td><a href="${pageContext.request.contextPath}/listpr?idtitle=${c.project_title}">${c.customer}</a></td>
    <td><a href="${pageContext.request.contextPath}/listpr?idtitle=${c.project_title}">${c.pm}</a></td>
    <td>${c.date}</td>
    <td>28</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit_${c.project_title}" ><i class="fas fa-pencil-alt"></i></button></p></td>
    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete_${c.project_title}" ><i class="fa fa-trash"></i></button></p></td>
    </tr>
    
    
    <div class="modal fade" id="edit_${c.project_title}" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Edit Project</h4>
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
        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><i class="icon-ok-sign"></i> Update</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
    
    
    
    <div class="modal fade" id="delete_${c.project_title}" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icon-remove"></i></button>
        <h4 class="modal-title custom_align" id="Heading">Delete this project</h4>
      </div>
          <div class="modal-body">
       
       <div class="alert alert-danger"><i class="fas fa-exclamation-triangle"></i> Are you sure you want to delete this Record?</div>
       
      </div>
        <div class="modal-footer ">
        <a href="${pageContext.request.contextPath}/delete?id=${c.project_title}"><button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Yes</button></a>
        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="icon-remove"></i> No</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
</div>
    
    </c:forEach>    
    </tbody>
        
</table>


                
            </div>
            
        </div>
	</div> <!--  row -->


</c:if>


<c:if test="${flag==false}">

	<div class="row">
		
  
        <div class="col-md-12">
        <h4>Projects list</h4>
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
    
                   <th>Project ID</th>
                   <th>Project Title</th>
                    <th>Customer</th>
                     <th>Project Manager</th>
                     <th>Date</th>
                     <th>PR Count</th>
                      <th>Edit</th>
                      
                       <th>Delete</th>
                   </thead>
    <tbody>
    
    <c:forEach items="${liste_projects}" var="c">

    <tr>
    <td>${c.project_id}</td>
    <td><a href="${pageContext.request.contextPath}/listpr?idtitle=${c.project_title}">${c.project_title}</a></td>
    <td><a href="${pageContext.request.contextPath}/listpr?idtitle=${c.project_title}">${c.customer}</a></td>
    <td><a href="${pageContext.request.contextPath}/listpr?idtitle=${c.project_title}">${c.pm}</a></td>
    <td>${c.date}</td>
    <td>28</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit_${c.project_title}" ><i class="fas fa-pencil-alt"></i></button></p></td>
    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete_${c.project_title}" ><i class="fa fa-trash"></i></button></p></td>
    </tr>
    
    
    <div class="modal fade" id="edit_${c.project_title}" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Edit Project</h4>
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
        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><i class="icon-ok-sign"></i> Update</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
    
    
    
    <div class="modal fade" id="delete_${c.project_title}" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icon-remove"></i></button>
        <h4 class="modal-title custom_align" id="Heading">Delete this project</h4>
      </div>
          <div class="modal-body">
       
       <div class="alert alert-danger"><i class="fas fa-exclamation-triangle"></i> Are you sure you want to delete this Record?</div>
       
      </div>
        <div class="modal-footer ">
        <a href="${pageContext.request.contextPath}/delete?id=${c.project_title}"><button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Yes</button></a>
        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="icon-remove"></i> No</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
</div>
    
    </c:forEach>    
    </tbody>
        
</table>


                
            </div>
            
        </div>
	</div> <!--  row -->


</c:if>
    
   
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
         
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2018 Dassault Data Services, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
    </div><!-- /.container -->
   
   
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>   
<script type="text/javascript" src="/pmodigit/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/pmodigit/js/myjs.js"></script>

 
</body>
</html>