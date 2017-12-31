<?php

global $project;
$project = 'mysite';

global $databaseConfig;


MySQLDatabase::set_connection_charset('utf8');

// This line set's the current theme. More themes can be
// downloaded from http://www.silverstripe.org/themes/
SSViewer::set_theme('miniindy');

// Set the site locale
i18n::set_locale('en_US');

// enable nested URLs for this site (e.g. page/sub-page/)
SiteTree::enable_nested_urls();

Object::add_extension('SiteConfig', 'EventDate');

// TinyMCE edits
//HtmlEditorConfig::get('cms')->enablePlugins('../jsparty/tiny_mce2/plugins/media'); // enables plugin

HtmlEditorConfig::get('cms')->insertButtonsAfter('formatselect', 'fontsizeselect');				// font size selector
HtmlEditorConfig::get('cms')->insertButtonsAfter('fontsizeselect', 'forecolor');				// font color selector

SortableDataObject::add_sortable_classes(array(
	'SliderImage'
));

/*
	branding the CMS...
*/
LeftAndMain::setLogo(
	'mysite/icons/raceCarIcon.png',
	'width: 16px; height: 16px; margin-top: 8px; margin-right:15px;'
);
LeftAndMain::setApplicationName(
	'Mini Indy CMS',				// application name (seen in cms footer with version number
	'Mini Indy',					// text/link in upper right corner
	Director::BaseURL()				// href for the upper right corner and footer
);

@include '_local-config.php';
@include '_live-config.php';
