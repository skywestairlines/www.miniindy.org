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
                    <img src="$Square.URL" alt="$TITLE" class="img-fluid img-thumbnail" />
                </a>

                <%-- if moving the script to other file, it will mess up the css in video gallery popup --%>
                <script>
                $(document).ready(function() { 
                $("a[rel^='prettyPhoto']").prettyPhoto({
                        theme: 'light-rounded',
                        image_markup: '<img id="fullResImage" src="{path}" /><span class="download-btn"><a href="{path}" download>Download</a></span>',
                        changepicturecallback: function(){
                            $(".pp_content").css("height", $(".pp_content").height() + $(".download-btn").outerHeight() + 10);
                        }
                    });
                });
                </script>

            </div>
            <% end_loop %>
        </div>
        <% else %>
        <div class="row">
            <% loop $Albums %>
            <div class="col-md-6">
                <div class="bg-white pb-2">
                    <a href="{$Up.Link}?album={$ID}" class="btn btn-block btn-primary btn-sm text-white">
                        $Name
                        <span class="px-3">($Photos.Count)</span>
                    </a>
                </div>
            </div>
            <% end_loop %>
        </div>
        <% end_if %>

    </div>
</div>
