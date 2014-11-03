import org.aakretech.trekwarOnline.User
import spock.util.mop.Use

class BootStrap {
    def grailsApplication
    def userRegistrationService

    def init = { servletContext ->
        // Set up admin user if no users are registered
        if(!User.count()) {
            def admin = new User(username: grailsApplication.config.grails.adminuser.username,
                     password:  grailsApplication.config.grails.adminuser.password,
                     email:  grailsApplication.config.grails.adminuser.email,

                     salt: userRegistrationService.generateCode(48),

                     emailVerifiedDate: new Date(),
                     accountRegistrationDate: new Date())

            def plainPassword = admin.password
            def clientPassword = userRegistrationService.clientSidePasswordHash(admin.username, admin.password)

            admin.password = userRegistrationService.hashPasswordWithSalt(clientPassword, admin.salt)

            admin.save(flush: true, failOnError: true)
            println("Saved admin user with username " + admin.username + " and password " + clientPassword)
        }
    }
    def destroy = {
    }
}
