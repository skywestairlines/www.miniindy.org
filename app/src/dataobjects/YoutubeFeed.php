<?php

use SilverStripe\Control\RSS\RSSFeed;


class YoutubeFeed extends RSSFeed
{

    public function __construct(...$params)
    {
        parent::__construct(...$params);
    }
    public function getVideos()
    {
        return [];
    }

    
}
