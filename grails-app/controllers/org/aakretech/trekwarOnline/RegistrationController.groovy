package org.aakretech.trekwarOnline

class RegistrationController {
    def userRegistrationService

    def index() {
        render(view: "registerUser", model: [user: new User()])
    }

    def validate() {
        if(params.code != null && params.code.length() == 40) {
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
        render "implement me!"
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