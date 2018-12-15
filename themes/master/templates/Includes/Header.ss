<header class="header " id="main-header">
    <div class="navbar-header navbar navbar-expand-md">
        <div class="container">
            <a class="navbar-brand" href="/">
                <img alt="$SiteConfig.Title" src="$asset('SKYWLogo-color-HighRes2.png')" class="logo-img img-responsive">
            </a>
            <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#mainMenu"
                aria-controls="mainMenu" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <form id="SearchForm_SearchForm" action="/home/SearchForm" method="get" class="navbar-form" role="search">
                <p id="SearchForm_SearchForm_error" class="message " style="display: none"></p>
                <div class="input-group">
                    <input type="text" name="Search" placeholder="Search..." class="form-control" id="SearchForm_SearchForm_Search">
                    <span class="input-group-btn">
                        <button type="submit" name="action_results" value="Go" class="btn btn-default action not-rounded"
                            id="SearchForm_SearchForm_action_results" title="Search">
                            <i class="fa fa-search"></i>
                        </button>
                    </span>
                </div>
            </form>
        </div>
    </div>
    <% include Navigation %>
</header>
