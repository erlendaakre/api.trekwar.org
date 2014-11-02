<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<g:render template="/navbarTemplate" model="[nav_online: 'active']"/>

<div class="container">
    <h1>TrekwarOnline</h1>
    Welcome ${session.user.username}
    <br/>
    <br/>
    DEBUG: userID=${session.user.id}, username=${session.user.username}, email_verified=${session.user.emailVerifiedDate}
    <br/>
    <br/>
    TODO: Link to change password

    <br/>
    <br/>
    <g:link action="logout">Log out</g:link>

</body>
</html>