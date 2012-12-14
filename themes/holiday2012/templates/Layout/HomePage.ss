 <div class="jumbotron">
        <h1><img src="{$ThemeDir}/images/happyholidays.png" alt="Happy Holidays!"/></h1>
      <a href="#secondary-content"><img src="{$ThemeDir}/images/make_splash.png" alt="Make Your Own Snow Globe!" class="make-splash unopened" /></a>
        <div class="card-container">
        	<div class="card custom" id="card" >
        		<div id="ie8_snowcontainer">
        		
        		</div>
    		<div class="custom-card-text">
	        		<p class="custom-card-to"> <span></span></p>
	        		<p class="message dsl">
	        			Happy Holidays from The University of Iowa!<br />
		        		 Make and send your own card below.
	        		</p>
        		</div>
	        	<img src="{$ThemeDir}/images/card_front.png" class="card-front"  />
		       <img src="{$ThemeDir}/images/globe2_full.png" alt="An example card" class="card-inside"/>
        	</div>
        </div>
       <!-- <a class="btn btn-large btn-success" href="#">Sign up today</a>-->
      </div>
      
      <div id="secondary-content">
	      <% include GlobeCreator %>

	    </div> <!-- end secondary-content -->
