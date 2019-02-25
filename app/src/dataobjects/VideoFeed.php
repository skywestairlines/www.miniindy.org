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

    public function getVideosUploadedByUser($user, $perPage, $startIndex, $sortBy)
    {
        $videos = $this->videos->filter(["VideoUser" => $user]);
        return $this->videos;
    }

    public function getVideosByQuery($query, $perPage, $startIndex, $sortBy)
    {
        $videos = $this->videos->filterAny([
            "VideoInfo:PartialMatch:nocase" => $query
        ]);
        return $this->videos;
    }
    public function getVideosByCategoryTag($keyword, $perPage, $startIndex, $sortBy)
    {
        $videos = $this->videos->filterAny([
            "VideoInfo:VideoCategory:nocase" => $keyword,
            "VideoInfo:VideoKeywords:nocase" => $keyword
        ]);
        return $this->videos;
    }

    public function getFavoriteVideosByUser($favoriteUser, $perPage, $startIndex, $sortBy)
    {
        $videos = $this->videos->filterAny([
            "VideoInfo:FavedBy:nocase" => $favoriteUser
        ]);
        return $this->videos;
    }

    public function getPlaylist($playList, $perPage, $startIndex, $sortBy)
    {
        $videos = $this->videos->filterAny([
            "VideoInfo:Playlist:nocase" => $playList
        ]);
        return $this->videos;
    }
}
