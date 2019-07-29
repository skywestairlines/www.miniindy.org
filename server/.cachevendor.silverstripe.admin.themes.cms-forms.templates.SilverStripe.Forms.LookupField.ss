<?php
$val .= '<p tabIndex="0" class="form-control-static readonly" id="';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" ';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe/Forms/AriaAttributes'], 'SilverStripe/Forms/AriaAttributes'], $scope->getItem(), array(), $scope, true);

$val .= '>';

$val .= $scope->locally()->XML_val('AttrValue', null, true);
$val .= '</p><input type="hidden" name="';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '" value="';

$val .= $scope->locally()->XML_val('InputValue', null, true);
$val .= '" />
';

