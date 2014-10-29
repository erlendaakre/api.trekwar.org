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
            <h3>May 18 2008</h3>
            <p>I spent most of the pentecost working on the game.. I fixed some major problems with the server/client serialization, and learned the hard way that ObjectOutputStream.writeUnshared() only writes the root object unshared, but still caches all objects contained in the ROOT.</p>
            <p>I fixed a few bugs in the research view and I now belive research is truly 100% done :) I swapped out almost all of the icons (thank you KDE), and added a icon in the upper right corner of the screen that displays tick number, and time to next turn. The icon rotates like crazy when downloading data from server.</p>
            <p>I implemented the Order system and pretty much completed the MoveOrder, so now I can actually see a federation fleet making it's way across the map</p>
            <p><g:link url="${assetPath(src: '/devblog/trekwar_ship_move.jpg')}"><asset:image src="/devblog/trekwar_ship_move_thumb.jpg" /></g:link></p>

            <p>the client also displays the path of the fleet as yellow dots. Next step will be allowing the client to make new orders, allowing me to move the ship freely (not just by a test order created when the server is started).</p>
            <p>Next up will be implementing the build orders for star system and shipyards, as well as order to build starbases, outposts and colonize planets.</p>
            <br>
            <p>I've had some ideas on new features I want to implement in the game:</p>
            <ul>
                <li>Asteroid fields, a few asteroid fields should be added on each map, an asteroid field would be 3-8 connected tiles.</li>
                <li>Mining Barge (Ship that moves to a asteroid belt, spends some ticks mining, then returns to a starsystem and immediatly turns the mined ore into useable industry for building ship/structures) Each tile with asteroid field would have a randomish amount of industry</li>
                <li>Mining Station (Outpost buildt in asteroid belt), produces industry for the closest planet</li>
                <li>Nebula collectors (Same as mining barge, except works on nebulas)</li>
                <li>Strip mine (Action/Building that can be used in a starsystem with a barren planet, gives many resources/industry per turn, but has a 15%? change to deplete the barrent planet, making it unable to support population or structure)</li>
                <li>Subspace scanner (Small cheap space stations that has very good sensor range, enough to se cloaked ships that are very close, availible for federation only)</li>
            </ul>

        </div>

    </div>

</body>
</html>