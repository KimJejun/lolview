<!DOCTYPE html>
<html lang="en">
<head>
<r:require modules="bootstrap" />
<r:layoutResources />
<style type="text/css">
body {
	padding-top: 20px;
	padding-bottom: 40px;
}

/* Custom container */
.container-narrow {
	margin: 0 auto;
	max-width: 1000px;
}

.container-narrow>hr {
	margin: 30px 0;
}

/* Main marketing message and sign up button */
.jumbotron {
	margin: 60px 0;
	text-align: center;
}

/* Supporting marketing content */
.marketing {
	margin: 60px 0;
}

.marketing p+h4 {
	margin-top: 28px;
}
.lable-win {
	color: blue;font-weight: bold;display: block;font-size: 1.3em;
}
.lable-lose {
	color: red;font-weight: bold;display: block;
}
.lable-kill {
	color: #B22222;font-weight: bold;font-size: 1.2em;
}
.lable-dead {
	color: #602F6B;font-weight: bold;font-size: 1.1em;
}
.lable-normal-bold {
	color:black;font-weight: bold;display: block;
}
.lable-gold {color: #B8860B;font-weight: bold;font-size: 1.1em;}
</style>
</head>
<body>
	<div class="container-narrow">
		<div class="masthead" id="masterhead">
			<ul class="nav nav-pills pull-right">
				<li class="active"><g:link controller="main">Home</g:link> </li>
				<li><g:link controller="main" action="about">About</g:link></li>
				<li><g:link controller="main" action="contact">Contact</g:link></li>
				<li><g:link controller="main" action="matchInfo">대회정보</g:link></li>
			</ul>
			<h3 class="muted">LOL Stats</h3>
		</div>
		<hr>
		
		<g:layoutHead/>
		<g:layoutBody />
		<r:layoutResources />
		
		<hr>
		<div class="footer">
			<p>&copy; Company 2013</p>
		</div>
	</div>
</body>
</html>