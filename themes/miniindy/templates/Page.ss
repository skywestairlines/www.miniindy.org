<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" >

  <head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; Mini Indy</title>
		$MetaTags(false)
		<link rel="shortcut icon" href="/favicon.ico" />
		
		<% require themedCSS(layout) %> 
		<% require themedCSS(typography) %> 
		<% require themedCSS(form) %> 
		
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
		<script type="text/javascript"><!--//--><![CDATA[//><!--
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
		
		//--><!]]></script>

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
</body>
</html>
