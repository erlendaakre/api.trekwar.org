<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<g:render template="/navbarTemplate" model="[nav_home: 'active']"/>

<div class="container">

    <div class="hero-unit-index">
        <p>Trekwar is a free to play open source turn based multiplayer strategy fan game currently under development. The game takes place in the Star Trek universe and features classic 4X strategical gameplay</p>
        <p>    For info on the game, read the short Introduction, the FAQ or check out the latest <g:link url="screenshots">Screenshots</g:link></p>
    </div>

    <div class="row">
        <g:render template="/devstatusTemplate"/>

        <g:render template="/newsTemplate"/>

        <g:render template="/loginTemplate"/>

    </div>

</body>
</html>