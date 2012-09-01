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

            <h3>November 01 2009</h3>
            <p>I finally redesigned the old temporary fleet box (the window you use to control your fleets/ships). In this new version, multiple fleets on the same tile show up as tabs.. You will be able to transfer ships between your own fleets by dragging a ship to another tab.</p>
            <p><img src="/images/devblog/new_fleetbox.jpg"/></p>
            <p>In this example the Federation user has a fleet of 5 scoutships in the same tile as 2 Klingon fleets (this only happens because combat is not implemented yet) When it is two opposing factions can only be in the same tile if both fleets consists of unarmed ships (not very likely).</p>
            <p>Now some of you might notice the series of 3 blue bars for each ship, those represents (from the top) shields, armor and hit points(hull). The scoutships does not have shields, but how can their armor be at half if there is no combat? When you research techs your overall ships improve, so if you have construction tech 10, your scoutships will be quite a bit better than if you only had construction tech 1.. So as your tech increase, so does the the max amount of armor/hp your ships can have.. So as you progress technologically you might want to dock your fleets at a starbase or starsystem with a shipyard so that the ships gain the extra bonus.</p>

        </div>

    </div>

</body>
</html>