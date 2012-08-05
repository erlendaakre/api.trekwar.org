package org.aakretech.trekwar2.trekwaronline

class PasswordReset {
    long id
    User user
    String code
    Date codeGeneratedDate

    static constraints = {
    }
}
