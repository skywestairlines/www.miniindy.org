<?php

global $project;
$project = 'mysite';

global $database;
$database = 'dev_miniindy_db';

require_once('conf/ConfigExamplePhpureFromEnv.php');

// Set the site locale
i18n::set_locale('en_US');