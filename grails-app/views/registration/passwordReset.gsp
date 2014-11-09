<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<g:render template="/navbarTemplate" model="[nav_online: 'active']"/>

<div class="container">

    <div class="row">
        <div class="span12">
            <g:if test="${newRequest == true}">
                <h2>Password reset</h2>
                <br/>
                <p>To reset your password, please enter your email address used to register the account</p><br/>

                <form>
                    E-mail Address: <g:field type="email" name="email" id="email" required="true" class="span6"/><br/>
                    <br/>
                    <p>A secret link will be sent to you by email, and you may use that link within the next 30 minutes to change your password</p>
                    <g:actionSubmit value="Create password reset request" controller="registration" action="passwordReset" class="btn btn-primary btn-large" style="margin-top: 10px"/>
                </form>
            </g:if>

            <g:else>
                <h2>Password reset</h2>
                <br/>
                <p>If you provided a valid email address, a new message with the password reset link should shortly.</p>
                <p>Remember: the link is only valid for 30 minutes</p>
            </g:else>
        </div>

    </div>

</body>
</html>