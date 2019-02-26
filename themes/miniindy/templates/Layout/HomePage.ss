<div class="typography">
<% include SideBar %>

<div id="Content">
<div id="slides">
	<div class="slidesHolder">
		<div class="slides_container">
			<% control SliderImages %>
			<% if Photo %>
			<div>
				<% if LinkID %><a href="$SliderLink"><% end_if %>
				$HeroSlideShow
				<% if Caption %><div class="caption">
					<p>$Caption</p>
				</div><% end_if %>
				<% if LinkID %></a><% end_if %>
			</div>
			<% end_if %>
			<% end_control %>
		</div>
	</div><%-- END slidesHolder --%>
</div><%-- END slides --%>

$Content

<div class="GoldSponsers homeFix" style="width:100%;float:left;">
	<h4><span>Major Sponsors</span></h4>
	<% if MainSponsors %>
	<ul>
		<% control MainSponsors %>
		<a href="$customLink" class="logo" target="_blank">
		<li class="sponsor homeFix<% if MultipleOf(3) %> Last<% end_if %><% if First %> First<% end_if %><% if MultipleOf(4) %> First<% end_if %>">
			  
				<% if Logo %>
				$Logo.setWidth(220)
				<% else %>
				<div class="noLogo"></div>
				<% end_if %>
				<div class="name">$Name</div>
			
		</li> </a> 
		<% if MultipleOf(4) %><div class="clear"><!-- --></div><% end_if %>
		<% end_control %>
		<div class="clear"><!-- --></div>
		</ul>
	<% else %>
	<p>Car Sponsors Coming Soon.</p>
	<% end_if %>
</div>
<!--<div class="GoldSponsers homeFix" style="width:32%;float:left;">
	<h4><span>Benefiting</span></h4>
	<% if BenefitingSponsors %>
	<ul>
		<% control BenefitingSponsors %>
		<% if customLink %>
		<a href="$customLink" class="logo" target="_blank"> <% end_if %>
		<li class="sponsor homeFix<% if MultipleOf(3) %> Last<% end_if %><% if First %> First<% end_if %><% if MultipleOf(4) %> First<% end_if %>">
			  
				<% if Logo %>
				$Logo.setWidth(220)
				<% else %>
				<div class="noLogo"></div>
				<% end_if %>
				<div class="name">$Name</div>
			
		</li> <% if customLink %></a> <% end_if %>
		<% if MultipleOf(4) %><div class="clear"></div><% end_if %>
		<% end_control %>
		<div class="clear"></div>
		</ul>
	<% else %>
	<p>Car Sponsors Coming Soon.</p>
	<% end_if %>
</div>-->
<br />
<div class="clear"></div>
</div>
</div>