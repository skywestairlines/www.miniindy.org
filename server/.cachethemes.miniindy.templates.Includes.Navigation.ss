<?php
$val .= '
  <a class="navbar-brand" style="margin-left: 10px" href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#">
  <span id="dateTemp">
        ';

$val .= $scope->locally()->obj('SiteConfig', null, true)->obj('EventStart', null, true)->XML_val('Format', array('MMMM d'), true);
$val .= '-';

$val .= $scope->locally()->obj('SiteConfig', null, true)->obj('EventFinish', null, true)->XML_val('Format', array('d, Y'), true);
$val .= '
    </span>
  </a>
  <button class="navbar-toggler border ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <i class="fa fa-bars text-white"></i>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
    ';

$scope->locally()->obj('Menu', array('1'), true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
      ';

if ($scope->locally()->hasValue('Children', null, true)) { 
$val .= '
        <li class="nav-item dropdown">
        <a class="nav-link ';

$val .= $scope->locally()->XML_val('LinkingMode', null, true);
if ($scope->locally()->XML_val('LinkingMode', null, true)!='link') { 
$val .= ' active';


}
$val .= '" href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '">
          ';

$val .= $scope->locally()->XML_val('MenuTitle', null, true);
$val .= '
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
        <span class="careti-up"></span>
        ';

$scope->locally()->obj('Children', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
          <a class="dropdown-item" href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('MenuTItle', null, true);
$val .= '</a>
        ';


}; $scope->popScope(); 
$val .= '
        </div>
        </li>
      ';


}else { 
$val .= '
      <li class="nav-item">
        <a class="nav-link" href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '">Home <span class="sr-only">(current)</span></a>
      </li>
      ';


}
$val .= '
      ';


}; $scope->popScope(); 
$val .= '
    </ul>
  </div>
';

