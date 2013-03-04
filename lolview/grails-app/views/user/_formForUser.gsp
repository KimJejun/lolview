<html>
<head>
<meta name='layout' content='main' />
<title><g:message code="springSecurity.login.title" /></title>
<style type='text/css' media='screen'>
.form-signin {
	max-width: 300px;
	padding: 19px 29px 29px;
	margin: 0 auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .form-signin-heading,.form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin input[type="text"],.form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}

.control-group {
	margin-bottom: 0px
}
</style>
</head>

<body>
	<div class='inner'>
		<g:if test='${flash.message}'>
			<div class='login_message'>
				${flash.message}
			</div>
		</g:if>


		<g:form action='save' method='POST' id='loginForm' class='form-signin' autocomplete='off'>
			<g:hiddenField name="renderView" value="_formForUser"/>
			<h2 class="form-signin-heading">Please Registor</h2>

			<div
				class="control-group ${hasErrors(bean: user, field: 'username', 'error')} ">
				<g:textField name="username" value="${user?.username}"
					placeholder="Email address" />
				<g:hasErrors bean="${user}">
					<g:renderErrors bean="${user}" as="list" field="username" />
				</g:hasErrors>
			</div>
			<div
				class="control-group ${hasErrors(bean: user, field: 'password', 'error')} ">
				<g:textField name="password" value="${user?.password}" placeholder="Password" />
				<g:hasErrors bean="${user}">
					<g:renderErrors bean="${user}" as="list" field="password" />
				</g:hasErrors>
			</div>
			<div
				class="control-group ${hasErrors(bean: user, field: 'summonerName', 'error')} ">
				<g:textField name="summonerName" value="${user?.summonerName}"
					placeholder="소환사이름" />
			</div>
			<button class="btn btn-large btn-primary" type="submit">Registor</button>
			<g:link controller="main">취소</g:link>
		</g:form>

	</div>
	<script type='text/javascript'>
		$(function() {
			$('#username').focus();
		})
	</script>
</body>
</html>
