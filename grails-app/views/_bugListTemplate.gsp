<div class="span12">
    <h2>Open bugs</h2>
    <div id="buglist"></div>
    <br>
    <script>
        var urlToGetAllOpenBugs = "https://api.github.com/repos/erlendaakre/trekwar/issues?state=open&labels=bug";
        $(document).ready(function () {
            $.getJSON(urlToGetAllOpenBugs, function (allIssues) {
                $("#buglist").append("found " + allIssues.length + " open bug(s)</br>");
                $.each(allIssues, function (i, issue) {
                    $("#buglist")
                            .append("<hr><b>" + issue.number + " - " + issue.title + "</b> (<a href=\"" + issue.html_url + "\">details</a>)<br/>")
                            .append("created at: " + issue.created_at + "<br/>")
                            .append("assigned to: " + ((issue.assignee) ? ("<img height=32 src=\"" + issue.assignee.avatar_url + "\"/> <a href=\"" + issue.assignee.html_url + "\">" + issue.assignee.login + "</a>") : "nobody") + "<br/>")
                            .append("Milestone for fix: " + ((issue.milestone) ? issue.milestone.title : "none") + "<br/>")
                            .append(issue.body + "<br/><br/><br/>");
                });
            });
        });
    </script>
</div>