<?php

use SilverStripe\Assets\Image;

/**
 * Prevents creation of resized images if the uploaded file already
 * fits the requested dimensions
 */
class FineImage extends Image
{

    private static $table_name = 'FineImage';
    
    private static $has_one = [
        "Album" => Album::class
    ];
}
