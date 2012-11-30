<form class="inside-form" $FormAttributes >
				<div class="row-fluid card-form-container">
					<div class="span6">
						<div class="front-creator">
						

						
						</div>
					
					
					</div>
					
		
					
					<div class="span6 inside-creator">
					
						<div class="inside-card">
					
							
							 <fieldset>
						
						        <legend>Fill out the following details:</legend>
						        $Fields.dataFieldByName(SecurityID)      
						        $Fields.dataFieldByName(ChosenGlobe)      

						        <div class="row-fluid">

						        	<div class="span6 recipient-input">
								        <label for="recipient-name">Recipient's Name</label>
								        $Fields.dataFieldByName(RecipientName)
								        <label for="recipient-email">Recipient's Email Address</label>
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
						
<% if Actions %>
    <div class="Actions">
        <% loop Actions %>$Field<% end_loop %>
    </div>
<% end_if %>

			</form>
