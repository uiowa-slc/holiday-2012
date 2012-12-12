<div id="fb-root"></div>

 <div class="jumbotron">
 	<% if StatusMessage  %>
 		<h2 class="status-message">$StatusMessage</h2>

 <div id="card-share">
 		<p class="absolute-link"><a href="$AbsoluteLink">$AbsoluteLink</a></p>
		<div class="addthis_toolbox addthis_default_style addthis_32x32_style">
			<a class="addthis_button_preferred_1"></a>
			<a class="addthis_button_preferred_2"></a>
			<a class="addthis_button_preferred_3"></a>
			<a class="addthis_button_preferred_4"></a>
			<a class="addthis_button_compact"></a>
			<a class="addthis_counter addthis_bubble_style"></a>
		</div>
		<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-50be16233e8b8adc"></script>
						<!-- AddThis Button END -->
	</div><!-- end card-share -->
<% end_if %>

        <h1><img src="{$ThemeDir}/images/happyholidays.png" alt="Happy Holidays!"/></h1>
    
        <a href="#secondary-content"><img src="{$ThemeDir}/images/make_splash.png" alt="Make Your Own Snow Globe!" class="make-splash unopened" /></a>        
        <div class="card-container">
        	<div class="card custom" id="card" >
        		<div class="custom-card-text">
        		<% if $RecipientName %>
	        		<p class="custom-card-to"><img src="{$ThemeDir}/images/to_text.png" /> <span>$RecipientName</span></p>
	        		<% end_if %>
	        		<p class="message">
		        		
		        		<% if $Message == 0 %>
		        			$Message1
		        		<% else_if $Message == 1 %>
		        			$Message2
		        		<% else_if $Message == 2 %>
		        			$Message3
		        		<% end_if %> 
		        		<br />
		        		$SenderName
	        		</p>
        		</div>
	        	<img src="{$ThemeDir}/images/card_front.png" class="card-front"  />
		       <img src="{$ThemeDir}/images/{$ChosenGlobe}_full.png" alt="Card Background Image" class="card-inside"/>
		       <div class="clear"></div>
		       
		  </div><!-- end card -->
        	
        </div><! --end card container -->
           <!-- <p class="make-your-own"><a href="{$BaseHref}">Make your own card!</a></p>-->

           <div class="clear"></div>
           

       <!-- <a class="btn btn-large btn-success" href="#">Sign up today</a>-->
       
       
</div><!-- end jumbotron -->
<div id="secondary-content">
       <% include GlobeCreator %>

</div>

      