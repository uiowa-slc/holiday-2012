<?php
class Page extends SiteTree {

	public static $db = array(
	);

	public static $has_one = array(
	);

}
class Page_Controller extends ContentController {

	
	
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
		"doCreateCard"
	);
	
	public function doCreateCard($data,$form){
		
		//print_r($data);
		$card = new CustomCard();
		$form->saveInto($card); 
		
		$card->write();
		
		print_r("<pre>");
		print_r($card);
		print_r("</pre>");
		
		
	}
	
	public function CardForm() {
	    return new CardForm($this, "CardForm");
	}
	

	public function init() {
		parent::init();

	}

}