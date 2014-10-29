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

            <h3>June 22 2009</h3>
            <p>I recently implemented a very simple minimap for the game, which should make it easier to get an overview in larger galaxies.</p>
            <p>The minimap now supports normal view, and a "population" view where the star is transparent and changes size based on the starsystem population. I might also make views for industry and research, so that you can find/target the enemy industrial core systems for example.</p>
            <p>The accuracy of the views/information will be related to your sensor strength in that area and the systems intel rating</p>
            <p><asset:image src="/devblog/trekwar_minimap.jpeg" /></p>
            <br/>
            <p>It is also now possible to build any ship you have designed on the server, only need to add shipyards to the game and allow users to make build orders from the client. There also has to be a way of deleting/moving stuff in the build queue, and then the starsystem control is pretty much finished.</p>
            <p>The two big things left before alpha testing then is combat resolution (which is pretty much done on paper) and the sensor system</p>

        </div>

    </div>

</body>
</html>