package org.aakretech.trekwarOnline

class UserController {

    def index() {
        render(view: "index")
    }

    def login() {
        if(params.username != null && params.password != null) {
            if(!User.findByUsername(params.username)) {
                flash.message = "Invalid username/password"
                flash.type = "error"
                render(view: "login")
            }
            else {
                def userSalt = User.findByUsername(params.username).salt
                def user = User.findByUsernameAndPassword(params.username, UserRegistrationService.hashPasswordWithSalt(params.password, userSalt))
                if(user != null) {
                    session.user = user
                    redirect(action: "index")
                }
                else {
                    flash.message = "Invalid username/password"
                    flash.type = "error"
                    render(view: "login")
                }
            }
        }
        else {
            render(view: "login")
        }
    }

    def logout() {
        session.user = null
        flash.message = "You have been logged out of Trekwar Online"
        flash.type = "success"
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
