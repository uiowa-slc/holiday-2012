<?php
class Page extends SiteTree {

	public static $db = array(
	);

	public static $has_one = array(
	);

}
class Page_Controller extends ContentController {

	function get_user_browser() { 
		
	}
	

		
	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public static $allowed_actions = array (
		"doCreateCard",
		"usingIE8orLess"
	);
	
	function usingIE8orLess(){
		$browser = new Browser();
		//print_r($browser);
	    if( $browser->getBrowser() == Browser::BROWSER_IE && $browser->getVersion()  <= 8 ) {
	    	return true;
	    }else{
		    return false;
	    }
	}
	
	public function doCreateCard($data,$form){
		
		$card = new CustomCard();
		$form->saveInto($card); 
		$card->write();
		
		//Send card email and redirect to the card
		if($card){
		
			if($card->RecipientEmail){
				$body = '
				<center>
				<p>Someone sent you a greeting. Tap or click the image below to see it.</p>
				<p>If you can\'t see the image, <a href="'.$card->AbsoluteLink().'">open your card here.</a></p>
				<p><a href="'.$card->AbsoluteLink().'"><img src="'.Director::baseURL().'/themes/holiday2012/images/'.$card->ChosenGlobe.'_outside_preview.png" /></a></p>
				</center>
				
				';
			    
		        $email = new Email(); 
			    $email->setTo($card->RecipientEmail); 
			    $email->setFrom('imu-web@uiowa.edu'); 
			    $email->setSubject('Someone Sent You a Holiday Greeting!'); 
			    $email->setBody($body); 
			    $email->send();  
			    $this->redirect($card->AbsoluteLink().'?message=sent');

			}
		    
		
		
			   $this->redirect($card->AbsoluteLink().'?message=saved');
		}
		


	}
	
	public function CardForm() {
		$form = new CardForm($this, "CardForm"); 
		$protector = SpamProtectorManager::update_form($form, 'Message');
	    return $form;
	}
	

	public function init() {
		parent::init();

	}

}