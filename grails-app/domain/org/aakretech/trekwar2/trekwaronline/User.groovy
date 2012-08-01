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
        username(size: 5..30, blank: false, unique: true)
        email(email: true, blank: false, unique: true)
        password(blank: false)
    }
}