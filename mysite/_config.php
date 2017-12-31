<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	'type' => 'MySQLPDODatabase',
	'server' => 'localhost',
	'username' => 'root',
	'password' => '',
	'database' => 'ss_miniindy_db',
	'path' => ''
);

// Set the site locale
i18n::set_locale('en_US');

Security::setDefaultAdmin('admin','ooEV2015');
Director::set_environment_type("live");

// set admin email -- used for the from address for the newsletters
Email::setAdminEmail('no_reply@skywest.com'); 
//SkyWest Corporate Communications <no_reply@skywest.com>

//Force redirect to www.
//Director::forceWWW();
