<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Template &middot; Bootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
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

  <body onload="snowInit();">

    <div class="container-wide">
    	$Layout

    </div><!-- end container -->
    <!--  javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="{$ThemeDir}/js/equalHeights.js"></script>

    <script type="text/javascript" src="{$ThemeDir}/js/modernizr.js"></script>

    <script src="{$ThemeDir}/js/jquery.transit.min.js"></script>
    <script type="text/javascript" src="{$ThemeDir}/js/snow/js/ThreeCanvas.js"></script>
	<script type="text/javascript" src="{$ThemeDir}/js/snow/js/Snow.js"></script>
	<script type="text/javascript" src="{$ThemeDir}/js/custom-snow.js"></script>
	
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

		    if ($(this).scrollTop() > 100) {
		        $(".make-splash").fadeOut();
		    }
		    
		    if ($(this).scrollTop() < 100) {
		        $(".make-splash").fadeIn();
		    }		    
		    
	
		});
		$(document).ready(function() {
		
			$('.make-splash').hide();			
			$('#globe-creator').hide();
			
			$("#CardForm_CardForm_ChosenGlobe").val('globe1');

			
			
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
			  
			  $('#globe-creator').delay(1800).fadeIn();
			  $('.make-splash').removeClass("unopened");
			  $('.make-splash').delay(1800).fadeIn();

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



  </body>
</html>
