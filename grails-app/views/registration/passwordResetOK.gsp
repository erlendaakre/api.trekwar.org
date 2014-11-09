<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<g:render template="/navbarTemplate" model="[nav_online: 'active']"/>

<div class="container">

    <div class="row">
        <div class="span8">
            <h2>Password reset</h2>
            <br/>
            <p>Your password was successfully changed, you may now <g:link controller="user" action="index">Log in</g:link></p>
        </div>

    </div>

</body>
</html>