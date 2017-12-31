<div class="typography">
	$Content
	<div class="clear"><!-- --></div>
	
	<div class="PlatinumSponsers">
		<% if Major %>
		<% control sectionTitle(Major) %>
		<% if HeaderTitle %>
		<h4><span>$HeaderTitle</span></h4>
		<% else %>
		<h4><span>Major Sponsors</span></h4>
		<% end_if %>
		<% end_control %>
		<ul>
			<% control Major %>
			<li class="sponsor PlatinumSponsor<% if MultipleOf(3) %> Last<% end_if %><% if First %> First<% end_if %><% if MultipleOf(4) %> First<% end_if %>">
				<a href="$customLink" class="logo" target="_blank">
					<% if Logo %>
					$Logo
					<% else %>
					<div class="noLogo"></div>
					<% end_if %>
					<div class="name">$Name</div>
				</a>
			</li>
			<% end_control %>
			<div class="clear"><!-- --></div>
			</ul>
		<% end_if %>
	</div>
	<br />
	<div class="clear"><!-- --></div>
	<br />
	<div class="GoldSponsers">
		<% if Car %>
		<% control sectionTitle(Car) %>
		<% if HeaderTitle %>
		<h4><span>$HeaderTitle</span></h4>
		<% else %>
		<h4><span>Car Sponsors</span></h4>
		<% end_if %>
		<% end_control %>
		<ul>
			<% control Car %>
			<li class="sponsor<% if MultipleOf(4) %> Last<% end_if %><% if First %> First<% end_if %><% if IsAfterFourth %> First<% end_if %>">
				<%-- <a href="$customLink" class="logo" target="_blank"> --%>
					<% if Logo %>
					$Logo.setWidth(220)
					<% else %>
					<div class="noLogo"></div>
					<% end_if %>
					<div class="name">$Name</div>
				<%-- </a> --%>
			</li>
			<% if MultipleOf(4) %><div class="clear"><!-- --></div><% end_if %>
			<% end_control %>
			<div class="clear"><!-- --></div>
			</ul>
		<% else %>
		<p>Car Sponsors Coming Soon.</p>
		<% end_if %>
	</div>
	<br />
	<div class="clear"><!-- --></div>
	<br />
	<div class="GoldSponsers">
		<% if Golf %>
		<% control sectionTitle(Golf) %>
		<% if HeaderTitle %>
		<h4><span>$HeaderTitle</span></h4>
		<% else %>
		<h4><span>Golf Sponsors</span></h4>
		<% end_if %>
		<% end_control %>
		<ul>
			<% control Golf %>
			<li class="sponsor<% if MultipleOf(4) %> Last<% end_if %><% if First %> First<% end_if %><% if IsAfterFourth %> First<% end_if %>">
				<%-- <a href="$customLink" class="logo" target="_blank"> --%>
					<% if Logo %>
					$Logo.setWidth(220)
					<% else %>
					<div class="noLogo"></div>
					<% end_if %>
					<div class="name">$Name</div>
				<%-- </a> --%>
			</li>
			<% if MultipleOf(4) %><div class="clear"><!-- --></div><% end_if %>
			<% end_control %>
			<div class="clear"><!-- --></div>
			</ul>
		<% else %>
		<p>Golf Sponsors Coming Soon.</p>
		<% end_if %>
	</div>
	<br />
	<div class="clear"><!-- --></div>
	<br />
	<div class="GoldSponsers">
		<% if Other %>
		<% control sectionTitle(Other) %>
		<% if HeaderTitle %>
		<h4><span>$HeaderTitle</span></h4>
		<% else %>
		<h4><span>Other Sponsors</span></h4>
		<% end_if %>
		<% end_control %>
		<ul>
			<% control Other %>
			<li class="sponsor<% if MultipleOf(4) %> Last<% end_if %><% if First %> First<% end_if %><% if IsAfterFourth %> First<% end_if %>">
				<%-- <a href="$customLink" class="logo" target="_blank"> --%>
					<% if Logo %>
					$Logo.setWidth(220)
					<% else %>
					<div class="noLogo"></div>
					<% end_if %>
					<div class="name">$Name</div>
				<%-- </a> --%>
			</li>
			<% if MultipleOf(4) %><div class="clear"><!-- --></div><% end_if %>
			<% end_control %>
			<div class="clear"><!-- --></div>
			</ul>
		<% else %>
		<p>Other Sponsors Coming Soon.</p>
		<% end_if %>
	</div>
	<br /><br /><br /><br /><br /><br />
	<div class="clear"><!-- --></div>
	<br />
</div>