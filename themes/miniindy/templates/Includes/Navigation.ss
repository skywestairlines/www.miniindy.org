<nav id="navigation" class="navbar navbar-expand-md bg-trans w-100 p-0">
    <a class="navbar-brand" style="margin-left: 10px" href="#">
        <span id="dateTemp">
            {$SiteConfig.EventStart.Format('MMMM d')}-{$SiteConfig.EventFinish.Format('d, Y')}
        </span>
    </a>
    <button class="navbar-toggler border ml-auto" type="button" data-toggle="collapse"
        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
        aria-label="Toggle navigation">
        <i class="fa fa-bars text-white"></i>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <% loop Menu(1) %>
            <% if $Children %>
            <li class="nav-item dropdown">
                <a class="nav-link $LinkingMode<% if $LinkingMode != 'link' %> active show<% end_if %>" href="$Link">
                    $MenuTitle
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                    <%-- <span class="caret-up"></span> --%>
                    <% loop $Children %>
                    <a class="dropdown-item" href="$Link">$MenuTItle</a>
                    <% end_loop %>
                </div>
            </li>
            <% else %>
            <li class="nav-item">
                <a class="nav-link" href="$Link">Home <span class="sr-only">(current)</span></a>
            </li>
            <% end_if %>
            <% end_loop %>
        </ul>
    </div>
</nav>
