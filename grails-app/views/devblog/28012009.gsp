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

            <h3>January 28 2009</h3>
            <h4>Paths</h4>
            <p>Most of the work on the new client GUI has now been done, and the results can be found in the screenshots section under Client version 0.3.0. The old "Dot style" paths for ships has been replaced with a line, which looks much better when ships cross paths:<br/>
            <asset:image src="/devblog/trekwar_path_new.png" /></p>
            <br/>

            <h4>Ship speeds</h4>
            <p>One of the new features added is ship speeds. Unlike in Civilization / Birth of the Federation, where units can only move 1 or 2 tiles each turn. Ships in Trekwar can have a speed of 1.0 (which lets it always move 1 tile each turn) or 0.7 like the colonization ship in the screenshot below:<br/>
            <asset:image src="/devblog/trekwar_race.jpg" />
            </p>
            <br/>
            <p>The upper most ship is a scoutship with a speed of 1.0</p>
            <p>The lower ship is a colonization ship with a speed of 0.7, that means when it starts moving it will generate 0.7 movement points.. this is not enough to move a full tile. The next turn it generates 0.7 more and then gets 1.4 movement points.. It can the move 1 tile, and has 0.4 movement points "to spare".. On the third turn in this example it gets 1.1 movement points and can move again..</p>
            <p>Ships with a speed below 1.0 will occasionally "miss" a movement while moving a distance.  Ships with speeds greater than 1.0 will occasionally move 2 (or maybe even 3) tiles in a single turn.</p>
            <p>Ship speed is based on how many warp cores the ship has, and how much extra equiptment it has.. for example heavily armored ships will move more slowly than one with the same engine and no armor.</p>
            <br/>
            <h4>Ship design</h4>
            <p>The ship system in Trekwar has now been completely rewritten, ships are no longer static units you create (like in Civilization or BOTF). A ship is a specific faction specific hull (like Galaxy class for the Federation), this hull has some base stats (armor, hull and X number of "slots"). These slots can be used to insert ship components (which you gain trough research) to enhance your ship, and make individual designs. I'm going to export the list of components in the game to html tomorrow hopefully, and put them on the site database page.</p>
            <p>You can design and store any number of templates which contain a blueprint of components for a particular hull class.</p>
            <p>When you build a new ship you can quickly make it from a existing template, or modify an existing template or specify a truly unique ship.</p>
            <p>Below is a Photoshop illustration of how part of the shipdesigner will look, using the first hull available to players (civilian scoutship).</p>
            <p><asset:image src="/devblog/trekwar_slots.jpg" /></p>


        </div>

    </div>

</body>
</html>