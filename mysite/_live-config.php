<?php
// live config stuff

$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'mysql51-151.wc2.dfw1.stabletransit.com',
	"username" => '940199_miniindy',
	"password" => 'bVw6ADEw2OAIss',
	"database" => '940199_miniindyrace',
	"path" => '',
);
Security::setDefaultAdmin('admin','ooEV2015');
Director::set_environment_type("live");

// set admin email -- used for the from address for the newsletters
Email::setAdminEmail('no_reply@skywest.com'); //SkyWest Corporate Communications <no_reply@skywest.com>

//Force redirect to www.
//Director::forceWWW();
