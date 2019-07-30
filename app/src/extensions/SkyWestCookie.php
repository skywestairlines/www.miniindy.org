<?php

use SilverStripe\Control\Cookie;

class SkyWestCookie extends Cookie
{

    private static $Instance;

    public function __construct()
    { }

    public static function Instance()
    {
        if (!static::$Instance instanceof SkyWestCookie) {
            static::$Instance = new SkyWestCookie();
        }
        return static::$Instance;
    }

    public function __get($name)
    {
        return static::$cookies[$name] ?? die($name . ' does not exist!');
    }

    public function __set($name, $value)
    {
        return static::$cookies[$name] = $value;
    }
}
