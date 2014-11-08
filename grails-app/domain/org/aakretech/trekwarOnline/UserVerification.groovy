package org.aakretech.trekwarOnline

class UserVerification {
    long id
    User user
    String code
    Date codeGeneratedDate

    static constraints = {
        code(size: 64..512, nullable: false)
    }
}