package org.aakretech.trekwarOnline

class UserController {

    def index() {
        render(view: "index")
    }

    def login() {
        if(params.username != null && params.password != null) {
            def user = User.findByUsernameAndPassword(params.username, UserRegistrationService.hashPasswordWithSalt(params.username, params.password))
            if(user != null) {
                session.user = user
                redirect(action: "index")
            }
            else {
                flash.message = "Invalid username/password"
                render(view: "login")
            }
        }
        else {
            render(view: "login")
        }
    }

    def logout() {
        session.user = null
        flash.message = "You have been logged out of Trekwar Online"
        render(view: "login")
    }

    def beforeInterceptor = [action:this.&checkUser,except:['login']]

    def checkUser() {
        if(!session.user) {
            redirect(controller:'User',action:'login')
            return false
        }
        return true
    }
}
