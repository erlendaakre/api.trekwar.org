<div class="span3">
    <h2>Trekwar Online</h2>

    <script>
        $(window).load(function() {
            $("#loginButton").bind("click", function (event) {
                var hash = hashPassword($("#username").val(), $("#password").val());
                $("#password").val(hash);
            });
        });
    </script>

    <g:form controller="user">
        <g:field type="text" name="username" id="username" required="true" minlength="5" maxlength="250" placeholder="Username" class="span3"/>
        <g:field type="password" name="password" id="password" required="true" placeholder="Password" class="span3"/>
        <br/>
        <g:actionSubmit value="Sign in" id="loginButton" controller="user" action="login" class="btn btn-primary btn-large" style="float: right;"/>
        <p><g:link controller="registration" action="passwordReset">Forgot password</g:link></p>
        <p><g:link controller="registration" action="index">Register new account</g:link></p>
    </g:form>

    <b style="color: red">NOTE: registration is currently added for testing only, if you make an account it will be deleted in the near future</b>
</div>