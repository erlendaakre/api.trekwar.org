<%@ page contentType="text/html;charset=UTF-8" %>
<head>
    <meta name="layout" content="main"/>
</head>
<body>


<g:render template="/navbarTemplate" model="[nav_online: 'active']"/>

<div class="container">

<div class="row">

    <g:render template="/loginTemplate" />

    <div class="span5">
    <g:if test="${flash.message}">
        <h3>Message:</h3>
        <%-- <h3 style="color:red">Error:</h3> --%>
        <div><b>${flash.message}</b></div>
    </g:if>
    </div>

</div>


</body>
</html>