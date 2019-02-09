<?php
// use SilverStripe\ORM\DataExtension;
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\FormField;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;


class DataObjectManager extends GridField
{

    public function __construct(DataObject $obj, $list, $name, $title = null)
    {
        $config = GridFieldConfig_RecordEditor::create();
        $record = $obj->{$list}();

        return $this->create($list, $title ? : $name, $record, $config);
    }

    public static function create(...$args): GridField
    {
        $name = array_shift($args);
        $title = array_shift($args);
        $record = array_shift($args);
        $config = array_shift($args);

        $formfield = new GridField($name, $title, $record, $config);
        $formfield->config = $formfield->getConfig();

        return $formfield;
    }
}
