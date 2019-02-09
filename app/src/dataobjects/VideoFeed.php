<?php

use SilverStripe\Control\RSS\RSSFeed;


class VideoFeed extends RSSFeed
{

    public function __construct(...$params)
    {
        parent::__construct(...$params);
    }
    public function getVideos()
    {
        return $this->Entries();

    }

    public function getVideosUploadedByUser($user)
    {
        $videos = $this->videos->filter(["VideoUser" => $user]);
        return $this->videos;
    }
}
