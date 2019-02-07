<?php  



class PackagesAdmin extends DataModelAdmin
{
    private static $url_segment = "packages";
    private static $menu_title = 'Packages';

    private static $managed_models = [
        "Packages" => Package::class,
        "Pricing" => Pricing::class
    ];

    
}