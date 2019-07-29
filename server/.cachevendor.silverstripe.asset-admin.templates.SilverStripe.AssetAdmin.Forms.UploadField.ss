<?php
$val .= '<div class="uploadfield-holder">
    ';

if ($scope->locally()->hasValue('Items', null, true)) { 
$val .= '
        <div class="entwine-placeholder">
            ';

$scope->locally()->obj('Items', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
                <input type="hidden" name="';

$val .= $scope->locally()->obj('Up', null, true)->XML_val('Name', null, true);
$val .= '[Files][]" value="';

$val .= $scope->locally()->obj('ID', null, true)->XML_val('ATT', null, true);
$val .= '" />
            ';


}; $scope->popScope(); 
$val .= '
        </div>
    ';


}
$val .= '
</div>
<input ';

$val .= $scope->locally()->XML_val('AttributesHTML', null, true);
$val .= ' ';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe/Forms/AriaAttributes'], 'SilverStripe/Forms/AriaAttributes'], $scope->getItem(), array(), $scope, true);

$val .= ' />
';

