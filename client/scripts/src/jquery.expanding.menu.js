/**Expanding Menu
 * 
 *@author Aram Balakjian
 * 
 * 24/3/2009 - www.ssbits.com
 * 
 *Visit ssbits.com for a full tutorial on creating this plugin as
 *well as incorperating it into the silverstripe CMS
 * 
 * requires: jquery.js & jquery.color.fade.js
 * 
 * Add the following to your page:
 * 
 * 
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.color.fade.js"></script>
<script type="text/javascript" src="jquery.expanding.menu.js"></script>
		<script type="text/javascript">
		$(document).ready(function() {
			$().ExpandingMenu({
				speed: "slow",
				colorFade : true,
				colorClosed: "#30AAE9",
				colorOpen: "#444444",
				event : "click"
			});
		});
</script>
 * 
 * Available settings:
 * speed : sets the speed at which the menu expands (e.g. "slow", "fast", "2000")
 * colorClosed : color of the title link when menu is closed (e.g. "#00ff00")
 * colorOpen : color of the title link when menu is open (e.g. "#00ff00")
 * colorFade : turns on or off color fade. if false above color settings are ignored (true, flase)
 * event : the event which is used to expand and collapse the menu (e.g "click", "mouseover", "dblclick")
 */
(function($){
 $.fn.ExpandingMenu = function(user){
 	//set defaults
	 var defaults = {
			speed : "slow",
			colorClosed : "blue",
			colorOpen : "black",
			colorFade : true,
			event : "click"
        };
	//extend defaults with user defined settings	
    var values = $.extend(defaults, user);
	
	//Hide all <ul>(s)
	$("a.holder + ul").hide();	
	//show <ul>(s) with 'open' class
	$("a.holder.open + ul").show();
	
	//set colors
	if (values.colorFade) {
		$("a.holder").css("color", values.colorClosed);
		$("a.holder.open").css("color", values.colorOpen);
	}
	//attach the click functions
	$(".holder").bind(values.event,function(){
		
		  // need a way to close open <ul>'s when clicked on another <ul>
				if ($(".bobo").is(":visible")) {
							$(".bobo").slideUp(values.speed);
							if (values.colorFade) {
								$(".bobo").animate({
									color: values.colorClosed
								});
							}
						  }
		  //if the <ul> is hidden then unhide it and change the color
		  if ($("#" + this.id + "+ ul").is(":hidden")) {
		        $("#" + this.id + "+ ul").slideDown(values.speed);
				if (values.colorFade) {
					$(".bobo").animate({
						color: values.colorClosed
					});
					$("#" + this.id).animate({
						color: values.colorOpen
					});
				}					
		      } 
		  //if the <ul> is visible then hide it and change the color
		  else {
		        $("#" + this.id + "+ ul").slideUp(values.speed);
				if (values.colorFade) {
					$("#" + this.id).animate({
						color: values.colorClosed
					});
				}
	      }		  
		});
	};	
})
(jQuery);
