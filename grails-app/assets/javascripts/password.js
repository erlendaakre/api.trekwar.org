/**
 * Hashes the password an excessive amount of times using SHA512 and the username as salt
 * This is done so that the password is never sent to the server
 *
 * @param username the username (used as initial hash
 * @param password the password in plain text
 * @returns {*|string} The hashed password
 */
function hashPassword(username, password) {
    var hash = username + password;
    for(var i=0;i<10000;i++) {
        hash = CryptoJS.SHA512(hash.toString(CryptoJS.enc.Hex));
    }
    return hash.toString(CryptoJS.enc.Hex);
}