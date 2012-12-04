<?php

class CardForm extends Form {
 
    public function __construct($controller, $name) {
		$recaptchaField = new RecaptchaField('MyCaptcha');
		$recaptchaField->jsOptions = array('theme' => 'clean'); // optional
        $fields = new FieldList(
        
            HiddenField::create("ChosenGlobe"),
            TextField::create("RecipientName")->setAttribute('placeholder', 'Recipient\'s Name (optional)'),
            EmailField::create("RecipientEmail")->setAttribute('placeholder', 'Recipient\'s Email Address (optional)'),
            TextareaField::create("Message")->setAttribute('placeholder', 'Sincerely, ')->setAttribute('maxlength', '400')
            //$recaptchaField
            
        );

        $actions = new FieldList(FormAction::create("doCreateCard")->setTitle("Send and Share your Card")->setAttribute('src', 'themes/holiday2012/images/send_button.png'));
        $requiredFields = new RequiredFields("ChosenGlobe","Message");
        
        parent::__construct($controller, $name, $fields, $actions);
    }
     
    public function forTemplate() {
        return $this->renderWith(array($this->class, 'Form'));
    }
}


?>