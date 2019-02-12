<?php
use Silverstripe\ORM\DataObject;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\LabelField;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\NumericField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\ORM\FieldType\DBInt;
use SilverStripe\Security\Permission;
use SilverStripe\Forms\CompositeField;
use SilverStripe\Forms\OptionsetField;
use SilverStripe\ORM\FieldType\DBBoolean;
use SilverStripe\ORM\FieldType\DBVarchar;


class Page extends SiteTree 
{
    
	private static $db = array(
		'ShowInFooter' => DBBoolean::class,
        'FooterSortOrder' => DBInt::class,
        'ShowSideBar' => DBVarchar::class
	);

	private static $has_one = array();

	private static $icon = 'client/icons/page';

	public function getCMSFields() {
        $f = parent::getCMSFields();

		// remove tabs if user is NOT admin!
		if(!Permission::check('ADMIN')) {
        	$f->removeByName('Behaviour');
        	$f->removeByName('Access');
        	$f->removeByName('GoogleSitemap');
        }
		return $f;
    }

    public function getSettingsFields()
    {
        $f = parent::getSettingsFields();
        $f->addFieldToTab("Root.Settings", OptionsetField::create("ShowSideBar", "Side Bar", [
            "main" => 'Show Main Static Side Bar', "page" => 'Show Page Specific Side Bar', "no" => 'Don\'t Show Any Side Bar'
        ]), "Visibility");

        $f->addFieldToTab("Root.Settings", $Footer = new CompositeField([
            CheckboxField::create("ShowInFooter", "Show in footer menu?"),
            NumericField::create("FooterSortOrder", "Sort Order in Footer"),
        ]));
        // $Footer->setTitle("Footer");

        // $f->addFieldToTab("Root.Settings", new LabelField("FooterLabel", "Footer"), 'ProvideComments');
        // $f->addFieldToTab("Root.Settings",  new TextField("FooterSortOrder", "Sort Order in Footer"), 'FooterLabel');
        // $f->addFieldToTab("Root.Settings", new CheckboxField("ShowInFooter", "Show in footer menu?"), 'FooterSortOrder');
        return $f;
    }

    public function GetStaticSidebar() {
		return DataObject::get('StaticSidebar');
	}

	public function showFooterLinks() {
		return DataObject::get('Page', 'ShowInFooter = 1', 'FooterSortOrder ASC');
    }

    public function ShowSearchForm()
    {
        return $this->renderWith("Includes/Forms/SearchForm");
    }

}
