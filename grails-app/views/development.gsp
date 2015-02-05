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
                    The development of Trekwar is currently being done by me (Erlend) single handed, I'm going to keep it this way trough the alpha testing and to beta so that I can focus on the design and architecture, and then if any talented Java programmers want to help out when the initial version is up and running, that would be appreciated :)
                </p>
                <p>
                    From the alpha/beta and onwards There will also be a need for graphics artists to replace much of the horrible graphics I've been able to make myself or steal from <g:link url="http://www.memory-alpha.org/">Memory alpha</g:link> :)
                </p>

                <br/><br/>

                <div id="milestone-header"></div>
                <br/>
                <div id="milestone-list"><h3>Remaining issues in milestone:</h3></div>
                <br/>
                <p><a href="https://waffle.io/erlendaakre/trekwar" class="btn btn-primary btn-large">View scrum board</a></p>

                <script>
                    var milestoneNumber = 1; //https://api.github.com/repos/erlendaakre/trekwar/milestones
                    var urlToGetMilestoneInfo = "https://api.github.com/repos/erlendaakre/trekwar/milestones/" + milestoneNumber;
                    var urlToGetIssuesLeftInMilestone = "https://api.github.com/repos/erlendaakre/trekwar/issues?state=open&milestone=" + milestoneNumber;

                    $(document).ready(function () {
                        $.getJSON(urlToGetMilestoneInfo, function (milestone) {
                            $("#milestone-header")
                                    .append("<h3>Current milestone: " + milestone.title + "</h3>")
                                    .append("Issues: " + milestone.open_issues + " open, (" + milestone.closed_issues + " closed)<br/>")
                                    .append(milestone.description + "<br?/>");
                        });

                        $.getJSON(urlToGetIssuesLeftInMilestone, function (allIssues) {
                            $.each(allIssues, function (i, issue) {
                                $("#milestone-list")
                                        .append("" + issue.number + " - " + issue.title + "  (<a href=\"" + issue.html_url + "\">details</a>)<br/>");
                            });
                        });
                    });
                </script>

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
                </li><li><a href="https://github.com/erlendaakre/">Github</a> is used to manage the project source code and issue tracking
                </li><li><a href="https://waffle.io/erlendaakre/trekwar">Waffle.io</a> is used as an agile board
                </li></ul>
            </div>
        </div>


    </div>

</body>
</html>