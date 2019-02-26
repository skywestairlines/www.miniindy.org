(function($) {
	$(function(){
			$("a[rel^='prettyPhoto']").prettyPhoto({
				iframe_markup: '<iframe src ="{path}" width="{width}" height="{height}" frameborder="no"></iframe>',
				social_tools: false
			});
	});
})(jQuery);