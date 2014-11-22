<%@ page contentType="text/html;charset=UTF-8" %>
<head>
    <meta name="layout" content="main"/>
    <asset:javascript src="password.js"/>
    <asset:javascript src="sha512.js"/>
</head>
<body>


<g:render template="/navbarTemplate" model="[nav_online: 'active']"/>

<div class="container">

<div class="row">

    <g:render template="/loginTemplate" />

    <div class="span5">
    <g:if test="${flash.message}">
        <div class="alert alert-${flash.type}" role="alert" id="errordiv" id="errordiv" style="margin-top: 35px">
            <strong>${flash.type}!</strong><br/>${flash.message}
        </div>
        <script>
            $('#errordiv').hide(0).fadeIn(1500);
        </script>
    </g:if>
    </div>

</div>


</body>
</html>