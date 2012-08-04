<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>

<body>
<div id="page-body" role="main">
    <h1>User Registration</h1>

    <g:hasErrors bean="${user}">
        <br/>

        <div id="form-errorlist">
            <g:renderErrors bean="${user}"/>
        </div>
    </g:hasErrors>

    <br/>

    <g:form>

        <div class='fieldcontain required'>
            <label for='username'>Username <span class='required-indicator'>*</span></label>
            <g:field type="text" name="username" id="username" required="true" minlength="5" maxlength="30" value="${username}"/>
        </div>

        <div class='fieldcontain required'>
            <label for='firstname'>First name <span class='required-indicator'>*</span></label>
            <g:field type="text" name="firstname" id="firstname" required="true" value="${firstname}"/>
        </div>

        <div class='fieldcontain required'>
            <label for='lastname'>Last name <span class='required-indicator'>*</span></label>
            <g:field type="text" name="lastname" id="lastname" required="true" value="${lastname}"/>
        </div>


        <div class='fieldcontain required'>
            <label for='email'>E-mail address <span class='required-indicator'>*</span></label>
            <g:field type="email" name="email" required="true" value="${emailverification}"/>
        </div>

        <div class='fieldcontain'>
            <label for='country'>Country</label>
            <g:countrySelect name="country" value="${country}"
                             noSelection="['': '-Choose your country-']"/>
        </div>

        <br/>
        <br/>

        <div class='fieldcontain required'>
            <label for='password'>Password <span class='required-indicator'>*</span></label>
            <g:field type="password" name="password" id="password" required="true"/>
        </div>

        <div class='fieldcontain required'>
            <label for='confirmPassword'>Confirm password <span class='required-indicator'>*</span></label>
            <g:field type="password" name="confirmPassword" id="confirmPassword" required="true"/>
        </div>

        <br/>

        <g:actionSubmit value="Register user" controller="registration" action="doRegister"/>

    </g:form>
</div>
</body>
</html>