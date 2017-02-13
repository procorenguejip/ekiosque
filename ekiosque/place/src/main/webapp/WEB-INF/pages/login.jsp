<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Bootstrap 3 Admin</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="/resources/css/login.css" rel="stylesheet">
		<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
		<link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
		
		
	</head>
	<body>
	
		<div class="container">
		    <div class="row">
		        <div class="col-md-12">
		            <div class="pr-wrap">
		                <div class="pass-reset">
		                    <label>
		                        Enter the email you signed up with</label>
		                    <input type="email" placeholder="Email" />
		                    <input type="submit" value="Submit" class="pass-reset-submit btn btn-success btn-sm" />
		                </div>
		            </div>
		            <div class="wrap">
		                <p class="form-title">
		                    Sign In</p>
		                <form class="login">
		                <input type="text" placeholder="Username" />
		                <input type="password" placeholder="Password" />
		                <input type="submit" value="Sign In" class="btn btn-success btn-sm" />
		                <div class="remember-forgot">
		                    <div class="row">
		                        <div class="col-md-6">
		                            <div class="checkbox">
		                                <label>
		                                    <input type="checkbox" />
		                                    Remember Me
		                                </label>
		                            </div>
		                        </div>
		                        <div class="col-md-6 forgot-pass-content">
		                            <a href="javascript:void(0)" class="forgot-pass">Forgot Password</a>
		                        </div>
		                    </div>
		                </div>
		                </form>
		            </div>
		        </div>
		    </div>
		</div>
		
	<!-- script references -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="/resources/js/bootstrap.min.js"></script>
		<script type="text/javascript">
		
		$(document).ready(function () {
		    $('.forgot-pass').click(function(event) {
		      $(".pr-wrap").toggleClass("show-pass-reset");
		    }); 
		    
		    $('.pass-reset-submit').click(function(event) {
		      $(".pr-wrap").removeClass("show-pass-reset");
		    }); 
		});
		</script>
	</body>
</html>