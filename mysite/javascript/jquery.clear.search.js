jQuery(document).ready(function() { 
	defaultValue = jQuery('#SearchForm_SearchForm_Search').val();	
	jQuery('#SearchForm_SearchForm_Search').click(function() { 
		if( this.value == defaultValue ) { 
			jQuery(this).val("");
		} 
	}); 
});