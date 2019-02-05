<div class="typography">
	<% if Menu(2) %>
		<% include SideBar %>
		<div id="Content">
	<% end_if %>
			
	<% if Level(2) %>
	  	<% include BreadCrumbs %>
	<% end_if %>
	
		<h2>$Title</h2>
	
		<ul id="RulesList">
			<% control GetRulesPages %>
				<li><a href="javascript:void(0);" class="holder" id="Section$ID">$Title</a>
					<ul class="bobo" style="display:none;">
						<li class="ruleContent">$Content</li>
					</ul>
				</li>
			<% end_control %>
		</ul>
		
	<% if Menu(2) %>
		</div>
	<% end_if %>
</div>