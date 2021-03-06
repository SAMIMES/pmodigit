<!DOCTYPE html>
<html>
<head>
 	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link  href="../css/bootstrap.min.css" rel="stylesheet">
	<link  href="../css/all.min.css" rel="stylesheet">
	<link  href="../css/logincss.css" rel="stylesheet">


    

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
        <a class="nav-link" href="../">Home <span class="sr-only">(current)</span></a>
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
      
     
    </ul>
    <!-- Navbar Search -->
       <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0" method="POST" action="list">
	        <div class="input-group">
	          <input type="text" class="form-control" placeholder="Search by project title..." aria-label="Search" aria-describedby="basic-addon2">
	          <div class="input-group-append">
	            <button class="btn btn-primary" type="submit">
	              <i class="fas fa-search"></i>
	            </button>
	          </div>
	        </div>
	      </form>
  </div>
</nav>


<h1 class="form-heading">login Form</h1>
<div class="login-form">
<div class="main-div">
    <div class="panel">
   <h2>User Login</h2>
   <p>Please enter your email and password</p>
   </div>
    <form method="POST" action="/pmodigit/login">

        <div class="form-group">


            <input name="username" type="text" class="form-control" id="inputEmail" placeholder="Username">

        </div>

        <div class="form-group">

            <input name="password" type="password" class="form-control" id="inputPassword" placeholder="Password">

        </div>
        <div class="forgot">
        <a href="reset.html">Forgot password?</a>
</div>
        <button type="submit" class="btn btn-primary">Login</button>

    </form>
    </div>
</div>


    
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2018 Dassault Data Service, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer> 
    </div><!-- /.container -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</body>
</html>