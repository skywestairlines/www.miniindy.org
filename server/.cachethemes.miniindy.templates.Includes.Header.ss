<?php
$val .= '<div class="row">
    <div class="col-md-7">
        <a href="/" border="0">
            <img src="';

$val .= $scope->locally()->obj('SiteConfig', null, true)->obj('Logo', null, true)->XML_val('URL', null, true);
$val .= '" border="0" class="img-fluid" />
        </a>
    </div>
    <div class="col-md-5 d-flex justify-content-end align-items-center">
    <div class="my-3 w-100">
        ';

$val .= $scope->locally()->XML_val('ShowSearchForm', null, true);
$val .= '
        <!--  UNCOMMENT WHEN REGISTRATION IS OPEN 
        <div class="RegNavLink text-md-right text-center">
            <a href="/miniindy-registration/">
                ';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Tagline', null, true);
$val .= '
            </a>
        </div>-->
        </div>
    </div>
</div>
';

