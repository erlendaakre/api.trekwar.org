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

            <h3>February 18 2010</h3>
            <p>I've done some work on the sensor system, using a bounding box and a modified <a href="http://en.wikipedia.org/wiki/Bresenham%27s_line_algorithm">Bresenham's line algorithm</a></p>
            <p>In the sensor system each planet, fleet of ships or starbase will have a sensor strength. This strength determines both how long the player can see, and how good sensor resolution is in the tiles visible (higher sensor resolution means better intel on enemy fleets or starsystems, and is needed to see cloaked ships).</p>
            <p>In the screenshots below from the testing program, the player (green tile) can see all the yellow tiles. The player has a sensor strength of 100. Open space has a sensor cost of 10, so if there are no obstacles a sensor with strength 100 can see 10 tiles away (but then at strength 10). It can see the tile next to it with a strength of 90.</p>
            <p>Pink tiles represents small anomalies (asteroid fields, nebula, etc..) and has a sensor cost of 40. Red tiles have heavy interference (black holes, neutron stars, pulsars, and "subspace jamming devices") and have a sensor cost of 70.</p>
            <br/>
            <p>Below is a screenshot with no heavy interference very close to the sensor, this gives a pretty good overview of the nearby area</p>
            <img src="/images/devblog/sensor1.jpg" />

            <br/><br/>
            <p>This placement however creates a sensor blind spot below and in the lower right corner</p>
            <img src="/images/devblog/sensor2.jpg" />

            <br/><br/>
            <p>Big blind spots in sensor coverage may allow your enemies to mount surprise attacks your systems if you're not careful</p>
            <img src="/images/devblog/sensor3.jpg" />
        </div>

    </div>

</body>
</html>