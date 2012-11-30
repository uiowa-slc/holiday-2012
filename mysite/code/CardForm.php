<?php

class CardForm extends Form {
 
    public function __construct($controller, $name) {
    	
        $fields = new FieldList(
        
            HiddenField::create("ChosenGlobe"),
            TextField::create("RecipientName")->setAttribute('placeholder', 'Recipient\'s Name'),
            EmailField::create("RecipientEmail")->setAttribute('placeholder', 'Recipient\'s Email Address'),
            TextareaField::create("Message")->setAttribute('placeholder', 'Sincerely, ')
            
        );
        $actions = new FieldList(FormAction::create("doCreateCard")->setTitle("Send and Share your Card"));
        parent::__construct($controller, $name, $fields, $actions);
    }
     
    public function forTemplate() {
        return $this->renderWith(array($this->class, 'Form'));
    }
}


?>