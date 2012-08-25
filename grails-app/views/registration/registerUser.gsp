<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>

<body>

<g:render template="/navbarTemplate" model="[nav_online: 'active']"/>

<div class="container">

    <h1>User Registration</h1>

    <g:hasErrors bean="${user}">
        <br/>

        <div id="form-errorlist">
            <g:renderErrors bean="${user}"/>
        </div>
    </g:hasErrors>

    <br/>

    <g:form>
        <div class="row">
            <div class="span4">
                <h2>Required</h2>

                <div class='fieldcontain required'>
                    <g:field type="text" name="username" id="username" required="true" minlength="5" maxlength="30" placeholder="Username"/>
                </div>

                <div class='fieldcontain required'>
                    <g:field type="email" name="email" required="true" value="${emailverification}" placeholder="E-mail address"/>
                </div>

                <div class='fieldcontain required'>
                    <g:field type="password" name="password" id="password" required="true" placeholder="Password"/>
                </div>

                <div class='fieldcontain required'>
                    <g:field type="password" name="confirmPassword" id="confirmPassword" required="true" placeholder="Confirm password"/>
                </div>

            </div>


            <div class="span4">
                <h2>Optional</h2>
                <div class='fieldcontain'>
                    <g:field type="text" name="firstname" id="firstname" value="${firstname}" placeholder="First name"/>
                </div>

                <div class='fieldcontain'>
                    <g:field type="text" name="lastname" id="lastname" value="${lastname}" placeholder="Last name"/>
                </div>

                <div class='fieldcontain'>
                    <g:countrySelect name="country" value="${country}"
                                     noSelection="['': '-Choose your country-']"/>
                </div>

                <div class="span3">
                    <g:actionSubmit value="Register user" controller="registration" action="doRegister" class="btn btn-primary btn-large" style="float: right; margin-top: 10px"/>
                </div>
            </div>



        </div>
    </g:form>


</body>
</html>