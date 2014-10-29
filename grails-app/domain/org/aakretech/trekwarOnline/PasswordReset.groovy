package org.aakretech.trekwarOnline

class PasswordReset {
    long id
    User user
    String code
    Date codeGeneratedDate

    static constraints = {
    }
}