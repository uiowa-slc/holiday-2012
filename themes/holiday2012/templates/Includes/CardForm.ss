<form class="inside-form" $FormAttributes >
				<div class="row-fluid card-form-container">
					<div class="span6 front-creator-container hidden-phone">
						<div class="front-creator">
						<img class="preview-outside-image" src="{$ThemeDir}/images/globe1_outside_preview.png" />

						
						</div>
					
					
					</div>
					
		
					
					<div class="span6 inside-creator">
					
						<div class="inside-card">
					
							
							 <fieldset>
						
						        <!--<legend>Fill out the following details:</legend>-->
						        $Fields.dataFieldByName(SecurityID)      
						        $Fields.dataFieldByName(ChosenGlobe)      

						        <div class="row-fluid">

						        	<div class="span12 recipient-input">
								        <label for="recipient-name">Recipient's Name (optional)</label>
								        $Fields.dataFieldByName(RecipientName)
								        <label for="recipient-email">Recipient's Email Address (optional)</label>
								      $Fields.dataFieldByName(RecipientEmail)
								        					        					        
								      <label for="message">Your Message</label>
							    
								      	$Fields.dataFieldByName(Message)									        
						        	</div><!-- end span6 -->
			
						        </div><!-- end row-fluid-->
						        
						        
					        
	
						      </fieldset>
	
							
							
						</div><!-- end inside-card -->
						
					<!-- end inside-form -->
						</div><!-- end span6 inside-creator -->	

				</div>
				
						<h2><img src="{$ThemeDir}/images/captcha_text.png" alt="Enter the Captcha Below" /></h2>
						<div id="captcha-container">
						<center>
						$Fields.dataFieldByName(Captcha)	
						</center>
						</div>								        	
<% if Actions %>
    <div class="Actions">
        <% loop Actions %>$Field<% end_loop %>
    </div>
<% end_if %>

			</form>
