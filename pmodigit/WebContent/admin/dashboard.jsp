
<!DOCTYPE html>
<%@page import="entity.Statistics"%>
<%@page import="entity.ProjectReview"%>
<%@page import="java.util.List"%>
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
        <a class="nav-link disabled" href="#"><i class="fas fa-fw fa-tachometer-alt"></i>Dashboard</a>
      </li>
       <!-- Navbar Search -->
       
       <li>
       <form class="pl-5" method="POST" action="list">
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
                                
                                <div class="form-group text-center">
                                    <small><a href="/pmodigit/connexion/register.jsp">Register</a></small>
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


    

<div class="row mt-5">

           <div class="col-4">
              <div class="card card-statistics">
                <div class="card-body">
                  <div class="clearfix">
                    <div class="float-left">
                      <i class="mdi mdi-cube text-danger icon-lg"></i>
                    </div>
                    <div class="float-right">
                      <p class="mb-0 text-right">Total Projects</p>
                      <div class="fluid-container">
                        <h3 class="font-weight-medium text-right mb-0">${nbProjects}</h3>
                      </div>
                    </div>
                  </div>
                
                </div>
              </div>
            </div>
            
              <div class="col-4">
              <div class="card card-statistics">
                <div class="card-body">
                  <div class="clearfix">
                    <div class="float-left">
                      <i class="mdi mdi-cube text-danger icon-lg"></i>
                    </div>
                    <div class="float-right">
                      <p class="mb-0 text-right">Total Project Reviews</p>
                      <div class="fluid-container">
                        <h3 class="font-weight-medium text-right mb-0"> 35 </h3>
                      </div>
                    </div>
                  </div>
              
                </div>
              </div>
            </div>
            
              <div class="col-4">
              <div class="card card-statistics">
                <div class="card-body">
                  <div class="clearfix">
                    <div class="float-left">
                      <i class="mdi mdi-cube text-danger icon-lg"></i>
                    </div>
                    <div class="float-right">
                      <p class="mb-0 text-right">Total Quality Assurance</p>
                      <div class="fluid-container">
                        <h3 class="font-weight-medium text-right mb-0">42</h3>
                      </div>
                    </div>
                  </div>
                 
                </div>
              </div>
            </div>
</div>
            
<div class="row mt-5">            

			 <div class="col-4">
			   <div class="card mb-3">
                <div class="card-header">
                  <i class="fas fa-chart-pie"></i>
                  Domains  </div>
			 <div class="card-body">
			   <canvas id="myChart" width="100%" height="100"></canvas>
			</div>
			<div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
              </div>
			</div>


 			<div class="col-4">
              <div class="card mb-3">
                <div class="card-header">
                  <i class="fas fa-chart-pie"></i>
                  Project Reviews Status</div>
                <div class="card-body">
                  <canvas id="myPieChart" width="100%" height="100"></canvas>
                </div>
                <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
              </div>
          </div>
          
          	<div class="col-4">
              <div class="card mb-3">
                <div class="card-header">
                  <i class="fas fa-chart-pie"></i>
                  Quality Assurance Status</div>
                <div class="card-body">
                  <canvas id="myPieChartQA" width="100%" height="100"></canvas>
                </div>
                <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
              </div>
          </div>

</div>




<div class="row">
<div class="col-6">
  <div class="card mb-3">
                <div class="card-header">
                  <i class="fas fa-chart-pie"></i> Action follow-up 2018</div>
<div class="card-body">
    <canvas id="bar-chart" width="100%" height="100%<"></canvas>
  </div>

</div>
 </div>   
 </div>
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2018 Dassault Data Service, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer> 
    </div><!-- /.container -->

<!--  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script> -->
<script type="text/javascript" src="/pmodigit/js/Chart.js"></script>
<script type="text/javascript" src="/pmodigit/js/bootstrap.min.js"></script>
<script>
var ctx = document.getElementById("myChart").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ["Scope", "Schedule", "Communication", "Risk", "Quality","Team","Budget"],
        datasets: [{
            label: '# of Votes',
            data: [18, 8, 15, 12, 16, 20],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});
</script>
<script >
//Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

//Pie Chart Example
var ctx = document.getElementById("myPieChart");
var myPieChart = new Chart(ctx, {
type: 'pie',
data: {
 labels: ["Closed", "Open"],
 datasets: [{
	
	 
   data: [8, 27],
   backgroundColor: ['#dc3545', '#28a745'],
 }],
},
});


//Pie Chart Example
var ctx = document.getElementById("myPieChartQA");
var myPieChart = new Chart(ctx, {
type: 'pie',
data: {
labels: ["Closed", "Open"],
datasets: [{
	
	 
 data: [27, 15],
 backgroundColor: ['#dc3545', '#28a745'],
}],
},
});
</script>
 <script>
 var numberWithCommas = function(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	  };

	var dataPack1 = [450, 455, 300, 300, 170, 177, 160, 600, 650, , , ];
	var dataPack2 = [100, 67, 130, 120, 160, 200, 270, 100, 200, , , ];
	var dates = ["January", "February", "March", "April", "May", "June", 
	  				 "July", "August", "September", "October", "November", "December"];

	// Chart.defaults.global.elements.rectangle.backgroundColor = '#FF0000';

	var bar_ctx = document.getElementById('bar-chart');
	var bar_chart = new Chart(bar_ctx, {
	    type: 'bar',
	    data: {
	        labels: dates,
	        datasets: [
	        {
	            label: 'done',
	            data: dataPack1,
							backgroundColor: "rgba(55, 160, 225, 0.7)",
							hoverBackgroundColor: "rgba(55, 160, 225, 0.7)",
							hoverBorderWidth: 2,
							hoverBorderColor: 'lightgrey'
	        },
	        {
	            label: 'Delayed',
	            data: dataPack2,
							backgroundColor: "rgba(225, 58, 55, 0.7)",
							hoverBackgroundColor: "rgba(225, 58, 55, 0.7)",
							hoverBorderWidth: 2,
							hoverBorderColor: 'lightgrey'
	        },
	        
	        
	        ]
	    },
	    options: {
	     		animation: {
	        	duration: 10,
	        },
	        tooltips: {
						mode: 'label',
	          callbacks: {
	          label: function(tooltipItem, data) { 
	          	return data.datasets[tooltipItem.datasetIndex].label + ": " + numberWithCommas(tooltipItem.yLabel);
	          }
	          }
	         },
	        scales: {
	          xAxes: [{ 
	          	stacked: true, 
	            gridLines: { display: false },
	            }],
	          yAxes: [{ 
	          	stacked: true, 
	            ticks: {
	        			callback: function(value) { return numberWithCommas(value); },
	     				}, 
	            }],
	        }, // scales
	        legend: {display: true}
	    } // options
	   }
	);
  </script>
</body>
</html>