package org.aakretech.trekwarOnline

class User {
    String username
    String password // SHA512
    String email

    String salt

    Date emailVerifiedDate
    Date accountRegistrationDate

    static constraints = {
        username(size: 3..30, blank: false, unique: true)
        email(email: true, blank: false, unique: true)
        password(size:  5..4096, blank: false)

        salt(size: 96..512, nullable: true)

        accountRegistrationDate(nullable: true)
        emailVerifiedDate(nullable: true)
    }
}
