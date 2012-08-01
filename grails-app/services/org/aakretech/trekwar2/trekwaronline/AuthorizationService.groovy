package org.aakretech.trekwar2.trekwaronline

class AuthorizationService {

    boolean authorizeUser(String authCode) {
        return authCode.equals("test")
    }
}