/* dynamicaly add name fields depending on qty */
(function($){
	$(document).ready(function () {
		var q = $('#qty').val();	// get whatever it is initially
		
		// get qty count from from when it changes
		$('#qty').change(function() {
			q = $(this).val();
			for(var i = 0; i < q; i++) {
				$('#trName').after('<tr id="trName'+i+'"><td align="right">Name:</td><td><input type="text" name="p1"></td></tr>');
			}
		});
		console.log(q);
		// loop? through and create/display Name forms - also add the hidden t forms
		
		
	});
})(jQuery);