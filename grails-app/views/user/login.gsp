<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="main"/>
  <title></title>
</head>
<body>

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