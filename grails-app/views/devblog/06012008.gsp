<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<g:render template="/navbarTemplate" model="[nav_download: 'active']"/>

<div class="container">

    <div class="row">
        <div class="span8">

            <h3>January 06 2008</h3>
            <p>So, I got to work on the game for a couple of days in January. I was able to implement the tick/turn system, and did some GUI work on the galaxy view, and halfway implemented the system view. The work on the galaxy view is show below, now it is possible to select a sector (tile on the map) and view information about the starsystem, and fleets in that system).</p>
            <p><a href="/images/screenshots/trekwar_old_galaxy.jpg"><img src="/images/screenshots/trekwar_old_galaxy_thumb.jpg" /></a></p>

            <p>The Research system was completely finished (worst part was finding suitable images on memory alpha :) Below is the sketch for the research view and the final result</p>
            <p><a href='/images/devblog/gui_research_sketch.png'><img src='/images/devblog/gui_research_sketch_thumb.png'/></a> &nbsp;
                <a href='/images/screenshots/trekwar_research.jpg'><img src='/images/screenshots/trekwar_research_thumb.jpg'/></a>
                </p>
                <br/>
            <p>
                <b>Next time:</b><br/>
                Next time I will hopefully have worked out the order system (ship orders like move, attack, etc.. and build orders for planets, the starship path algorithm and maybe the sensor coverage algorithm). I will also be finishing up the star system view, which will probably be a lot like the sketch below. The current version of the star system view which allows you to build/view/destroy structures in a star system. Below is the current version that only shows statistics + planets (planet images where temp images made in paint on a laptop, and have been replaced). and a sketch of the control view which is supposed to be in the center window of the screenshot
            </p>

            <p><a href="/images/devblog/gui_systemconfig_sketch.png"><img src="/images/devblog/gui_systemconfig_sketch_thumb.png" /></a></p>

        </div>

    </div>

</body>
</html>