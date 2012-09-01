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

            <h3>March 07 2010</h3>
            <p>I've recently pretty much finished up the Cargo system, it is now possible to design and build ships that has working mining lasers and bussard collectors. These ships can be moved to a nebula or asteroid field, and if they are equipped with cargo modules, they harvest resources (X number of resources added per turn, depending on the level and number of collectors/lasers).</p>
            <p>The user can then order the ship back to a planet (which needs to have either a deuterium processing plant or a ore refinery) and deposit the resources.</p>
            <p>A starsystem also needs to have deuterium silos or ore storage warehouses to store these resources, and ore/deuterium can be transferred between system by any civilian ship that has a cargo module. This adds a logistical element to the game, as your ship producing, or strategically placed systems will need a steady supply of deuterium to fuel the starships on the front line.</p>
            <br/>

            <h4>CargoTransferWindow taking form</h4>
            <br/>
            <p>Initial design on paper:</p>
            <img src="/images/devblog/making_gui_1.jpg" />
            <br/><br/>
            
            <p>UI element made in photoshop, with mock data:</p>
            <img src="/images/devblog/making_gui_2.png" />
            <br/><br/>
        
            <p>Setting up the GUI component</p>
            <img src="/images/devblog/making_gui_3.jpg" />
            <br/><br/>
        
            <p>Fully working drag&drop window, ready for the user testing</p>
            <img src="/images/devblog/making_gui_4.jpg" />
            <br/>

        </div>

    </div>

</body>
</html>