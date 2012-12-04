<!DOCTYPE html>
<html lang="en" xmlns:fb="http://ogp.me/ns/fb#">
  <head>
    <meta charset="utf-8">
    <title><% if RecipientName %>Happy Holidays to $RecipientName<% else %>Happy Holidays from Sally & Ken Mason<% end_if %>, and The University of Iowa</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <% if ChosenGlobe %>
    <meta property="og:image" content="{$BaseHref}themes/holiday2012/images/{$ChosenGlobe}_full.png"/>
    <% end_if %>
    <% base_tag %>
    <link href="{$ThemeDir}/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="{$ThemeDir}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="{$ThemeDir}/css/custom.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="{$ThemeDir}/bootstrap/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="{$ThemeDir}/bootstrap/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="{$ThemeDir}/bootstrap/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="{$ThemeDir}/bootstrap/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="{$ThemeDir}/bootstrap/ico/apple-touch-icon-57-precomposed.png">
    
    
    
  </head>

  <body>

	
    <div class="container-wide">
    	$Layout

    </div><!-- end container -->
    
    <div id="audio-player"></div>
    <!--  javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    
    <script src="{$ThemeDir}/js/jplayer/jquery.jplayer.min.js"></script>
    <script src="{$ThemeDir}/js/equalHeights.js"></script>

    <script type="text/javascript" src="{$ThemeDir}/js/modernizr.js"></script>
    <% if not UsingIE8orLess %>
	    <script src="{$ThemeDir}/js/jquery.transit.min.js"></script>
	    <script type="text/javascript" src="{$ThemeDir}/js/snow/js/ThreeCanvas.js"></script>
		<script type="text/javascript" src="{$ThemeDir}/js/snow/js/Snow.js"></script>
		<script type="text/javascript" src="{$ThemeDir}/js/custom-snow.js"></script>
	<% end_if %>

	<% if UsingIE8orLess %>
	<script type="text/javascript" src="{$ThemeDir}/js/snow_ie8/snowstorm.js"></script>
	<script type="text/javascript">
	snowStorm.snowColor = '#fff'; // blue-ish snow!?
	snowStorm.flakesMaxActive = 512;  // show more snow on screen at once
	snowStorm.flakesMax = 256;  
	snowStorm.useTwinkleEffect = false;
	snowStorm.animationInterval = 20;
	snowStorm.zIndex = 0;	
	snowStorm.flakeWidth = 12;            // Max pixel width reserved for snow element
	snowStorm.flakeHeight = 12; 
 // let the snow flicker in and out of view
	</script>
	<% end_if %>
	
	<script type="text/javascript">
		var cardResizeTimer;
		
		$(window).resize(function() {
			//alert("test");
		    clearTimeout(cardResizeTimer);
		    cardResizeTimer = setTimeout(doEqualHeights, 100);
		});
		
		function doEqualHeights() {
			//alert("test");
			//$('.card-form-container').equalHeights();

		}
		
	
	</script>

    <script type="text/javascript">
    
		$(window).scroll(function() {
		
			if(!$(".make-splash").hasClass("unopened")){

			    if ($(this).scrollTop() > 100) {
			        $(".make-splash").fadeOut();
			    }
			    
			    if ($(this).scrollTop() < 100) {
			        $(".make-splash").fadeIn();
			    }		    
		    }
	
		});
		$(document).ready(function() {
			/* Hide the 'Make Yours' Link */
			$('.make-splash').hide();	
			
			/* Hide the Globe Creator */		
			$('#secondary-content').hide();
			
			/* Make Globe 1 the default input value */
			$("#CardForm_CardForm_ChosenGlobe").val('globe1');
			

			
			/* Modernizr placeholder code */
			if(!Modernizr.input.placeholder){

				$('[placeholder]').focus(function() {
				  var input = $(this);
				  if (input.val() == input.attr('placeholder')) {
					input.val('');
					input.removeClass('placeholder');
				  }
				}).blur(function() {
				  var input = $(this);
				  if (input.val() == '' || input.val() == input.attr('placeholder')) {
					input.addClass('placeholder');
					input.val(input.attr('placeholder'));
				  }
				}).blur();
				
				$('[placeholder]').parents('form').submit(function() {
				  $(this).find('[placeholder]').each(function() {
					var input = $(this);
					if (input.val() == input.attr('placeholder')) {
					  input.val('');
					}
				  })
				});
			}

		});    
				//end document ready
    
	    $('.card-front').click(function() {
			  $('.card-front').animate({
			    opacity: 0.0,
			   // height: 'toggle'
			  }, 500, function() {
			    // Animation complete.
			  });
			  
			  var cardOpened = true;
			  
			  $('#secondary-content').delay(1800).fadeIn();
			  $('.make-splash').removeClass("unopened");
			  $('.make-splash').delay(1800).fadeIn();
			  
			  			
			/* Jplayer for lovely holiday music */
			
			/* $("#audio-player").jPlayer({
				   ready: function () {
				    $(this).jPlayer("setMedia", {
				     mp3: "themes/holiday2012/media/holiday.mp3"
				    }).jPlayer("play");
				   },
				   swfPath: "themes/holiday2012/js/jplayer/",
				   supplied: "mp3",

			});*/


		});
		
		$('#globe1-chooser').addClass("selected");
		
		$('.globe-preview').click(function(){
		
			var id = this.id;
			$("#CardForm_CardForm_ChosenGlobe").val(id.replace("-chooser",""));
		
			$('.globe-preview').removeClass("selected");
			$(this).addClass("selected");
			
			$('.inside-creator').removeClass("globe1-chooser");
			$('.inside-creator').removeClass("globe2-chooser");
			$('.inside-creator').removeClass("globe3-chooser");
			$('.inside-creator').addClass(id);
			$('.preview-outside-image').attr("src", 'themes/holiday2012/images/'+id.replace("-chooser","")+'_outside_preview.png');
			
			$('.card-form-container').removeClass("globe1-chooser");
			$('.card-form-container').removeClass("globe2-chooser");
			$('.card-form-container').removeClass("globe3-chooser");
			$('.card-form-container').addClass(id);
		
		
		});
		
		//$('.card-form-container').equalHeights();
		
    </script>

	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1&appId=288836481237699";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>
	

  </body>
</html>
