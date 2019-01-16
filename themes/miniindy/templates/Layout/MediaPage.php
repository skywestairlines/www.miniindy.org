<?php
class MediaPage extends Page {

	public static $db = array(
		'ShowInFooter' => 'Boolean',
		'FooterSortOrder' => 'Int'
	);

	public static $has_one = array();
	
	static $icon = 'mysite/icons/page';
	
	public function getCMSFields() {
		$f = parent::getCMSFields();
		$f->addFieldToTab("Root.Behaviour", new TextField("FooterSortOrder", "Sort Order in Footer"), 'ProvideComments');
		$f->addFieldToTab("Root.Behaviour", new CheckboxField("ShowInFooter", "Show in footer menu?"), 'FooterSortOrder');
		
		//$fields->addFieldToTab('Root.FeedbackForm', new CheckboxField('ShowFeedbackForm', 'Show Feedback Form on this page?'));
		//$fields->addFieldToTab('Root.FeedbackForm', new WidgetAreaEditor('myWidgets'));
		
		// remove tabs if user is NOT admin!
		if(!Permission::check('ADMIN')) {
        	$f->removeByName('Behaviour');
        	$f->removeByName('Access');
        	$f->removeByName('GoogleSitemap');
        	//$fields->removeByName('Metadata');
        	//$fields->removeByName('FeedbackForm');
        }
		return $f;
	}

}
class MediaPage_Controller extends Page_Controller {

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
	/**
	 * allowed_actions
	 * 
	 * @var mixed
	 * @access public
	 * @static
	 */
	public static $allowed_actions = array (
	);

	/**
	 * init function.
	 * 
	 * @access public
	 * @return void
	 */
	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
		Requirements::themedCSS('layout'); 
		Requirements::themedCSS('typography'); 
		Requirements::themedCSS('form');
		Requirements::themedCSS('dropdown');
		//$themeFolder . '/css/dropdown.css',
		
		// clearing search box when user clicks in it
		// this conflicts with FlickrServices
		Requirements::javascript("http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js");
		Requirements::javascript("mysite/javascript/jquery.color.fade.js");
		Requirements::javascript("mysite/javascript/jquery.expanding.menu.js");
		Requirements::javascript("mysite/javascript/expandCustom.js");
		#Requirements::javascript("gallery/javascript/prototype.js");
		//Requirements::javascript("http://ajax.googleapis.com/ajax/libs/scriptaculous/1.8.3/scriptaculous.js");
		#Requirements::javascript( "gallery/javascript/effects.js" );
		#Requirements::javascript( "gallery/javascript/lightwindow.js" );
	}
	
	/**
	 * SearchForm function.
	 * 
	 * @access public
	 * @return void
	 */
	function SearchForm() {
		$searchText = isset($_REQUEST['Search']) ? $_REQUEST['Search'] : '';
		$fields = new FieldSet(
	      	new TextField("Search", "", $searchText)
	  	);
		$actions = new FieldSet(
	      	new FormAction('results', 'Search')
	  	);

	  	return new SearchForm($this, "SearchForm", $fields, $actions);
	}
	
	/**
	 * Process and render search results function.
	 * 
	 * @access public
	 * @param mixed $data
	 * @param mixed $form
	 * @return void
	 */
	function results($data, $form){
	  	$data = array(
	     	'Results' => $form->getResults(),
	     	'Query' => $form->getSearchQuery(),
	      	'Title' => 'Search Results'
	  	);

	  	return $this->customise($data)->renderWith(array('Page_results', 'Page'));
	}
	
	/**
	 * GetStaticSidebar function. custom side bars for Reg & hotels
	 * 
	 * @access public
	 * @return void
	 */
	public function GetStaticSidebar() {
		return DataObject::get('StaticSidebar');
	}
	
	public function showFooterLinks() {
		return DataObject::get('Page', 'ShowInFooter = 1', 'FooterSortOrder ASC');
	}
}