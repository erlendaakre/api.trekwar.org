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
                    userRegistrationService.passwordResetChangePassword(pwReset, params.password);
                }
            }
        }
        else if(params.code != null) {
            def boolean passwordChanged = userRegistrationService.validateUser(params.code)
            def pwReset = userRegistrationService.passwordResetVerifyCode(params.code);
            if(pwReset) {
                println("prRESET = " + pwReset.code)
                println("prRESET = " + pwReset.user.email)
                render(view: "passwordResetForm", model: [error:false, pwReset: pwReset])
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