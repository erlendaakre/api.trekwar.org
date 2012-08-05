<%--
  Created by IntelliJ IDEA.
  User: Enterprise
  Date: 05.08.12
  Time: 01:47
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="main"/>
  <title></title>
</head>
<body>
<div id="page-body" role="main">
      <h1>Login</h1>

    <g:if test="${flash.message}">
        <div class="error"><b>${flash.message}</b></div>
    </g:if>

<g:form>

    <div class='fieldcontain required'>
        <label for='username'>Username <span class='required-indicator'>*</span></label>
        <g:field type="text" name="username" id="username" required="true" minlength="5" maxlength="30" value="${username}"/>
    </div>

    <div class='fieldcontain required'>
        <label for='password'>Password <span class='required-indicator'>*</span></label>
        <g:field type="password" name="password" id="password" required="true"/>
    </div>

    <g:actionSubmit value="Log in" controller="user" action="login"/>

</g:form>

    <br/>
<g:link controller="registration" action="index">Create new account</g:link><br/>
<g:link controller="registration" action="passwordReset">Reset password</g:link>

</div>
</body>
</html>