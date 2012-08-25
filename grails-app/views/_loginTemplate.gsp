<div class="span3">
    <h2>Trekwar Online</h2>

    <g:form controller="user">
        <g:field type="text" name="username" id="username" required="true" minlength="5" maxlength="250" placeholder="Username" class="span3"/>
        <g:field type="password" name="password" id="password" required="true" placeholder="Password" class="span3"/>
        <br/>
        <g:actionSubmit value="Sign in" controller="user" action="login" class="btn" style="float: right;"/>
        <p><g:link controller="registration" action="passwordReset">Forgot password</g:link></p>
        <p><g:link controller="registration" action="index">Register new account</g:link></p>
    </g:form>
</div>