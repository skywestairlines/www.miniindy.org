<!DOCTYPE html>
<html lang="en" >

  <head>
		$MetaTags(false)
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; Mini Indy</title>
		<% base_tag %>
		<link rel="shortcut icon" href="/favicon.ico" />
        <% require css('dist/css/main.css') %>
		<% require css('dist/css/vendor.css') %>
		<% require css('dist/css/miniindy.css') %>

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
			<% include Header %>
		</header>
		<nav id="navigation" class="navbar navbar-expand-md bg-trans py-0 px-2">
			<% include Navigation %>
	  	</nav>
		<section class="card-deck">
            <main class="card card-trans">
            $Layout
            </main>
            <% if $ShowSideBar != 'no' %>
            <aside class="col-md-4 card px-0">
                <% include SideBar %>
            </aside>
            <% end_if %>
        </section>
	</div>
	<footer id="Footer">
		<% include Footer %>
	</footer>
	<% if $CurrentMember %>
	<div class="page-settings">
		<div class="edit">
            <a href="$CMSEditLink" class="btn btn-primary" target="_blank">
                <i class="fa fa-edit"></i>
            </a>
		</div>
	</div>
	<% end_if %>

    <% require javascript('dist/js/main.js') %>
    <% require javascript('dist/js/vendor.js') %>
    <% require javascript('dist/js/miniindy.js') %>
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
</body>
</html>
