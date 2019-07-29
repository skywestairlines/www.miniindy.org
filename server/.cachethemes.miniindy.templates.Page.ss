<?php
$val .= '<!DOCTYPE html>
<html lang="en" >

  <head>
		';

$val .= $scope->locally()->XML_val('MetaTags', array('false'), true);
$val .= '
		<title>';

if ($scope->locally()->hasValue('MetaTitle', null, true)) { 
$val .= $scope->locally()->XML_val('MetaTitle', null, true);

}else { 
$val .= $scope->locally()->XML_val('Title', null, true);

}
$val .= ' &raquo; Mini Indy</title>
		';

$val .= \SilverStripe\View\SSViewer::get_base_tag($val);
$val .= '
		<link rel="shortcut icon" href="/favicon.ico" />
        ';


$val .= '

		<!--[if IE 6]>
			<style type="text/css">
			 @import url(themes/miniindy/css/ie6.css);
			</style>
		<![endif]-->

		<!--[if IE 7]>
			<style type="text/css">
			 @import url(themes/miniindy/css/ie7.css);
			</style>
		<![endif]-->
		<!--[if IE]>
			<style type="text/css">
			 @import url(themes/miniindy/css/ie.css);
			</style>
		<![endif]-->


	</head>
<body>
	<div class="container py-3">
		<header id="Header">
			';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'Header'], 'Header'], $scope->getItem(), array(), $scope, true);

$val .= '
		</header>
		<nav id="navigation" class="navbar navbar-expand-md bg-trans p-0">
			';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'Navigation'], 'Navigation'], $scope->getItem(), array(), $scope, true);

$val .= '
	  	</nav>
		<section class="card-deck">
            <main class="card card-trans">
            ';

$val .= $scope->locally()->XML_val('Layout', null, true);
$val .= '
            </main>
            ';

if ($scope->locally()->XML_val('ShowSideBar', null, true)!='no') { 
$val .= '
            <aside class="col-md-4 px-0">
                ';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SideBar'], 'SideBar'], $scope->getItem(), array(), $scope, true);

$val .= '
            </aside>
            ';


}
$val .= '
        </section>
	</div>
	<footer id="Footer">
		';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'Footer'], 'Footer'], $scope->getItem(), array(), $scope, true);

$val .= '
	</footer>
	';

if ($scope->locally()->hasValue('CurrentMember', null, true)) { 
$val .= '
	<div class="page-settings">
		<div class="edit">
            <a href="';

$val .= $scope->locally()->XML_val('CMSEditLink', null, true);
$val .= '" class="btn btn-primary" target="_blank">
                <i class="fa fa-edit"></i>
            </a>
		</div>
	</div>
	';


}
$val .= '

    ';


$val .= '
    <script type="text/javascript">
		startList = function() {
			if (document.all&&document.getElementById) {
				navRoot = document.getElementById("nav");
				for (i=0; i<navRoot.childNodes.length; i++) {
					node = navRoot.childNodes[i];
					if (node.nodeName=="LI") {
						node.onmouseover=function() {
							this.className+=" over";
						}
						node.onmouseout=function() {
							this.className=this.className.replace(" over", "");
						}
					}
				}
			}
		}
		window.onload=startList;
    </script>
	';

if (!$scope->locally()->hasValue('CurrentMember', null, true)) { 
$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('GoogleAnalytics', null, true);

}
$val .= '
</body>
</html>
';

