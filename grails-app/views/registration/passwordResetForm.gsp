<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <asset:javascript src="password.js"/>
    <asset:javascript src="sha512.js"/>
    <asset:javascript src="libs/jquery.complexify.min.js"/>

    <script>
        $(document).ready(function (event) {

            var validatePassword = function () {
                if ($("#password").val() !== $("#confirmPassword").val()) {
                    $("#passwordValidationField").html("Passwords do not match");
                    $("#changePasswordButton").attr('disabled', 'disabled');
                }
                else {
                    if ($("#password").val().length < 5) {
                        $("#passwordValidationField").html("Your selected password is too short, it must be between 5 and 4096 characters long");
                    }
                    else {
                        $("#passwordValidationField").html("");
                        $("#changePasswordButton").removeAttr('disabled');
                    }
                }
            }
            $("#password").bind("change paste keyup", function () {
                validatePassword();
            });
            $("#confirmPassword").bind("change paste keyup", function () {
                validatePassword();
            });


            $(function () {
                $("#password").complexify({}, function (valid, complexity) {
                    $('#complexity').html(Math.round(complexity) + '%');
                    $('#progress').css({'width': complexity + '%'});
                });
            });

            $("#changePasswordButton").bind("click", function (event) {
                if(! $("#username").val() && $("#username").val().length < 1) {
                    $("#passwordValidationField").html('<div class="alert alert-info" role="alert"><strong>Username needed!</strong><br/>The username field below does not contain a username, this field is filled automatically if you access this page by clicking the reset password link in your email.<br><br>The field has been unlocked, please enter your username (case sensitive!) and hit submit again.<br><br><strong>Note:</strong> if your username is not written <strong>exactly</strong> as it is registered, your new password will not work.<br><br>Note: entering another users username will only cause your new password to be invalid.</div>')
                    $("#username").removeAttr('readonly');
                    return false;
                }
                else {
                    $("#passwordValidationField").html("Hashing password, please wait...");
                    var hash = hashPassword($("#username").val(), $("#password").val());
                    $("#password").val(hash);
                    $("#confirmPassword").val(hash);
                }
            });

        });
    </script>

</head>

<body>

<g:render template="/navbarTemplate" model="[nav_online: 'active']"/>

<div class="container">

    <div class="row">
        <div class="span8">
            <h2>Password Reset</h2>
            <br/>

            <g:if test="${error == true}">
                <div class="alert alert-danger" role="alert" id="errordiv">
                    <strong>Error!</strong> The provided code was not valid
                </div>

                <script>
                    $('#errordiv').hide(0).fadeIn(500).delay(3000).fadeOut(2000);
                </script>
            </g:if>

            <form>

                <div class='fieldcontain required'>
                    <g:field class="span5" type="password" name="password" id="password" required="true"
                             placeholder="New password"/>
                    <div class="span3" style="float: right" id="passwordValidationField"></div>
                </div>

                <div class='fieldcontain required'>
                    <g:field class="span5" type="password" name="confirmPassword" id="confirmPassword" required="true"
                             placeholder="Confirm password"/>
                    <div class="span3" style="float: right">
                        Password complexity: <div id="progress" style="background-color: forestgreen"><div
                            id="complexity" style="padding-left: 2px"></div></div>
                    </div>
                </div>

                <g:actionSubmit disabled="disabled" id="changePasswordButton" value="Change password"
                                controller="registration" action="passwordReset" class="btn btn-primary btn-large"
                                style="margin-top: 10px"/>

                <br/><br/><br/>
                Confirmation code:
                <div class='fieldcontain required'>
                    <g:field class="span10" type="text" name="code" id="code" required="true"
                             placeholder="Confirmation code" value="${code}"/>
                </div>

                Your username:
                <div class='fieldcontain required'>
                    <g:field class="span5" readonly="readonly" type="text" name="username" id="username" required="true"
                             placeholder="Username" value="${username}"/>
                </div>

            </form>

        </div>
    </div>

</body>
</html>