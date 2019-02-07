<?php

use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\CurrencyField;
use SilverStripe\ORM\FieldType\DBText;
use SilverStripe\ORM\FieldType\DBCurrency;
use SilverStripe\ORM\FieldType\DBBoolean;
use SilverStripe\ORM\FieldType\DBHTMLText;
use SilverStripe\Forms\HtmlEditor\HTMLEditorField;

class RegistrationPage extends Page
{

    private static $table_name = 'RegistrationPage';

    private static $db = array(
        'MyFormType' => DBText::class,
        'checkPO' => DBHTMLText::class,
        'EntryPrice' => DBCurrency::class,
        'GolfPrice' => DBCurrency::class,
        'GolfIncluded' => DBBoolean::class,
        'RacePrice' => DBCurrency::class,
        'RaceIncluded' => DBBoolean::class,
        'CarPrice' => DBCurrency::class,
        'CarIncluded' => DBBoolean::class,
        'ExtraTeam' => DBBoolean::class,
    );
    private static $has_one = array();
    private static $defaults = array(); //'ShowInMenus' => false);

    private static $icon = 'client/icons/golfball';

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.PackageInfo', [
            new CurrencyField("EntryPrice", "Main Price"),
            new CheckboxField("GolfIncluded", "Golf will be included in this package"),
            new CurrencyField("GolfPrice", " Golf Price"),
            new CheckboxField("RaceIncluded", "Race will be included in this package"),
            new CurrencyField("RacePrice", "Race Price"),
            new CheckboxField("CarIncluded", "New Car will included in this package"),
            new CurrencyField("CarPrice", "Car Price"),
            new CheckboxField("ExtraTeam", "Allow Extra Team with this Package"),
        ], 'Comments');

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
