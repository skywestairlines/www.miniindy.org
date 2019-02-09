<?php

use SilverStripe\Forms\TextField;
use SilverStripe\Forms\NumericField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\CurrencyField;
use SilverStripe\ORM\FieldType\DBInt;
use SilverStripe\ORM\FieldType\DBText;
use SilverStripe\ORM\FieldType\DBBoolean;
use SilverStripe\ORM\FieldType\DBVarchar;
use SilverStripe\ORM\FieldType\DBCurrency;
use SilverStripe\ORM\FieldType\DBHTMLText;
use SilverStripe\Forms\HtmlEditor\HTMLEditorField;
use Symbiote\MultiValueField\Fields\KeyValueField;
use Symbiote\MultiValueField\ORM\FieldType\MultiValueField;

class RegistrationPage extends Page
{

    private static $table_name = 'RegistrationPage';

    private static $db = array(
        'MyFormType' => DBText::class,
        'checkPO' => DBHTMLText::class,
        'CompanyInfo' => DBBoolean::class,
        'EntryPrice' => DBCurrency::class,
        'Qty' => DBInt::class,
        'GolfPrice' => DBCurrency::class,
        'GolfIncluded' => DBBoolean::class,
        'RacePrice' => DBCurrency::class,
        'RaceIncluded' => DBBoolean::class,
        'CarIncluded' => DBBoolean::class,
        'CarPrice' => DBCurrency::class,
        'CarStorage' => DBCurrency::class,
        'CarParts' => DBCurrency::class,
        'CarBody' => DBCurrency::class,
        "OtherPrices" => MultiValueField::class,
        'AddTeam' => DBBoolean::class,
        'ExtraTeam' => DBBoolean::class,
        'HideTotal' => DBBoolean::class,
        'AllowQty' => DBBoolean::class,
        'ActionCall' => DBVarchar::class,
    );
    private static $has_one = array();
    private static $defaults = array(); //'ShowInMenus' => false);

    private static $icon = 'client/icons/golfball';
    private static $can_be_root = false;

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.PackageInfo', [
            new CurrencyField("EntryPrice", "Main Price"),
            new CheckboxField("AllowQty", "Allow Quantity entry on Page", false),
            new CheckboxField("CompanyInfo", "Allow Company Info Registration", true),
            new CheckboxField("GolfIncluded", "Golf will be included in this package"),
            new CheckboxField("RaceIncluded", "Race will be included in this package"),
            new CheckboxField("CarIncluded", "New Car will be included in this package"),
            new KeyValueField("OtherPrices", "Other Prices Items"),
            new CheckboxField("AddTeam", "Add Team Players with this Package"),
            new CheckboxField("ExtraTeam", "Allow Extra Players with this Package"),
            new CheckboxField("HideTotal", "Hide Total Price on Page", true),
            CurrencyField::create('CarStorage')->setDescription("Allow car parts and other stuff"),
            CurrencyField::create('CarBody')->setDescription("Allow car parts and other stuff"),
            CurrencyField::create('CarParts')->setDescription("Allow car parts and other stuff"),
            new TextField('Action', 'Submit Text'),
        ], 'Comments');

        if(!$this->AllowQty){
            $fields->addFieldToTab('Root.PackageInfo', new NumericField("Qty", "Quantity (per price)"), 'AllowQty');
        }
        if (!$this->GolfIncluded) {
            $fields->addFieldToTab('Root.PackageInfo', new CurrencyField("GolfPrice", " Golf Price"), 'GolfIncluded');
        }
        if (!$this->RaceIncluded) {
            $fields->addFieldToTab('Root.PackageInfo', new CurrencyField("RacePrice", "Race Price"), 'CarIncluded');
        }
        if (!$this->CarIncluded) {
            $fields->addFieldToTab('Root.PackageInfo', new CurrencyField("CarPrice", "Car Price"), 'CarIncluded');
        }

        $fields->addFieldsToTab('Root.Main', [
            new HTMLEditorField('Content', 'Registration Info'),
            new HTMLEditorField('checkPO', 'Checks & P.O.s')
        ]);

        return $fields;
    }

    public function getRegForm()
    {
        return $this->renderWith("Includes/Forms/Registration");

    }

    public function getGolfType()
    {
        $template = 'Includes/Forms/GolfRegistration';

        return $this->renderWith($template);
    }

    public function getRaceType()
    {

        $template = 'Includes/Forms/RaceRegistration';

        return $this->renderWith($template);
    }

}
