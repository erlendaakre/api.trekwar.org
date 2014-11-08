<!doctype html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<g:render template="/navbarTemplate" model="[nav_support: 'active']"/>

<div class="container">

    <div class="hero-unit">
        <h1>Support</h1>
        <p>If you have having trouble with Trekwar you should first check out the Getting started guide, and if you still are having problems you can check out the wiki and the forums</p>
    </div>

    <div class="row">
        <div class="span3">
            <h2>Game Guide</h2>
            <p></p>
            <p><a class="btn btn-primary btn-large" href="gameguide">Read Getting Started Guide</a></p>
        </div>

        <div class="span3">
            <h2>FAQ</h2>
            <p>Some <g:link url="faq">frequently asked questions</g:link>, infrequently asked ones, question nobody would ever dare ask, and ones I just made up</p>
        </div>

        <div class="span3">
            <h2>Community</h2>
            <p>Unfortunately the website that hosted the forum (star-trek-games.com) has ceased to be, so all the old forum posts relating to the game has disappeared.</p>
            <p><a href="http://trekwar.proboards.com/" class="btn btn-primary btn-large">Visit new forum</a></p>
        </div>

        <div class="span3">
            <h2>Bug Report</h2>
            <p>If you come across any bugs while testing the game please <g:link url="contact">contact me</g:link>. <b>But remember</b> to check out the list of open bugs (below) first</p>
        </div>

        <g:render template="/bugListTemplate"></g:render>

    </div>

</body>
</html>