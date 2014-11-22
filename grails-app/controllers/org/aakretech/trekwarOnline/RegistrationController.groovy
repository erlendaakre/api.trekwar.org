package org.aakretech.trekwarOnline

class RegistrationController {
    def userRegistrationService

    def index() {
        render(view: "registerUser", model: [user: new User()])
    }

    def validate() {
        if(params.code != null) {
            def boolean validated = userRegistrationService.validateUser(params.code)
            if(validated) {
                render(view: "validateUser", model: [error:false])
            }
            else {
                render(view: "validateUser", model: [error:true])
            }
        }
        else {
            render(view: "validateUser", model: [error:true])
        }
    }

    def passwordReset() {
        if(params.password != null && params.code != null) {
            if(params.password.length() != 128) {
                render "password has illegal format, must be hashed by clientside SHA512 javascript"
            }
            else {
                def pwReset = userRegistrationService.passwordResetVerifyCode(params.code);
                if(pwReset != null) {
                    boolean saved = userRegistrationService.passwordResetChangePassword(pwReset, params.password);
                    if(saved) {
                        render(view: "passwordResetOK")
                    }
                    else {
                        render("Failed to reset password. Your password reset code might just have expired, or the password got messed up. please contact me if this happens again")
                    }
                }
                else {
                    render(view: "passwordResetForm", model: [error:true, username: params.username, code:params.code])
                }
            }
        }
        else if(params.code != null) {
            def pwReset = userRegistrationService.passwordResetVerifyCode(params.code);
            if(pwReset) {
                render(view: "passwordResetForm", model: [error:false, username:pwReset.user.username, code:params.code])
            }
            else {
                render(view: "passwordResetForm", model: [error:true, code:params.code])
            }
        }
        else if(params.email != null) {
            userRegistrationService.passwordResetSendCode(params.email)
            render(view: "passwordReset", model: [newRequest:false])
        }
        else {
            render(view: "passwordReset", model: [newRequest:true])
        }
    }

    /**
     * Checks if a username is available (not already registered)
     * requires params.username to be set
     *
     * @return true if username is available, false if already taken
     */
    def checkUsernameAvailable() {
        if(params.username == null) {
            render(contentType: "text/json") { [false]}
        }
        else {
            render(contentType: "text/json") {
                [userRegistrationService.isUsernameAvailable(params.username)]
            }
        }
    }

    def doRegister() {
        def newUser = new User(params)

        if(! params.password.equals(params.confirmPassword)) {
            newUser.errors.rejectValue("password", "Passwords do not match")
        }

        //def captchaOK = recaptchaService.verifyAnswer(session, request.getRemoteAddr(), params)
        def captchaOK = true

        if (!newUser.hasErrors() && newUser.validate() && captchaOK) {
            //recaptchaService.cleanUp(session)
            boolean success = userRegistrationService.registerUser(newUser)
            if (!success) {
                flash.message = "Unexpected error from user registration service :("
                render(view: "registerUser", model: [user: newUser])
            }
            else {
                render(view: "registerOK", model: [email: newUser.email])
            }
        }
        else {
            render(view: "registerUser", model: [user: newUser])
        }
    }
}