<?php 
use SilverStripe\ORM\DataExtension;
/**
 * ShortCodes
 */
class CustomShortCodes extends DataExtension
{
    private static $casting = [
        'InputMethod' => 'HTMLText'
    ];

    public static function InputMethod($arguments, $content = null, $parser = null, $tagName) 
    {
        $input = "<input ";

        foreach ($arguments as $key => $value) {
            $input .= " $key=\"$value\"";
        }
        $input .= "/>";

        return $input;
    }
}
