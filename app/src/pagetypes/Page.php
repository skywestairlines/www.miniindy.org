<?php

    use SilverStripe\CMS\Model\SiteTree;

    class Page extends SiteTree
    {
        private static $db = [
            "hilkiahd" => 'Int'
        ];

        private static $has_one = [];
    }
