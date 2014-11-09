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
            <h2>Registration successful</h2>
            <br/>
            An email will be sent to ${email} with a confirmation link, you may log in after your email address has been verified
        </div>

    </div>

</body>
</html>