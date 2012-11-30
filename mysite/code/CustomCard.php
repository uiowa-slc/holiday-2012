<?php
class CustomCard extends DataObject {

	public static $db = array(
		"RecipientName" => "Text",
		"RecipientEmail" => "Text",
		"Message" => "Text",
		"ChosenGlobe" => "Text"
	
	);

	public static $has_one = array(
	);

}
