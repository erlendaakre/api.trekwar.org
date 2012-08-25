<%@ page contentType="text/html;charset=UTF-8" %>
<head>
    <meta name="layout" content="main"/>
</head>
<body>


<g:render template="/navbarTemplate" model="[nav_home: 'active']"/>

<div class="container">

<div class="row">


    <g:render template="/loginTemplate" />

    <div class="span5">
    <g:if test="${flash.message}">
        <div class="error"><b>${flash.message}</b></div>
    </g:if>
    </div>

</div>


</body>
</html>