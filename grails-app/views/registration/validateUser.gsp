<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<g:render template="/navbarTemplate" model="[nav_online: 'active']"/>

<div class="container">

    <div class="row">
        <div class="span8">
            <g:if test="${error == true}">
                <h2>Validation error</h2>
                <br/>
                <p>The provided code was not valid!</p>


                <form>
                    Re-enter code: <g:field type="text" name="code" id="code" required="true" class="span6"/><br/>
                    <br/>
                    <g:actionSubmit value="Validate account" controller="registration" action="validate"/>
                </form>
            </g:if>
            <g:else>
                <h2>Account validated</h2>
                <br/>
                <p>Your account was verified, you may now <g:link controller="user" action="index">Log in</g:link></p>
            </g:else>
        </div>

    </div>

</body>
</html>