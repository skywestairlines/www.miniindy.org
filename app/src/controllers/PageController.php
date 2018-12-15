<?php

    use SilverStripe\CMS\Controllers\ContentController;

    class PageController extends ContentController
    {
        /**
         *
         * @var array
         */
        private static $allowed_actions = [];

        protected function init()
        {
            parent::init();
        }
    }
