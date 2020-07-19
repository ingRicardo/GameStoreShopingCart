<html>
<head>
<title>New User</title>
    <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
        rel="stylesheet">
        <link href="css/custom.css"
        rel="stylesheet">
</head>
<body>
	<div class="container">
		<!-- As a heading -->
	<nav class="navbar navbar-light bg-light" id="myHeader">
	  <span id="idhedtext" class="navbar-brand mb-0 h1 ">Registration</span>
	</nav>
		
     <div  class="errclass">${errorMessage}</div>
      	<div class = "registerform">
		    <form method="post">
		      <div class="form-group">
		    	<label for="namelb">Name :</label>
		        <input class="form-control"  type="text" name="name" />
		       </div>
		       <div class="form-group">
		    	<label for="lastnamelb">Last Name :</label>
		        <input class="form-control"  type="text" name="lastname" />
		       </div>
		       <div class="form-group">
		    	<label for="agelb">Age :</label>
		        <input class="form-control"  type="text" name="age" />
		       </div>
		        <div class="form-group">
		    	<label for="emaillb">e-mail :</label>
		        <input class="form-control"  type="text" name="email" />
		       </div>
		       
		       <div class="form-group">
		        <label for="passlb">Password :</label>
		        <input class="form-control" type="password" name="password" /> 
		       </div>
		        <div class="form-group">
		        <label for="bithdaylb">Birthday :</label>
		        <input class="form-control" type="text" name="birthday" /> 
		       </div>
		       
		        <input class="btn btn-primary" type="submit" />
		        <button class="btn btn-primary" onclick="login()"  type="button" >back </button>
		    </form>
		  </div>
    </div>
</body>
<script src="/js/custom.js"></script>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</html>