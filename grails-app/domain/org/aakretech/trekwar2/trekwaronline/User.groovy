package org.aakretech.trekwar2.trekwaronline

class User {
    long id
    String username
    String password
    String firstname
    String lastname
    String country
    String email
    Date emailVerifiedDate
    Date accountRegistrationDate

    static constraints = {
        username(size: 3..30, blank: false, unique: true)
        email(email: true, blank: false, unique: true)
        password(size:  5..1024, blank: false)
        accountRegistrationDate(nullable: true)
        emailVerifiedDate(nullable: true)
        firstname(nullable:  true)
        lastname(nullable: true)
        country(nullable: true)
    }
}