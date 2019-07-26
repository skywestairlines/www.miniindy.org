<div class="typography">
	<% if Menu(2) %>

		<div id="Content">
	<% end_if %>

	<% if Level(2) %>
	  	<% include BreadCrumbs %>
	<% end_if %>

		<h2>$Title</h2>

		<ul id="RulesList">
			<% loop GetRulesPages %>
				<li><a href="javascript:void(0);" onclick="toggleInfo('Section$ID')" class="holder" id="Section$ID">$Title</a>
					<ul class="bobo" style="display:none;">
						<li class="ruleContent">$Content</li>
					</ul>
				</li>
			<% end_loop %>
		</ul>

	<% if Menu(2) %>
		</div>
	<% end_if %>
</div>
<script>
function toggleInfo(id) {
	document.getElementById("Section66").nextSibling.nextSibling.style.display = "none";
	document.getElementById("Section67").nextSibling.nextSibling.style.display = "none";
	document.getElementById("Section68").nextSibling.nextSibling.style.display = "none";
	document.getElementById("Section69").nextSibling.nextSibling.style.display = "none";
	document.getElementById("Section70").nextSibling.nextSibling.style.display = "none";
	document.getElementById(`${id}`).nextSibling.nextSibling.style.display = "block";
}
</script>
