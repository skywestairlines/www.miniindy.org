<div class="typography">

<div id="Content">
<div id="slides" style="width:100%">
	<div class="slidesHolder">
		<div class="slides_container">
			<% loop $SliderImages.Sort('SortOrder') %>
			<% if $Photo %>
			<div>
				<% if $Link %><a href="$Link.Link"><% else_if $Anchor %><a href="$Anchor"><% end_if %>
				$Photo.Fit('580', '350')
				<% if Caption %>
				<div class="caption">
					<p>$Caption</p>
				</div><% end_if %>
				<% if $Link || $Anchor %></a><% end_if %>
			</div>
			<% end_if %>
			<% end_loop %>
		</div>
	</div><%-- END slidesHolder --%>
</div><%-- END slides --%>


$Content

<%-- <div class="GoldSponsers homeFix" style="width:100%;float:left;">
	<h4><span>Major Sponsors</span></h4>
	<% if MainSponsors %>
	<ul>
		<% loop MainSponsors %>
		<a href="$customLink" class="logo" target="_blank">
		<li class="sponsor homeFix<% if MultipleOf(3) %> Last<% end_if %><% if First %> First<% end_if %><% if MultipleOf(4) %> First<% end_if %>">

				<% if $Logo %>
				$Logo.scaleWidth(220)
				<% else %>
				<div class="noLogo"></div>
				<% end_if %>
				<div class="name">$Name</div>

		</li> </a>
		<% if MultipleOf(4) %><div class="clear"><!-- --></div><% end_if %>
		<% end_loop %>
		<div class="clear"><!-- --></div>
		</ul>
	<% else %>
	<p>Car Sponsors Coming Soon.</p>
	<% end_if %>
</div> --%>

<div class="major-sponsors">
	<h4><span>Major Sponsors</span></h4>
	<% if MainSponsors %>
	<div class="row">
		<% loop MainSponsors %>
        <div class="col-md-4 col-sm-6 card">
            <div class="card-body p-0">
            <a href="$customLink" class="" target="_blank">
				<% if $Logo %>
				<img src="$Logo.scaleWidth(220).URL" alt="$Logo.TITLE" class="img-fluid">
				<% else %>
				<div class="noLogo"></div>
				<% end_if %>
            </a>
            </div>
            <div class="card-footer bg-primary row p-2">
            <a href="$customLink" class="text-white" target="_blank">
             $Name
             </a>
            </div>
        </div>
        <%-- <% if MultipleOf(2) %>
            <div class="w-100"></div>
        <% end_if %> --%>
		<% end_loop %>
    </div>
	<% else %>
	<p>Car Sponsors Coming Soon.</p>
	<% end_if %>
</div>
<!--<div class="GoldSponsers homeFix" style="width:32%;float:left;">
	<h4><span>Benefiting</span></h4>
	<% if BenefitingSponsors %>
	<ul>
		<% loop BenefitingSponsors %>
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
		<% end_loop %>
		<div class="clear"></div>
		</ul>
	<% else %>
	<p>Car Sponsors Coming Soon.</p>
	<% end_if %>
</div>-->
<br />
<div class="clear"><!-- --></div>
</div>
</div>

<div class="bg-primary px-3">
<% if not $MiniIndyCookie %>
<div class="modal fade" id="popupvideo" tabindex="-1" role="dialog" aria-labelledby="popupvideoTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
	    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span style="margin-left:115%;"aria-hidden="true" id="closebutton">&times;</span>
        </button>
      <div class="modal-header" id="modalheaderpadding">
	  	<div class="mx-auto w-75">
		  <img class="img-fluid" src="/assets/Website/Images/newlogo.png" alt="new_logo" id="new_logo">
		</div>
        <%-- <h5 class="modal-title" id="exampleModalCenterTitle">Video</h5> --%>

      </div>
      <div class="modal-body" id="videopadding">
    	<div class="film-background">
		<%-- <img src="/assets/Uploads/videocover.jpg" alt="video_cover"> --%>
		<video-js data-account="1589608515001" data-player="HyJPGnaE" data-embed="default" controls="" data-video-id="6063516313001" data-playlist-id="" data-application-id="" class="vjs-fluid"></video-js>
		<script src="https://players.brightcove.net/1589608515001/HyJPGnaE_default/index.min.js"></script>
		</div>
	  </div>
      <div class="modal-footer">
		<%-- <form class="form-inline" action="/home/doNotShowMiniIndy" id="minindy-video-form">
			<label>
				<input class="form-control" type="checkbox" name="dontshow" checked="$doNotShowMiniIndy" />
				<span class="px-2">Do not show this video again</span>
			</label>
		</form> --%>
      </div>
    </div>
  </div>
</div> 

<% end_if %>
</div>