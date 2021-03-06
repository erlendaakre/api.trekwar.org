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

                     salt: userRegistrationService.generateCode(128),

                     emailVerifiedDate: new Date(),
                     accountRegistrationDate: new Date())

            def clientPassword = userRegistrationService.clientSidePasswordHash(admin.username, admin.password)

            admin.password = userRegistrationService.hashPasswordWithSalt(clientPassword, admin.salt)

            admin.save(flush: true, failOnError: true)
            println("Admin account created with name " + admin.username + " and password as specified in secret-config.properties")
        }
    }
    def destroy = {
    }
}
