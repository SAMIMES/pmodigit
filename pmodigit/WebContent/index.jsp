
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
 	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link  href="/pmodigit/css/bootstrap.min.css" rel="stylesheet">
	<link  href="/pmodigit/css/all.min.css" rel="stylesheet">
	<link  href="/pmodigit/css/style.css" rel="stylesheet">
	

        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>

$(function () {

    $("#bugs").autocomplete({
        source: "Titles",
        minLength: 1,
    });
});
</script>


    

<title>Project Review</title>	
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
                                    <small><a href="/pmodigit/connexion/register.jsp">Register</a></small>
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
 
 
<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/pmodigit/img/la.jpg" alt="Los Angeles">
    </div>
    <div class="carousel-item">
      <img src="/pmodigit/img/chicago.jpg" alt="Chicago">
    </div>
    <div class="carousel-item">
      <img src="/pmodigit/img/ny.jpg" alt="New York" >
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
      <!-- /END THE FEATURETTES -->


    
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2018 Dassault Data Service, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer> 
    </div><!-- /.container -->

<!--  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script> -->
<script type="text/javascript" src="/pmodigit/js/bootstrap.min.js"></script>
</body>
</html>