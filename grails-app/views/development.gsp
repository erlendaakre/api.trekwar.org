<!doctype html>
<html xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<g:render template="/navbarTemplate" model="[nav_development: 'active']"/>

<div class="container">

    <div class="row">
        <div class="row">
            <div class="span6">
                <h2>Trekwar Development</h2>

                <p>
                    The development of Trekwar is currently being done by me (Klogd / Erlend) single handed, I'm going to keep it this way trough the alpha testing and to beta so that I can focus on the design and architecture, and then if any talented Java programmers want to help out when the initial version is up and running, that would be appreciated :)
                </p>
                <p>
                    From the alpha/beta and onwards There will also be a need for graphics artists to replace much of the horrible graphics I've been able to make myself or steal from <g:link url="http://www.memory-alpha.org/">Memory alpha</g:link> :)
                </p>

                <br/><br/>

                <h3>Roadmap</h3>
                <p>
                    For a full and detailed list of what tasks remain check out the <g:link url="http://www.toodledo.com/views/public.php?s=9;h=0;f=0;id=td4ca2f960d2cd4">Trekwar todo list</g:link>
                </p>
                <p>
                    Tasks are grouped by Context, and each context is a release (for example: 0.4.5)
                </p>
                <p>
                    NOTE: Release 9.9.9 is the backlog and has items not scheduled yet, and crazy ideas that will probably never make it to the actual game
                </p>
                <p>
                    Currently all of my focus is on getting the alpha and then beta versions of the game ready
                </p>

            </div>

            <g:render template="/devblogListTemplate"/>
        </div>



        <div class="row">
            <div class="span12">
                <h2>Tools used</h2>
                <ul><li>Java is the programming language used for the game server and client
                </li><li>Java Swing is used for the client user interface
                </li><li>Groovy and Grails is used for this website and Trekwar Online
                </li><li>IntelliJ from <a href="http://www.jetbrains.com/">JetBrains</a> is used for developing and maintaining TrekWarOnline, and a license was generously donated to the project by JetBrains
                </li><li>Netbeans is used for developing the server and client
                </li><li>VisualVM is used to optimize memory efficiency and find bugs
                </li><li>SVN is used to hold the project code
                </li><li>Toodledo is used to manage the project tasks
                </li><li>JSPWiki is used for the Trekwar wiki
                </li></ul>
            </div>
        </div>


    </div>

</body>
</html>