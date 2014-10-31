trekwarOnline
=============
This is a project containing the Trekwar.org website and all online services used by the game:
- authentication service for client/server
- registration service
- account management
- (server registration and listings)
 
usage / installation
====================
Trekwar clients and servers will always authenticate against the central server (Trekwar.org) which is running
TrekwarOnline (this project), but however if you ever need to run this service here is how to get it up and running

1) Check out this project from github
2) Install Grails 2.4.3 (and hsqldb as a stand alone db)
3) Edit the Config.groovy file to set up the serverUrl for deployment (production environment)
4) Edit the email templates as the links here are hardcoded
5) The project uses the Grails mail plugin and google mail as smtp, the username and password is stored in a separate properties file as described in the Config.groovy grails.mail section.
6) Project should now be ready to run locally with grails or to deploy as a war file to any java webserver (tomcat, jetty, resin, etc..)

