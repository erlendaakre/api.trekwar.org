<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="${grailsApplication.config.grails.serverURL}">Trekwar.org</a>

            <div class="nav-collapse">
                <ul class="nav">
                    <li class="${nav_home}"><g:link url="${grailsApplication.config.grails.serverURL}/">Home</g:link></li>
                    <li class="${nav_development}"><g:link url="${grailsApplication.config.grails.serverURL}/development">Development</g:link></li>
                    <li class="${nav_screenshots}"><g:link url="${grailsApplication.config.grails.serverURL}/screenshots">Screenshots</g:link></li>
                    <li class="${nav_download}"><g:link url="${grailsApplication.config.grails.serverURL}/download">Download</g:link></li>
                    <li class="${nav_support}"><g:link url="${grailsApplication.config.grails.serverURL}/support">Support</g:link></li>
                    <li class="${nav_contact}"><g:link url="${grailsApplication.config.grails.serverURL}/contact">Contact</g:link></li>
                    <li class="${nav_online}"><g:link controller="user" action="index">Trekwar Online
                    <g:if test="${session.user}">(${session.user.username})</g:if></g:link></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>