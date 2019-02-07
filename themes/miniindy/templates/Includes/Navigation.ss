<ul id="nav" class="dropdown dropdown-horizontal d-flex w-100">
 	<li class="flex-auto">
     <span id="dateTemp">
        {$SiteConfig.EventStart.Format('MMMM d')}-{$SiteConfig.EventFinish.Format('d, Y')}
        </span>
    </li>
    <% loop Menu(1) %>
    <li class="flex-1">
        <a href="$Link" class="$LinkingMode nav-link" title="$Title"><span>$MenuTitle.XML</span></a>
        <% if Children %>
            <ul>
            <% loop Children %>
                <li>
                    <a href="$Link" class="$LinkingMode"><span>$MenuTitle.XML</span></a>
                </li>
            <% end_loop %>
            </ul>
        <% end_if %>
    </li>
   	<% end_loop %>
</ul>
