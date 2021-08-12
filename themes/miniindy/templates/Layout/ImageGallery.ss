<div class="typography">
    <div id="">
        $Content

        <% if $AlbumContent %>
        <h2>$AlbumContent.Name</h2>
        <div class="row">
            <% loop $AlbumContent.Photos %>
            <div class="col-md-3 mb-3">
                <a href="$URL?<% if $Up.PhotoSize %>$Up.PhotoSize<% else %>width=640&height=480<% end_if %>" rel="prettyPhoto[miniindyGallery]"
                    title="$TITLE" class="">
                    <!-- what is square.URL and why isn't it thumbnail size? -->
                    <img src="$Square.URL" alt="$TITLE" class="img-fluid img-thumbnail" />
                </a>
            </div>
            <% end_loop %>
        </div>
        <% else %>
        <div class="row">
            <% loop $Albums %>
            <% if $Photos.Count > 0  %>
            <div class="col-md-6">
                <div class="bg-white pb-2">
                    <a href="{$Up.Link}?album={$ID}">
                        <!-- this is the bit (cover) that seems to be handling the image. it is set in CMS/media/images/ Album>Album Cover -->
                    $cover
                    </a>
                    <a href="{$Up.Link}?album={$ID}" class="btn btn-block btn-primary btn-sm text-white">
                        $Name
                        <span class="px-3">($Photos.Count)</span>
                    </a>
                </div>
            </div>
            <% end_if %>
            <% end_loop %>
        </div>
        <% end_if %>

    </div>
</div>
