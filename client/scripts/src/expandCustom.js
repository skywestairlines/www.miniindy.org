jQuery(document).ready(function() {
	
	jQuery.noConflict();
	
	jQuery('.holder').ExpandingMenu({
		speed: "slow",
		colorFade : false,
		colorClosed: "#1c305d",
		colorOpen: "#1c305d",
		event : "click"
	});
});