<!DOCTYPE html>
<html lang="en" >

  <head>
		$MetaTags(false)
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; Mini Indy</title>
		<% base_tag %>
		<link rel="shortcut icon" href="/favicon.ico" />

		<% require themedCSS('layout') %>
		<% require themedCSS(typography) %>
		<% require themedCSS(form) %>
        <% require themedCSS('miniindy') %>

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
	<div id="Container">
		<div id="Header">
			$SearchForm
	   		<a href="home/" border="0"><img src="assets/Uploads/logo.png" border="0" /></a>
	   		<!--  COMMENT OUT WHEN REGISTRATION IS CLOSED  -->
	   		<div class="RegNavLink">
	   			<a href="/miniindy-registration/">Registration Is Open!</a>
	   		</div>

		</div>

		<div id="Navigation">
			<% include Navigation %>
	  	</div>

	  	<div class="clear"><!-- --></div>

		<div id="Layout">
		  $Layout
		</div>

	   <div class="clear"><!-- --></div>
	   <div class="push"></div>
	</div>
	<div id="Footer">
		<% include Footer %>
	</div>
    <script type="text/javascript">
		<%-- <% require themedJavascript('miniindy') %> --%>
        <% require themedJavascript('miniindy') %>
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
