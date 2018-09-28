<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
 	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link  href="/pmodigit/css/bootstrap.min.css" rel="stylesheet">
	<link  href="/pmodigit/css/all.min.css" rel="stylesheet">
	<link  href="/pmodigit/css/style.css" rel="stylesheet">


    

<title>Project Review</title>	
</head>
<body>


      <div class="container">

      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">pmo<font color="blue">Digit</font></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="temp/search.jsp">Search</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Templates
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="temp/pcreation.jsp">Project</a>
          <a class="dropdown-item" href="temp/pr_home.jsp">Project Review</a>
           <a class="dropdown-item" href="temp/pr_home.jsp">Project Closure</a>
          <a class="dropdown-item" href="temp/qa_home.html">Quality Assurance</a>
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
       <li class="dropdown order-1">
                    <button type="button" id="dropdownMenu1" id="navbarDropdown" data-toggle="dropdown" class="btn btn-primary dropdown-toggle">Login <span class="caret"></span></button>
                    <ul class="dropdown-menu dropdown-menu-right">
                       <li class="px-3 py-2">
                           <form class="form" role="form">
                                <div class="form-group">
                                    <input id="emailInput" placeholder="Email" class="form-control form-control-sm" type="text" required="required">
                                </div>
                                <div class="form-group">
                                    <input id="passwordInput" placeholder="Password" class="form-control form-control-sm" type="text" required="required">
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
    </ul>
   
  </div>
</nav>

 	
     
		
        <c:if test = "${form.resultat=='congraluations, you have now successfully created an account.'}">
         		<div class="alert alert-success mt-2" role="alert" >
	  				${ form.resultat }
				</div>	
			
       </c:if>
       
       	<c:if test = "${form.resultat=='registration failed.'}">
         		<div class="alert alert-warning mt-2" role="alert" >
	  				${ form.resultat }
				</div>
			
       </c:if>
 <div class="row">
        <div class="col-md-12">
            <h2 class="text-center mb-5 mt-4">User registration</h2>
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card border-secondary">
                        <div class="card-header">
                            <h3 class="mb-0 my-2">Sign Up</h3>
                        </div>
                        <div class="card-body">
                        
      			
                            <form method="POST" class="form" role="form" autocomplete="off" action="/pmodigit/register">
                                <div class="form-group">
                                    <label for="inputName">Name</label>
                                    <input type="text" value="${ user.fullname }" name="fullname" class="form-control" id="inputName" placeholder="full name">
                                    <span class="text-danger">${ form.erreurs['fullname'] }</span>
                                </div>
                                  <div class="form-group">
                                    <label for="inputName">Username</label>
                                    <input type="text" name="username" value="${ user.username }" class="form-control" id="inputName" placeholder="username">
                                    <span class="text-danger">${ form.erreurs['username'] }</span>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3">Email</label>
                                    <input type="email" value="${ user.email }" name="email" class="form-control" id="inputEmail3" placeholder="email@gmail.com" required="">
                                	<span class="text-danger">${ form.erreurs['email'] }</span>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3">Password</label>
                                    <input type="password" name="password" class="form-control" id="inputPassword3" placeholder="password" title="At least 6 characters with letters and numbers" required="">
                                    <span class="text-danger">${ form.erreurs['password'] }</span>
                                </div>
                                <div class="form-group">
                                    <label for="inputVerify3">Password Confirmation</label>
                                    <input type="password" name="passwordconfirm" class="form-control" id="inputVerify3" placeholder="password (again)" required="">
                                    <span class="erreur">${ form.erreurs['passwordconfirm'] }</span>
                                </div>
                                <div class="form-group">
                                   <a href="#"> <button type="submit" class="btn btn-primary btn-lg float-right" id="register">Register</button> </a>
                                </div>
                                
                                 <p class="${empty form.erreurs ? 'succes' : 'erreur' }">${ form.resultat }</p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!--/row-->

        </div>
        <!--/col-->
    </div>
    <!--/row-->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2018 Dassault Data Service, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer> 
    </div><!-- /.container -->
    

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script type="text/javascript" src="/pmodigit/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/pmodigit/js/myjs.js"></script>
</body>
</html>