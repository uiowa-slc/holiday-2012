<?php
class CardPage extends Page {

	public static $db = array(
	);

	public static $has_one = array(
	);

}
class CardPage_Controller extends Page_Controller {

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
		"view"
	);

	public function init() {
		parent::init();
	}
	
	public function view(){
		$card_id = intval($this->request->getVar('id'));
		$card = DataObject::get_by_id("CustomCard",$card_id);
		
		/* $data = array( 
		 );*/

		
		if($card){
			return $this->customise($card)->renderWith(array('CardPage', 'Page'));
		}else{
			$this->redirectBack();
			
		}
		
		
	}
	

}