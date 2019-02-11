<%-- <ul id="nav" class="dropdown dropdown-horizontal d-flex w-100">
 	<li class="nvav-item flex-auto">
     <span id="dateTemp">
        {$SiteConfig.EventStart.Format('MMMM d')}-{$SiteConfig.EventFinish.Format('d, Y')}
        </span>
    </li>
    <% loop Menu(1) %>
    <li class="nav-item flex-1">
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
</ul> --%>
  <a class="navbar-brand" href="#">
  <span id="dateTemp">
        {$SiteConfig.EventStart.Format('MMMM d')}-{$SiteConfig.EventFinish.Format('d, Y')}
    </span>
  </a>
  <button class="navbar-toggler border ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <i class="fa fa-bars text-white"></i>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
    <% loop Menu(1) %>
      <% if $Children %>
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle $LinkingMode<% if $LinkingMode != 'link' %> active<% end_if %>" href="$Link" id="menu$ID" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          $MenuTitle
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
        <span class="careti-up"></span>
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
