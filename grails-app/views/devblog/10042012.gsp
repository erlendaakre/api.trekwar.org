<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<g:render template="/navbarTemplate" model="[nav_development: 'active']"/>

<div class="container">

    <div class="row">
        <div class="span8">

            <h3>April 10 2011</h3>
            <p>Things have not been going as fast as I had hoped, but I finally completed the latest UI updates (getting rid of the old boxes for starsystem and fleet control) and instead putting it all into a big bar on the bottom of the screen that is always visible. This took a lot longer than I had anticipated, but at least the GUI code is looking a lot better now (especially the custom components, drag and drop support and the animation framework).</p>
            <img src="/images/devblog/trekwar_4_5_ui_fleet.png" /> <br/><br/>
            <img src="/images/devblog/trekwar_4_5_ui_system.png" />
            <br/>
            <br/>
            <p>There is still 46-48 hours left until second Alpha test, and now it's mostly bug fixing + some new features being added (ship components, implementing cloaking).</p>
            <p>I've also done some tasks that were NOT supposed to be done this sprint (shame on me), like optimizing the server for multiple processor cores, doing lots of cleanup of code + documentation, adding <a href="http://www.apache.org/licenses/LICENSE-2.0">license information</a> to every file, making a basic launcher, etc..</p>
            <img src="/images/devblog/trekwar_launcher.png" />

            <br/><br/>
            <p>Hopefully now that this big user interface task has been finished I'll be more motivated to code on the server side and fix some bugs + add features for next round of testing.</p>
            <p>I've also decided to reduce the sprints length, so instead of a maximum of 100 work hours on each release, I'm going to set that limit to 25-30.</p>

        </div>

    </div>

</body>
</html>