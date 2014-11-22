package org.aakretech.trekwarOnline

import java.security.MessageDigest
import java.security.SecureRandom
import org.apache.commons.codec.binary.Base64
import org.apache.commons.codec.binary.Hex
import grails.plugin.mail.MailService

class UserRegistrationService {
    def MailService mailService
    def grailsApplication

    private static SecureRandom prng = new SecureRandom()
    private static MessageDigest md = MessageDigest.getInstance("SHA-512")

    def boolean registerUser(User user) {
        if(user.validate()) {
            def now = new Date()
            user.accountRegistrationDate = now
            user.salt = generateCode(128)
            user.password = hashPasswordWithSalt(user.password, user.salt)

            if(user.save(flush:  true)) {
                UserVerification verification = new UserVerification()
                verification.user = user
                verification.code = generateCode(96)
                verification.codeGeneratedDate = now

                if(verification.save(flush: true, failOnError: true)) {
                    println("trying to send email to " + user.email) //TODO: replace with logging
                    mailService.sendMail {
                        to user.email
                        from "trekwaronline@gmail.com"
                        subject "Trekwar Online account registration"
                        html "<h2>Account Registration</h2>" +
                                "Thank you for registering for a Trekwar Online account." +
                                "<br/>Your username is: " + user.username +
                                "<br/><br/>Before you can log in and use your account you have to click the link below to verify your email address, or copy and paste the authorization code on " +
                                "<a href=\"http://www.trekwar.org/registration/validate\">this page</a>" +
                                "<br/><br/>" +
                                "<b>Code: </b> " + verification.code +
                                "<br/><br/>" +
                                "<a href=\"http://www.trekwar.org/registration/validate?code=" + verification.code + "\">Click here to verify account</a>"
                    }
                }
            }
            else {
                return false
            }
        }
        else {
            return false
        }
    }

    def boolean validateUser(String code) {
        def verification = UserVerification.findByCode(code)
        if(verification != null) {
            verification.user.emailVerifiedDate = new Date()
            println("======== Set email verified date for " + verification.user.username) // TODO replace with logging
            verification.delete()
            return true
        }
        return false
    }

    def boolean passwordResetChangePassword(PasswordReset pwReset, String newPassword) {
        if(pwReset != null && newPassword != null) {
            User user = pwReset.getUser();
            user.salt = generateCode(128)
            user.password = hashPasswordWithSalt(newPassword, user.salt)
            pwReset.delete()
            user.save(flush:true)
            println("========Password successfully reset for " + user.username) // TODO replace with logging
            return true
        }
        return false
    }

    def PasswordReset passwordResetVerifyCode(String code) {
        return PasswordReset.findByCode(code);
    }

    def boolean passwordResetSendCode(String email) {
        def user = User.findByEmail(email);
        if(user != null) {
            def pwReset = new PasswordReset(
                     user: user,
                     code: generateCode(96),
                     codeGeneratedDate: new Date()
            )

            if(pwReset.save(flush: true, failOnError: true)) {
                println("trying to send email to " + user.email) //TODO: replace with logging
                mailService.sendMail {
                    to user.email
                    from "trekwaronline@gmail.com"
                    subject "Trekwar Online password reset"
                    html "<h2>Password Reset</h2>" +
                            "A password reset request has been made for this email address." +
                            "<br/>Your username is: " + user.username +
                            "<br/>To reset your password click the link below to verify your email address, or copy and paste the authorization code on " +
                            "<a href=\"http://www.trekwar.org/registration/passwordReset?code=none\">this page</a>" +
                            "<br/><br/>" +
                            "<b>Code: </b> " + pwReset.code +
                            "<br/><br/>" +
                            "<a href=\"http://www.trekwar.org/registration/passwordReset?code=" + pwReset.code + "\">Click here to reset your password</a>"
                }
            }

        }
        return false;
    }

    def boolean isUsernameAvailable(String username) {
        return (User.findByUsername(username) == null)
    }

    /**
     * Hashes the password with the username for database storage (SHA512 in BASE64)
     *
     * @param username the username
     * @param password the client encoded password
     * @return BASE64 encoded hashed password
     */
    def static String hashPasswordWithSalt(String username, String password) {
        return Base64.encodeBase64String(md.digest((username+password).bytes))
    }

    /**
     * Hashes a password the same way it is done clientside by javascript before being sent to server
     * Used when creating default admin user
     * @param username the username
     * @param password the password
     * @return a severely hashed password
     */
    def static String clientSidePasswordHash(String username, String password) {
        String hash = username + password;
        for(int i=0; i<10000; i++) {
            hash = Hex.encodeHexString(md.digest(hash.getBytes()))
        }
        return hash;
    }

    /**
     * Generates a random alphanumeric code (a-z A-Z 0-9)
     *
     * @param codeLength number of characters to generate
     * @return a random code
     */
    def static String generateCode(int codeLength) {
        String keyset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        StringBuilder buffer = new StringBuilder()
        int index = 0
        while( index++ < codeLength) {
            buffer.append(keyset.charAt(prng.nextInt(keyset.length())))
        }
        return buffer.toString()
    }
}