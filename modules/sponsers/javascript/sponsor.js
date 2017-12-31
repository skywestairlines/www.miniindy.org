(function($){
	//toggle-info1
	//show-toggle-info1
	$(document).ready(function () {
		console.log('ready');
		var tempX = '';
		$('[class^=toggle-info]').click(function(){
			var myAttr = $(this);
			var x = myAttr.attr('class');
			x = x.substring(0, 13);
			if(tempX == x) {
				$('.show-' + x).slideToggle('showOrHide');
			} else {
				$('[class^=show-toggle-info]:visible').slideToggle('showOrHide');	// hides any open lists
				$('.show-' + x).slideToggle('showOrHide');							// shows the list you clicked on
			}
			tempX = x;
			return false; //Prevent the browser jump to the link anchor
		});
	});
})(jQuery);