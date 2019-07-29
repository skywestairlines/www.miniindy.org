<?php
$val .= '<div id="cms-content-filters-CMSPagesController" class="cms-content-filters';

if (!$scope->locally()->hasValue('TreeIsFiltered', null, true)) { 
$val .= ' cms-content-filters--hidden';


}
$val .= '">
    <div class="search-holder search-holder--cms" data-schema="';

$val .= $scope->locally()->XML_val('SearchFieldSchema', null, true);
$val .= '"></div>
</div>
';

