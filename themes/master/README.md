# Using the Master theme

 * Copy the theme into the `themes/` directory of your SilverStripe project.  If you've named it correctly, there should be a directory called `themes/master/templates`.
 
 * Add the following to your `mysite/_config.php` file.  Remove any existing `SSViewer::set_theme` lines.

		SSViewer::set_theme("master");
		HtmlEditorConfig::get('cms')->setOption('theme_advanced_styles', 'highlight=highlight;no-border=no-border,break=break');
