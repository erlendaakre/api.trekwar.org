<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
  <title></title>
</head>
<body>
<div id="page-body" role="main">
<g:if test="${error == true}">
    <h1>Validation error</h1>
    <br/>
    The provided code was not valid!

    <form>
    Re-enter code: <g:field type="text" name="code" id="code" required="true"/><br/>
    <br/>
    <g:actionSubmit value="Validate account" controller="registration" action="validate"/>
    </form>
</g:if>
<g:else>
    <h1>Account validated</h1>
    <br/>
    Your account was verified, you may now <g:link controller="UserPortal" action="login">Log in</g:link>
</g:else>
</div>
</body>

</html>