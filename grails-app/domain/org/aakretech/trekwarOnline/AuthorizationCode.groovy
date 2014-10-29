package org.aakretech.trekwarOnline

class AuthorizationCode {
    User user
    String code
    Date validUntil

    static constraints = {
        code(minSize: 128)
    }
}