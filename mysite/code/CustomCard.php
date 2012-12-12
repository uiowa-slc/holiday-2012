<?php
class CustomCard extends DataObject {

	public static $db = array(
		"RecipientName" => "Text",
		"RecipientEmail" => "Text",
		"SenderName" => "Text",
		"Message" => "Text",
		"ChosenGlobe" => "Text",
		"URLSegment" => "Text",
	
	);

	public static $has_one = array(
	);
	
	public function AbsoluteLink(){
		
		$card_holder = DataObject::get_one('CardPage');	
		$card_url = $card_holder->AbsoluteLink().'view/'.$this->ID;
		
		return $card_url;
	}

}
