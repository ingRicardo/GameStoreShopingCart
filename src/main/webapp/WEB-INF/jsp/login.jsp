<html>
<head>
<title>First Web Application</title>
    <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
        rel="stylesheet">
        <link href="css/custom.css"
        rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="jumbotron">
		  <h1 class="display-4">Game Store</h1>
		  <p class="lead">This is a simple portal, where you can buy video games (Demo/Under construction ).</p>
		  <hr class="my-4">
		  <p>You need to register here so that It can give you access to the video game list.</p>
		  <button class="btn btn-primary btn-lg" href="#"  onclick="test()"  role="button">Register</button>
		</div>
	<div  class="errclass">${errorMessage}</div>
	<div class = "loginform">
	    
	    <form method="post">
	      <div class="form-group" style="height: 50px;" >
	    	<label for="namelb">Name :</label>
	        <input class="form-control"  type="text" name="name" />
	      </div>
	       <div class="form-group" style="height: 50px;">
	        <label for="passlb">Password :</label>
	        <input class="form-control" type="password" name="password" /> 
	       </div>
	       <div class="form-group" style="height: 50px;">
	        <input class="btn btn-primary" type="submit" />
	        </div>
	    </form>
	    </div>
    </div>
</body>
<script src="/js/custom.js"></script>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</html>