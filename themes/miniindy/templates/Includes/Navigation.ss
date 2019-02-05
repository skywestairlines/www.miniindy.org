<ul id="nav" class="dropdown dropdown-horizontal">
 	<li><span id="dateTemp">{$SiteConfig.EventDate}</span></li>
	<% control Menu(1) %>
  		<li><a href="$Link" class="$LinkingMode" id="$Title"><span>$MenuTitle.XML</span></a>
			<% if Children %>
				<ul>
				<% control Children %>
					<li><a href="$Link" class="$LinkingMode"><span>$MenuTitle.XML</span></a>
						
						<!-- <% if Children %>
							<ul>
							<% control Children %>
								<li><a href="$Link" class="$LinkingMode"><span>$MenuTitle.XML</span></a></li>
							<% end_control %>
							</ul>
						<% end_if %> -->
						
					</li>						
				<% end_control %>
				</ul>
			<% end_if %>
		</li>	
   	<% end_control %>
</ul>