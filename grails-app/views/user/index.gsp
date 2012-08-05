<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
  <title></title>
</head>
<body>
<div id="page-body" role="main">
    <h1>TrekwarOnline</h1>
    Welcome ${session.user.firstname}
    <br/>
    <br/>
    DEBUG: userID=${session.user.id}, username=${session.user.username}, email_verified=${session.user.emailVerifiedDate}
    <br/>
    <br/>
    TODO: Link to change password

    <br/>
    <br/>
    <g:link action="logout">Log out</g:link>
</div>
</body>
</html>