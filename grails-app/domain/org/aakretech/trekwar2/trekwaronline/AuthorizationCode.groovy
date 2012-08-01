package org.aakretech.trekwar2.trekwaronline

class AuthorizationCode {
    User user
    String code
    Date validUntil

    static constraints = {
        code(minSize: 128)
    }
}