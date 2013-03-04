
<%@ page import="kr.lolview.security.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<style type="text/css">
		</style>
	</head>
	<body>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

			<div class="form-horizontal">
				<g:if test="${userInstance?.username}">
				<div class="control-group">
					<label class="control-label" for="inputEmail"><g:message code="user.username.label" default="Username" /></label>
					<div class="controls">
						<span class="property-value" aria-labelledby="username-label"><strong><g:fieldValue bean="${userInstance}" field="username"/></strong></span>
					</div>
				</div>
				</g:if>
				
				<g:if test="${userInstance?.summonerName}">
				<div class="control-group">
					<label class="control-label" for="inputEmail"><g:message code="user.summonerName.label" default="Summoner Name" /></label>
					<div class="controls">
						<span class="property-value" aria-labelledby="summonerName-label"><g:fieldValue bean="${userInstance}" field="summonerName"/></span>
					</div>
				</div>
				</g:if>
			</div>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${userInstance?.id}" />
					<g:link class="edit" action="edit" id="${userInstance?.id}" class="btn btn-small btn-primary"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-small btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
