<!DOCTYPE html>
<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<% base_tag %>
	<link rel="shortcut icon" href="themes/master/images/favicon.ico" />
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<% require css('dist/css/main.css') %>
    <% require css('dist/css/styles.css') %>
    <% require themedCss('master') %>
</head>
<body class="$ClassName.ShortName.LowerCase<% if $i18nScriptDirection %>" dir="$i18nScriptDirection<% end_if %>">
<% include Header %>
<main class="main" role="main">
	$Layout
</main>
<% include Footer %>

<% require javascript('dist/js/main.js') %>
<% require javascript('dist/js/scripts.js') %>
<% require themedJavascript('master') %>
</body>
</html>
