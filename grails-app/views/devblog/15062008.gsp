<!doctype html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<g:render template="/navbarTemplate" model="[nav_development: 'active']"/>

<div class="container">

    <div class="row">
        <div class="span8">

            <h3>June 15 2008</h3>
            <p>During a trip to Austria I got some more work done on the game.</p>
            <p>It is now possible to freely move fleets of ships around in the galaxy, the route is also showed on the client map.</p>
            </p><g:link url="${assetPath(src: '/screenshots/trekwar_austria.jpg')}"><asset:image src="/screenshots/trekwar_austria_thumb.jpg" width="150" /></g:link></p

            <br/>

            <p>A lot of the time went to debugging a strange behavior I found.. It appears that the java method ObjectOutputStream.writeUnshared() only writes the ROOT object unshared.. and all objects that make up that root object is still cached.. Surprise Surprise :)</p>
            <p>The client now also has a animated arrow in the upper right corner that shows the current tick number and the time until next tick. The icon animates when the client is synchronizing with the server for each tick.</p>
            <p>In addition to the MoveOrder, other parts of the order system is falling into place, I implemented the star system control window (where you manage a single star system, build stuff, etc..) and you can actually build buildings now, but no queue for build orders yet.</p>
            <p><g:link url="${assetPath(src: '/devblog/gui_systemconfig_sketch.png')}"><asset:image src='/devblog/gui_systemconfig_sketch_thumb.png'/></g:link> &nbsp;
    <g:link url="${assetPath(src: '/screenshots/trekwar_old_system.jpg')}"><asset:image src='/screenshots/trekwar_old_system_thumb.jpg'/></g:link><br/>
                <br />
            </p>
            <p>On the flight back home from Vienna I managed to implement Asteroid fields, the asteroids you see in the first image in this post are the one drawn on my laptop in paint about 10 km above sea level. I had to change those for some slightly better ones when I got home</p>
            <p><asset:image src="/devblog/trekwar_screen_asteroids.jpg" /></p>

            <br/>
            <p>That's it for now :) Hopefully I will get more done in July, the next things on my list are</p>
            <ul><li>Colonization
            </li><li>Build Queues
            </li><li>Fleet management
            </li><li>Fog of war + Sensor strength + sensor length calculations
            </li><li>Turns Reports
            </li><li>Combat Resolution (yay!)
            </li></ul>

        </div>

    </div>

</body>
</html>