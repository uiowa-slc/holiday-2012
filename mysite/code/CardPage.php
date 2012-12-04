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
	
	public static $url_handlers = array(
        '$ID' => 'view'
    );
	
	public function view($request){
		$card_id = intval($request->param('ID'));
		$card = DataObject::get_by_id("CustomCard",$card_id);
		
		if($card){
			return $this->customise($card)->renderWith(array('CardPage', 'Page'));
		}else{
			$this->redirectBack();
			
		}
	}
	
	public function StatusMessage(){
		$message = $this->getRequest()->getVar('message');
		
		if($message == 'sent'){
			return 'Your card was successfully sent! Preview and share it below:';
			print("success");
		}
		
		if($message == 'saved'){
			return 'Your card is saved below. Share it with your loved ones!';
			
		}
				
		
	}
	

}