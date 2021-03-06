<?php
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Control\Director;
use SilverStripe\Forms\FormAction;
use SilverStripe\View\Requirements;
use SilverStripe\Versioned\Versioned;
use SilverStripe\CMS\Search\SearchForm;
use SilverStripe\CMS\Controllers\ContentController;


class PageController extends ContentController
{

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
	private static $allowed_actions = array (
	);

	/**
	 * init function.
	 *
	 * @access public
	 * @return void
	 */
	public function init() {
        parent::init();

        Requirements::css('dist/css/main.css');
		Requirements::css('dist/css/vendor.css');
        Requirements::css('dist/css/miniindy.css');

        Requirements::javascript('dist/js/main.js');
		Requirements::javascript('dist/js/vendor.js');
		Requirements::javascript('dist/js/miniindy.js');
		// $ThemedCSS = array(
		// 	'layout', 'typography', 'form', 'dropdown'
		// );

		// if(Director::isLive()){
		// 	Requirements::combine_files('css/styles.css', $ThemedCSS);
		// }
		// else{
		// 	foreach ($ThemedCSS as $css) Requirements::themedCSS($css);
		// }

		// Requirements::javascript("//ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js");
		// Requirements::javascript("mysite/javascript/jquery.color.fade.js");
		// Requirements::javascript("mysite/javascript/jquery.expanding.menu.js");
		// Requirements::javascript("mysite/javascript/expandCustom.js");
	}

	// private static $owns = [
    //     'HomepageLogo'
    // ];

    // public function onAfterWrite()
    // {
    //     parent::onAfterWrite();
    //     if ($this->HomepageLogo()->exists() && !$this->HomepageLogo()->isPublished()) { 
    //         $this->HomepageLogo()->doPublish(); 
    //     } 
    // }

	/**
	 * SearchForm function.
	 *
	 * @access public
	 * @return void
	 */
	// function SearchForm() {
	// 	$searchText = isset($_REQUEST['Search']) ? $_REQUEST['Search'] : '';
	// 	// $fields = new FieldList(
	//     //   	new TextField("Search", "", $searchText)
	//   	// );
	// 	$actions = new FieldList(
	//       	new FormAction('results', 'Search')
	//   	);

	//   	return new SearchForm($this, SearchForm::class, $fields, $actions);
	// }

	/**
	 * Process and render search results function.
	 *
	 * @access public
	 * @param mixed $data
	 * @param mixed $form
	 * @return void
	 */
	// function results($data, $form){
	//   	$data = array(
	//      	'Results' => $form->getResults(),
	//      	'Query' => $form->getSearchQuery(),
	//       	'Title' => 'Search Results'
	//   	);

	//   	return $this->customise($data)->renderWith(array('Page_results', 'Page'));
	// }

	/**
	 * GetStaticSidebar function. custom side bars for Reg & hotels
	 *
	 * @access public
	 * @return void
	 */

	// public function getPublishedPages() {
	// 	$PublishedPages = Versioned::get_by_stage('SiteTree', 'Live');
	// 		return $PublishedPages;
	// 	}

	// public function redirection() {
	// 	if($this->getPublishPages() == true){
	// 		return $this->Director::currentPage();
	// 	}
	// 	else{
	// 		return $this->redirect('/');
	// 	}
	// }

}
