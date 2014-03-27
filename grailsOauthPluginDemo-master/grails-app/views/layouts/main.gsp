<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title><g:layoutTitle default="Grails Oauth Plugin Demo"/></title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">

    <g:layoutHead/>
    <r:layoutResources/>
</head>

<body>
<div id="grailsLogo" style="padding-bottom: 10px; padding-top: 10px; text-align: center">
    Grails Oauth Plugin Demo
</div>

<div style="padding: 10px">
    <g:layoutBody/>
</div>

<div class="footer">
    <a href="https://github.com/evmandre/Devproject/tree/master/grailsOauthPluginDemo-master">Grails Oauth Plugin Demo</a>
</div>

<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<g:javascript library="application"/>

<div id="container">
	
	<p>Below is an example of the "classic" Facebook Share Button on a non-Facebook Web page.</p>
	
	<div id="fb-root"></div>
	
	<!-- USE 'Asynchronous Loading' version, for IE8 to work
	http://developers.facebook.com/docs/reference/javascript/FB.init/ -->
	
	<script>
	  window.fbAsyncInit = function() {
		FB.init({
		  appId  : 'ap_id',
		  status : true, // check login status
		  cookie : true, // enable cookies to allow the server to access the session
		  xfbml  : true  // parse XFBML
		});
	  };
	
	  (function() {
		var e = document.createElement('script');
		e.src = document.location.protocol + '//connect.facebook.net/en_US/all.js';
		e.async = true;
		document.getElementById('fb-root').appendChild(e);
	  }());
	</script>
	
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js" type="text/javascript"></script>
	
	<img id = "share_button" src = "http://1.bp.blogspot.com/-MDx9Ky2zmok/Ucl52kGbtaI/AAAAAAAACXE/bTombFUpX-4/s1600/FaceIcon.png">
	
	<script type="text/javascript">
	$(document).ready(function(){
	$('#share_button').click(function(e){
	e.preventDefault();
	FB.ui(
	{
	method: 'feed',
	name: 'Diablo III Blog',
	link: 'http://diablo3blog.blogspot.dk/',
	picture: 'http://diablo3wallpaper.com/file/78/600x338/16:9/diablo-3-reaper_1434083937.jpg',
	caption: 'Welcome to Reaper of Souls',
	description: 'The Diablo 3 blog provides news and tutorials for the game',
	message: ''
	});
	});
	});
	</script>
	
		
	</div>

<r:layoutResources/>
</body>
</html>
