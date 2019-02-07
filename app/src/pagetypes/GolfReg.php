<?php

use SilverStripe\Forms\TextField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\CurrencyField;
use SilverStripe\Forms\DropdownField;
use SilverStripe\ORM\FieldType\DBText;
use SilverStripe\ORM\FieldType\DBMoney;
use SilverStripe\ORM\FieldType\DBBoolean;
use SilverStripe\ORM\FieldType\DBHTMLText;
use SilverStripe\Forms\HtmlEditor\HTMLEditorField;

class GolfReg extends Page
{

    private static $table_name = 'GolfReg';

    private static $db = array(
        'MyFormType'=> DBText::class,
        'checkPO'   => DBHTMLText::class,
        'EntryPrice' => DBMoney::class,
        'GolfPrice' => DBMoney::class,
        'GolfIncluded' => DBBoolean::class,
        'RacePrice' => DBMoney::class,
        'RaceIncluded' => DBBoolean::class,
        'CarPrice' => DBMoney::class,
        'CarIncluded' => DBBoolean::class,
        'ExtraTeam' => DBBoolean::class,
    );
    private static $has_one = array();
    private static $defaults = array(); //'ShowInMenus' => false);

    private static $icon = 'client/icons/golfball';

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        // $fields->addFieldToTab('Root.Content.Main', new TextField('MyFormType', 'Form Type'));
        $fields->addFieldsToTab('Root.Main', [
            // new DropdownField('MyFormType', 'Form Type', [
            //     'closed-reg' => 'Close Registration',
            //     // 'indy'                       => 'Indy Level Sponsor w/ Car',
            //     // 'indy2'                     => 'Indy Level Sponsor wo/ Car',
            //     'dont-use' => 'dont-use (DO NOT ACTIVATE)',
            //     // 'daytona'                  => 'Daytona Level Sponsor',
            //     'extra' => 'Add Extra Golfers',
            //     'TuesdayGolf' => 'Tuesday Golf (Golf Warm Up)',
            //     'DiamondFormulaOne' => 'Diamond/Formula One',
            //     'PlatinumIndy' => 'Platinum/Indy',
            //     'GoldDaytona' => 'Gold/Daytona',
            // ]),
            new CurrencyField("EntryPrice", "Main Price"),
            new CheckboxField("GolfIncluded", "Golf will be included in this package", ['Nope!', 'Sure!']),
            new CurrencyField("GolfPrice", " Golf Price"),
            new CheckboxField("RaceIncluded", "Race will be included in this package", ['Nope!', 'Sure!']),
            new CurrencyField("RacePrice", "Race Price"),
            new CheckboxField("CarIncluded", "New Car will included in this package", ['Nope!', 'Sure!']),
            new CurrencyField("CarPrice", "Car Price"),
            new CheckboxField("ExtraTeam", "Allow Extra Team with this Package", ['Nope!', 'Sure!']),
        ], 'Metadata');
        
        $fields->addFieldToTab('Root.ChecksAndPO', new HTMLEditorField('checkPO', 'Checks & P.O.s'));



        return $fields;
    }

    public function getGolfType()
    {
        
        $template = 'Includes/Forms/GolfRegistration';


        return $this->renderWith($template);
    }

}
