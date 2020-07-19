<html>
<head>
<title>User Validation</title>

    <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
        rel="stylesheet">
        <link href="css/custom.css"
        rel="stylesheet">
</head>
<body>	
	<div class="container">
	
		<nav class="navbar navbar-light bg-light" id="myHeader">
	  		<span id="idhedtext" class="navbar-brand mb-0 h1 ">Your Information</span>
		</nav>
		
		<div class = "dataform">
			<div class="form-group" >
				<label for="namelb">Name :</label>
				 ${name}
			</div> 
		    <div class="form-group">
		    	<label for="lastnamelb">Last Name :</label>
		    	 ${lastname}
		    </div>
		    <div class="form-group">
		    	<label for="passlb">Password :</label>
		    	 ${password}
		    </div>
		    <div class="form-group">
		    	<label for="agelb">Age :</label>
		    	 ${age}
		    </div>
		    <div class="form-group">
		    	<label for="emaillb">e-mail :</label>
		    	 ${email }
	    	</div>
	    	<div class="form-group">
	    	
	    		<button class="btn btn-primary" onclick="login()"  type="button" >login </button>
	    		
	    	</div>
	    </div>
    </div>
</body>

<script src="/js/custom.js"></script>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</html>