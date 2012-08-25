<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
	</head>
	<body>

    <!-- Main hero unit for a primary marketing message or call to action -->
    <div class="hero-unit">
        <p>Trekwar is a free to play open source turn based multiplayer strategy fan game currently under development. The game takes place in the Star Trek universe and features classic 4X strategical gameplay
        </p>
        <p>    For info on the game, read the short Introduction, the FAQ or check out the latest <a href="#screenshots">Screenshots</a></p>
    </div>

    <!-- Example row of columns -->
    <div class="row">
        <g:render template="/devstatusTemplate"/>

        <g:render template="/newsTemplate"/>

        <g:render template="/loginTemplate"/>

    </div>



			<div id="controller-list" role="navigation">
				<h2>Available Controllers:</h2>
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
					</g:each>
				</ul>
			</div>

	</body>
</html>
