<!DOCTYPE html>
<html lang="en">

<head>
    $MetaTags(false)
    <title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; Mini Indy</title>
    <% base_tag %>
    <link rel="shortcut icon" href="/favicon.ico" />
    <script src="js/jquery.js" type="text/javascript" charset="utf-8"></script>
    <%-- <link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen" charset="utf-8" /> --%>
    <script src="js/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>
    <%--<% require css('dist/css/main.css') %>
    <% require css('dist/css/vendor.css') %>
    <% require css('dist/css/miniindy.css') %> --%>

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

<body class="$ClassName.ShortName">
    <main class="container py-3">
      <% include Header %>
        <section class="card-deck">
            <% if $ShowSideBar != 'no' %>
            <div class="card card-trans">
                $Layout
            </div>
            <aside class="col-md-4">
                <% include SideBar %>
            </aside>
            <% else %>
            $Layout
            <% end_if %>
        </section>
    </main>
    <% include Footer %>

    <%-- <main class="container py-3">
    <% include Header %>
        <section class="card-deck">
            <div class="card card-trans">
                $Layout
            </div>
            <% if $ShowSideBar != 'no' %>
            <aside class="col-md-4">
                <% include SideBar %>
            </aside>
            <% end_if %>
        </section>
    </main>
    <% include Footer %> --%>


    <% if $CurrentMember %>
    <div class="page-settings">
        <div class="edit">
            <a href="$CMSEditLink" class="btn btn-primary" target="_blank">
                <i class="fa fa-edit"></i>
            </a>
        </div>
    </div>
    <% end_if %>

    <%--
    <% require javascript('dist/js/main.js') %>
    <% require javascript('dist/js/vendor.js') %>
    <% require javascript('dist/js/miniindy.js') %>
    --%>
    <script type="text/javascript">
        startList = function () {
            if (document.all && document.getElementById) {
                navRoot = document.getElementById("nav");
                for (i = 0; i < navRoot.childNodes.length; i++) {
                    node = navRoot.childNodes[i];
                    if (node.nodeName == "LI") {
                        node.onmouseover = function () {
                            this.className += " over";
                        }
                        node.onmouseout = function () {
                            this.className = this.className.replace(" over", "");
                        }
                    }
                }
            }
        }
        window.onload = startList;
    </script>
    <% if not $CurrentMember %>$SiteConfig.GoogleAnalytics<% end_if %>
    <script type="text/javascript" charset="utf-8">
	$(document).ready(function(){
		$("a[rel^='prettyPhoto']").prettyPhoto();
	});
    </script>
</body>

</html>
