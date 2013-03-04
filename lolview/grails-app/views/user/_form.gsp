<%@ page import="kr.lolview.security.User" %>

<g:hiddenField name="renderView" value="_form"/>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required control-group">
	<label for="username" class="control-label">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:textField name="username" required="" value="${userInstance?.username}"/>
    </div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required control-group">
	<label for="password" class="control-label">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:passwordField name="password" maxlength="20" required="" value="${userInstance?.password}"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'summonerName', 'error')} control-group">
	<label for="summonerName" class="control-label">
		<g:message code="user.summonerName.label" default="Summoner Name" />
		
	</label>
	<div class="controls">
		<g:textField name="summonerName" maxlength="15" value="${userInstance?.summonerName}"/>
	</div>
</div>
<sec:ifAllGranted roles="ROLE_ADMIN">
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} control-group">
	<label for="accountExpired" class="control-label">
		<g:message code="user.accountExpired.label" default="Account Expired" />
		
	</label>
	<div class="controls">
		<g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} control-group">
	<label for="accountLocked" class="control-label">
		<g:message code="user.accountLocked.label" default="Account Locked" />
		
	</label>
	<div class="controls">
		<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'authorities', 'error')} control-group">
	<label for="authorities" class="control-label">
		<g:message code="user.authorities.label" default="Authorities" />
		
	</label>
	<div class="controls">
		<g:select name="authorities" from="${kr.lolview.security.Role.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.authorities*.id}" 
			optionValue="authority" class="many-to-many"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} control-group">
	<label for="enabled" class="control-label">
		<g:message code="user.enabled.label" default="Enabled" />
		
	</label>
	<div class="controls">
		<g:checkBox name="enabled" value="${userInstance?.enabled}" />
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} control-group">
	<label for="passwordExpired" class="control-label">
		<g:message code="user.passwordExpired.label" default="Password Expired" />
		
	</label>
	<div class="controls">
		<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />
	</div>
</div>
</sec:ifAllGranted>

