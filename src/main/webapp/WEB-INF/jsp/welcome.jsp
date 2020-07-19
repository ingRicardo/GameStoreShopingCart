<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>First Web Application</title>
  
 
 <!--     <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
        rel="stylesheet"> 
       -->

        
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap4.min.css"/>
 <link href="css/custom.css" rel="stylesheet">

</head>
<body>

	<div class="container">
		<nav class="navbar navbar-light bg-light" id="myHeader" >
	  		
 		 	<div class="col-sm-12 col-md-4 headtitle"  id="greeting" > Welcome ${name}!!</div>
    		<div class="col-sm-12 col-md-8 headtitle" style="background-color:#eeeeec;" align="right" > 
    			<!--  <a href="/list-todos">Click here</a> to manage your todo's.-->
    			Have a nice shopping!
    			<button class="btn btn-primary" onclick="login()"  type="button" >logout </button>
    		</div>
		</nav>

 	<div class = "sec1">
 		<div class="" >
			<h3>All Games Available:</h3>
			<table class="table table-striped table-bordered" style="width:100%" id="idtable"> 
			    <!-- here should go some titles... -->
			    <thead>
				    <tr>
				        <th scope="col" >ID</th>
				        <th scope="col">Title</th>
				        <th scope="col">Cost</th>
				        <th scope="col">Category</th>
				        <th scope="col">Option</th>
				    </tr>
			    </thead>
			     <tbody>
				    <c:forEach  items="${games}" var="game">
				    <tr  >
				        <td >
				            <c:out value="${game.id}" />
				        </td>
				        <td >
				            <c:out value="${game.name}" />
				        </td>
				        <td>
				            <c:out value="${game.cost}" />
				        </td>
				        <td>
				            <c:out value="${game.category}" />
				        </td>
				        <td><a  class='addbtn'ref='#'>Get</a></td>
				    </tr>
				    </c:forEach>
			     </tbody>
			</table>
		 </div>
    </div>
		
	<div class = "sec2"  >
		 	<div id="totprice"  class=""></div>
			<div id="prodetail" class=" " ></div>
			
		 	<table id="myTable">
 
		 	
			  
 
			</table>
	</div>
	
	<!--  <div class = "sec3"></div> -->
	
	<div class = "foot"></div>
	
	</div>

</body>


<script src="/js/JQuery351.js"></script>
<script src="/js/jquery.dataTables.min.js"></script>
<script src="/js/dataTables.bootstrap4.min.js"></script>

<!-- <script src="webjars/jquery/1.9.1/jquery.min.js"></script> -->

<script src="/js/custom.js"></script>
<script src="/js/welcome.js"></script>
<!--  <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>-->
</html>