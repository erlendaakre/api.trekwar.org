package org.aakretech.trekwarOnline

class AuthorizationService {

    boolean authorizeUser(String authCode) {
        return authCode.equals("test")
    }
}