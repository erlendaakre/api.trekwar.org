<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="#">Trekwar.org</a>

            <div class="nav-collapse">
                <ul class="nav">
                    <li class="${nav_home}"><g:link url="/">Home</g:link></li>
                    <li class="${nav_development}"><g:link url="/development">Development</g:link></li>
                    <li class="${nav_screenshots}"><g:link url="/screenshots">Screenshots</g:link></li>
                    <li class="${nav_download}"><g:link url="/download">Download</g:link></li>
                    <li class="${nav_support}"><g:link url="/support">Support</g:link></li>
                    <li class="${nav_wiki}"><a href="#">Wiki</a></li>
                    <li class="${nav_contact}"><g:link url="/contact">Contact</g:link></li>
                    <li class="${nav_online}"><g:link controller="user" action="index">Trekwar Online</g:link></li>
                </ul>

                <%--
                <ul  class="nav" style="float: right; padding-top: 8px">
                    <li>
                        <input type="button" value="go light" id="lightDarkToggle"/>
                    </li>
                </ul>   --%>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>