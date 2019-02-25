<ul  id="primaryNav" class="col5">
<% loop $Pages %>
    <% if $ShowInMenu && $Title != $Up.Title %>
    <li>
        <a href="$URLSegment" title="Go to the $Title page">$MenuTitle</a>
        <% if $Children %>
            <% include SiteMap Pages=$Children %>
        <% end_if %>
    </li>
    <% end_if %>
<% end_loop %>
</ul>
