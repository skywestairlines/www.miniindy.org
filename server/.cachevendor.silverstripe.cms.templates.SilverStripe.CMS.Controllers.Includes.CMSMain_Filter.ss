<?php
$val .= '<div class="view-controls">
    ';

if (!$scope->locally()->hasValue('TreeIsFiltered', null, true)) { 
$val .= '
        <button id="filters-button" class="btn btn-secondary icon-button font-icon-search btn--icon-large no-text" title="';

$val .= _t('SilverStripe\CMS\Controllers\CMSPagesController.FILTER','Filter');
$val .= '"></button>               
    ';


}
$val .= '
</div>

';

