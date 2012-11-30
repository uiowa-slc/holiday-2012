 <div class="jumbotron">
        <h1><img src="{$ThemeDir}/images/happyholidays.png" alt="Happy Holidays!"/></h1>
        
        <div class="card-container">
        	<div class="card" id="card" >
	        	<img src="{$ThemeDir}/images/card_front.png" class="card-front"  />
		       <img src="{$ThemeDir}/images/president_card.png" alt="From Sally and Ken Mason" class="card-inside"/>
        	</div>
        </div>
       <!-- <a class="btn btn-large btn-success" href="#">Sign up today</a>-->
      </div>

      <div id="globe-creator">
	      <h2><img src="{$ThemeDir}/images/sendgreeting_text.png" alt="Send Your Own Holiday Greeting" /></h2>
	      <div class="globe-creator-container">
	      
			<div class="row-fluid">
				<h3><img src="{$ThemeDir}/images/chooseimage_text.png" alt="Choose an Image:" /></h3>
			
				<div class="row-fluid">
					<div class="span4 globe-preview" id="globe1-chooser">
						<img src="{$ThemeDir}/images/globe1_preview.png"  />
					
					</div>
					<div class="span4 globe-preview" id="globe2-chooser">
						<img src="{$ThemeDir}/images/globe2_preview.png" />
					
					</div>	      	
					<div class="span4 globe-preview" id="globe3-chooser">
						<img src="{$ThemeDir}/images/globe3_preview.png" />
					</div>	      	
				</div><!-- end row-fluid -->
				
				<hr>
					<h2><img src="{$ThemeDir}/images/fillcard_text.png" alt="Fill Out the Card" /></h2>
					
		$CardForm
					
		</div><!-- end row-fluid -->
	      
	      </div><!-- end globe-creator-container -->

	    </div> <!-- end globe-creator -->
