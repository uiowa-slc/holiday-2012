<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'root',
	"password" => 'root',
	"database" => 'holiday2012',
	"path" => '',
);
Director::set_environment_type("dev");
MySQLDatabase::set_connection_charset('utf8');

// Set the current theme. More themes can be downloaded from
// http://www.silverstripe.org/themes/
SSViewer::set_theme('simple');
Security::setDefaultAdmin('admin','nimlok22');
// Set the site locale
i18n::set_locale('en_US');

// Enable nested URLs for this site (e.g. page/sub-page/)
if (class_exists('SiteTree')) SiteTree::enable_nested_urls();

RecaptchaField::$public_api_key = '6LcjsAgAAAAAAD6MXE7QNLusIBMajgpfK_EWjL3C';
RecaptchaField::$private_api_key = '6LcjsAgAAAAAAJNAXp7BiEvEas6scIeWzQdaS87c';

SpamProtectorManager::set_spam_protector('RecaptchaProtector');