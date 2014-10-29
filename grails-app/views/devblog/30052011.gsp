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

            <h3>May 30 2011</h3>
            <p>Alpha testing is really getting close now (only 8 hours of work). There is only 1 development task left, which is completing the implementation of space combat (fleet vs. fleet), and that should be around 7 hours.</p>
            <p>This means that pre-alpha testing can start some time in June (still got 2-3 slots open if anyone want to test, just email me)</p>
            <p>I'm done with the user interface stuff that needed to be in place for the pre-alpha.</p>
            <p>I tried showing the path when giving the order to move a fleet, but had some problems with it:
            <asset:image src="/devblog/trekwar_path_bug.png" />
            <br/>

            <p>So I just went with a simple animation on the selected tile instead, I'll probably make the path thing work by alpha2 or beta.</p>
            <br/>
            <p>Invading enemy starsystems now work, and when you attack the battle is simulated 100 times, and you can see the chance of winning:</p>
            <asset:image src="/devblog/trekwar_ground_assault.png" />
            <br>
            <p>Here I just had 10 troops left because I just wiped out Gowron, so there was practically no way to win even tough I had better technology.</p>

            <br/>
            <p>Also I don't think I've posted pictures from Turn Report yet, so here is a little bit of it (very spartan at the moment):</p>
            <asset:image src="/devblog/trewar_turn_report.png" />
            <br/>
            <br/>
            <br/>
            <p>Next Devblog post should hopefully have the results of the pre-alpha test :)</p>

        </div>

    </div>

</body>
</html>