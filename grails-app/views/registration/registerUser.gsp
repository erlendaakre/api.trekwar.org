<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
    <asset:javascript src="password.js"/>
    <asset:javascript src="sha512.js"/>
    <asset:javascript src="libs/jquery.complexify.min.js"/>

    <script>
        $(document).ready(function(event){
            $("#username").bind("change paste keyup", function(){
                $.getJSON("/api/checkUsernameAvailable?username=" + this.value, function (data) {
                    if(data[0]) {
                        $("#usernameAvailableField").html("Username is available");
                        $("#registerUserButton").removeAttr('disabled');
                    }
                    else {
                        $("#usernameAvailableField").html("That username is already in use");
                        $("#registerUserButton").attr('disabled','disabled');
                    }

                });
            });

            var validatePassword = function() {
                if($("#password").val() !==  $("#confirmPassword").val()) {
                    $("#passwordValidationField").html("Passwords do not match");
                    $("#registerUserButton").attr('disabled','disabled');
                }
                else {
                    if($("#password").val().length < 5) {
                        $("#passwordValidationField").html("Your selected password is too short, it must be between 5 and 4096 characters long");
                    }
                    else {
                        $("#passwordValidationField").html("");
                        $("#registerUserButton").removeAttr('disabled');
                    }
                }
            }
            $("#password").bind("change paste keyup", function() { validatePassword(); });
            $("#confirmPassword").bind("change paste keyup", function() { validatePassword(); });


            $(function () {
                $("#password").complexify({}, function (valid, complexity) {
                    $('#complexity').html(Math.round(complexity) + '%');
                        $('#progress').css({'width':complexity + '%'});
                });
           });

            $("#registerUserButton").bind("click", function(event) {
                $("#passwordValidationField").html("Hashing password, please wait...");
                var hash = hashPassword($("#username").val(), $("#password").val());
                $("#password").val(hash);
                $("#confirmPassword").val(hash);
            });
        });
    </script>

</head>

<body>

<g:render template="/navbarTemplate" model="[nav_online: 'active']"/>

<div class="container">

    <h1>User Registration</h1>

    <g:hasErrors bean="${user}">
        <div class="alert alert-danger" role="alert">
            <div id="form-errorlist">
                <g:renderErrors bean="${user}"/>
            </div>
        </div>
    </g:hasErrors>

    <br/>

    <g:form>
        <div class="row">
            <div class="span6">
                <h2>Required</h2>

                <div class='fieldcontain required'>
                    <g:field type="text" name="username" value="${user.username}" id="username" required="true" minlength="5" maxlength="30" placeholder="Username"/>
                    <div class="span3" style="float: right" id="usernameAvailableField"></div>
                </div>

                <div class='fieldcontain required'>
                    <g:field type="email" name="email" required="true" value="${user.email}" placeholder="E-mail address"/>
                </div>

                <div class='fieldcontain required'>
                    <g:field type="password" name="password" id="password" required="true" placeholder="Password"/>
                    <div class="span3" style="float: right" id="passwordValidationField"></div>
                </div>

                <div class='fieldcontain required'>
                    <g:field type="password" name="confirmPassword" id="confirmPassword" required="true" placeholder="Confirm password"/>
                    <div class="span3" style="float: right" >
                        Password complexity: <div id="progress" style="background-color: forestgreen"><div id="complexity" style="padding-left: 2px"></div></div>
                    </div>
                </div>

                <recaptcha:ifEnabled>
                    <recaptcha:recaptcha theme="dark"/>
                </recaptcha:ifEnabled>

                <div class="span3">
                    <g:actionSubmit disabled="disabled" id="registerUserButton" value="Register user" controller="registration" action="doRegister" class="btn btn-primary btn-large" style="float: right; margin-top: 10px"/>
                </div>

            </div>

        </div>
    </g:form>

</body>
</html>