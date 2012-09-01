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

            <h3>April 09 2011</h3>
            <p>Unfortunately I haven't had much time lately to work on the game, but progress is being made and I'm confident the alpha release will be ready by summer.</p>
            <p>As always the list of tasks remaining is updated whenever I do something, and there's currently 25.5 hours left until Alpha testing can start:
                <a href="http://www.toodledo.com/views/public.php?s=9;h=0;f=0;id=td4ca2f960d2cd4">Trekwar todo list</a>
            </p>

            <h4>Starsystem box</h4>
            <p>The starsystem box has been redesigned</p>
            <table cellpadding="10">
                <tr valign="top">
                    <td>Before:<br/><img src="/images/devblog/systembox_before.jpg" /><br></td>
                    <td>After:<br/><img src="/images/devblog/systembox_after.jpg" /></td>
                </tr>
            </table>
            <p>Note: build times are very low because i'm using a overpowered factory for testing</p>
            <br/>

            <h4>Screenshot</h4>
            <a href="/images/devblog/trekwar_0_3_8.jpg"><img src="/images/devblog/trekwar_0_3_8_thumb.jpg"/></a>
            <br/><br/>

            <h4>Misc</h4>
            <p>Most of what's been done since last time is behind the scenes stuff like: cleaning up code, tweaking troop production, started on space combat (halfway done), remade the tool that creates new maps, bugfixing, changed the way allied and own fleets look, fixed fog of war, added 3 more background music tracks, more turn reports added, etc..</p>
            <br/>
            <h4>Todo before alpha</h4>
            <p>Only 2 big tasks remain, finishing ship to ship combat, and reworking the server-client communication so that it only sends the relevant info (less bandwidth needed, and also prevents cheating).</p>

        </div>

    </div>

</body>
</html>