<div class="">
	<div class="typography">
    $Content
    </div>
	<div class="clear"><!-- --></div>

	<div class="major-sponsors">
		<% if Major %>
		<h3 style="border-bottom: 1px solid #ccc;"><span>Major Sponsors</span></h3>
		<ul class="row list-unstyled pt-3">
			<% loop Major %>
            <li class="col-md-4 col-sm-6">
			<%-- <li class="sponsor PlatinumSponsor<% if MultipleOf(3) %> Last<% end_if %><% if First %> First<% end_if %><% if MultipleOf(4) %> First<% end_if %>"> --%>
				<a href="$customLink" class="logo" target="_blank">
					<% if Logo %>
					<img class="img-fluid w-100" src="$Logo.URL" alt="$Logo.TITLE">
					<% else %>
					<div class="noLogo"></div>
					<% end_if %>
					<div class="p-3 bg-primary text-white text-1 mb-3">$Name</div>
				</a>
			</li>
            <% if MultipleOf(3) %><li class="w-100"></li><% end_if %>
			<% end_loop %>
			</ul>
		<% end_if %>
	</div>
	<br />
	<div class="clear"><!-- --></div>
	<br />

	<div class="gold-sponsors">
		<h3 style="border-bottom: 1px solid #ccc;"><span>Diamond Sponsors $20,000</span></h3>
		<ul class="row list-unstyled pt-3">
            <li class="col-md-3 col-sm-4">
			<%-- <li class="sponsor" style="margin: 10px 8.33px 10px 0px"> --%>
				<img class="img-fluid w-100" src="/assets/Uploads/TeamLogos/Bombardier.png" alt="Bombardier"<%--  style="width:220px;" --%>>
				<div class="text-white bg-primary p-2 mb-3">Bombardier</div>
			</li>
            <li class="col-md-3 col-sm-4">
			<%-- <li class="sponsor" style="margin: 10px 8.33px 10px 8.33px"> --%>
				<img class="img-fluid w-100" src="/assets/Uploads/TeamLogos/GEAviation.jpg" alt="GE Aviation"<%--  style="width:220px;" --%>>
				<div class="text-white bg-primary p-2 mb-3">GE Aviation/GECAS</div>
			</li>
            <li class="col-md-3 col-sm-4">
			<%-- <li class="sponsor" style="margin: 10px 8.33px 10px 8.33px"> --%>
				<img class="img-fluid w-100" src="/assets/Uploads/TeamLogos/Embraer-blue.jpg" alt="Embraer"<%--  style="width:220px;" --%>>
				<div class="text-white bg-primary p-2 mb-3">Embraer</div>
			</li>
            <li class="col-md-3 col-sm-4">
			<%-- <li class="sponsor" style="margin: 10px 0px 10px 8.33px"> --%>
				<img class="img-fluid w-100" src="/assets/Uploads/TeamLogos/travellance.jpg" alt="Travelliance"<%--  style="width:220px;" --%>>
				<div class="text-white bg-primary p-2 mb-3">Travelliance</div>
			</li>
            <li class="col-md-3 col-sm-4">
			<%-- <div class="clear"></div> --%>
			<%-- <li class="sponsor First"> --%>
				<img class="img-fluid w-100" src="/assets/Uploads/TeamLogos/StandardAerocolor-2.jpg" alt="Standard Aero"<%--  style="width:220px;" --%>>
				<div class="text-white bg-primary p-2 mb-3">StandardAero</div>
			</li>
		</ul>
	</div>

	<div class="Platinum">
		<h3 style="border-bottom: 1px solid #ccc;"><span>Platinum Sponsors $10,000</span></h3>
		<ul>
			<li class="sponsor First">
				<img src="/assets/Uploads/TeamLogos/honeywell.png" alt="Honeywell">
				<div class="name">Honeywell</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/Mitsubishi2.png" alt="Mitsubishi">
				<div class="name">Mitsubishi</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/AAR.jpg" alt="AAR">
				<div class="name">AAR</div>
			</li>
			<div class="clear"></div>
		</ul>
	</div>
	<!--
    <div class="platinum-sponsors collapse" hidden>
        <ul class="row list-unstyled">
			<li class="col">
				<img class="img-fluid w-100" src="/assets/Uploads/TeamLogos/Collins-Aerospace_Primary_Black.jpg" alt="Collins Aerospace">
				<div class="text-white bg-primary p-2 mb-3">Collins Aerospace</div>
			</li>
			<li class="col">
				<img class="img-fluid w-100" src="/assets/Uploads/TeamLogos/API-logo.jpg" alt="Accommodations Plus International">
				<div class="text-white bg-primary p-2 mb-3">Accommodations Plus International</div>
			</li>
			<li class="col">
				<img class="img-fluid w-100" src="/assets/Uploads/TeamLogos/dbPaint.png" alt="Dean Baldwin">
				<div class="text-white bg-primary p-2 mb-3">Dean Baldwin</div>
			</li>
			<li class="col">
				<img class="img-fluid w-100" src="/assets/Uploads/TeamLogos/Mitsubishi.jpg" alt="Mitsubishi">
				<div class="text-white bg-primary p-2 mb-3">Mitsubishi</div>
			</li>
			<li class="col">
				<img class="img-fluid w-100" src="/assets/Uploads/TeamLogos/Nitto.jpg" alt="Nitto">
				<div class="text-white bg-primary p-2 mb-3">Nitto</div>
			</li>
			<li class="col">
				<img class="img-fluid w-100" src="/assets/Uploads/TeamLogos/parker.png" alt="Parker Aerospace">
				<div class="text-white bg-primary p-2 mb-3">Parker Aerospace</div>
			</li>
			<li class="col">
				<img class="img-fluid w-100" src="/assets/Uploads/TeamLogos/PPG.jpg" alt="PPG">
				<div class="text-white bg-primary p-2 mb-3">PPG</div>
			</li>
			<li class="w-100"></li>
			<li class="col">
				<img class="img-fluid w-100" src="/assets/Uploads/TeamLogos/PrattWhitney-New2017.jpg" alt="Pratt & Whitney">
				<div class="text-white bg-primary p-2 mb-3">Pratt & Whitney</div>
			</li>
			<li class="col">
				<img class="img-fluid w-100" src="/assets/Uploads/TeamLogos/Proviti-Logo.jpg" alt="Protiviti">
				<div class="text-white bg-primary p-2 mb-3">Protiviti</div>
			</li>
			<li class="col">
				<img class="img-fluid w-100" src="/assets/Uploads/TeamLogos/structured-finance-international.jpg" alt="Structured Finance International">
				<div class="text-white bg-primary p-2 mb-3">Structured Finance International</div>
			</li>
			<li class="col">
				<img class="img-fluid w-100" src="/assets/Uploads/TeamLogos/wells-fargo.jpg" alt="Wells Fargo">
				<div class="text-white bg-primary p-2 mb-3">Wells Fargo</div>
			</li>
			<li class="col">
				<img class="img-fluid w-100" src="/assets/Uploads/TeamLogos/Zodiac-Aerospace-01.jpg" alt="Zodiac Aircatering Equipment">
				<div class="name">Zodiac Aircatering Equipment</div>
			</li>
		</ul>
    </div>
	<br />
	<div class="clear"></div>
	<br />-->

	<div class="GoldSponsors-7k">
		<h3 style="border-bottom: 1px solid #ccc;"><span>Gold Sponsors $7,000</span></h3>
		<ul class="row mb-0">
			<li class="col-md p-0 ml-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/Collins-Aerospace_Primary_Black.jpg" alt="Collins Aerospace">
				<div class="text-white bg-primary p-2">Collins Aerospace</div>
			</li>
			<li class="col-md p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/Aviation-Technical-Services-Logo.jpg" alt="ATS Components">
				<div class="text-white bg-primary p-2">ATS Components</div>
			</li>
			<li class="col-md p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/AQRD.jpg" alt="AQRD">
				<div class="text-white bg-primary p-2">AQRD</div>
			</li>
			<li class="col-md p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/futureaviation.jpg" alt="Future Aviation">
				<div class="text-white bg-primary p-2">Future Aviation</div>
			</li>
			<li class="col-md p-0 mr-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/Safran2.jpg" alt="Safran Cabin Services">
				<div class="text-white bg-primary p-2">Safran Cabin Services</div>
			</li>
		</ul>
		<ul class="row mb-0">
			<li class="col-md p-0 ml-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/WencorGroup.jpg" alt="Wencor Group">
				<div class="text-white bg-primary p-2">Wencor Group</div>
			</li>
			<li class="col-md p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/Trelleborg.jpg" alt="Trelleborg">
				<div class="text-white bg-primary p-2">Trelleborg</div>
			</li>
			<li class="col p-0" style="background: none;"></li>
			<li class="col p-0" style="background: none;"></li>
			<li class="col p-0 mr-0" style="background: none;"></li>
		</ul>
	</div>
	<br />
	<div class="clear"></div>
	<br />

	<div class="GoldSponsors-5k">
		<h3 style="border-bottom: 1px solid #ccc;"><span>Gold Sponsors $5,000</span></h3>
		<ul class="row mb-0">
			<li class="col-sm p-0 ml-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/API-logo.jpg" alt="Accommodations Plus International">
				<div class="text-white bg-primary p-2">API</div>
			</li>
			<li class="col-sm p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/dbPaint.png" alt="Dean Baldwin">
				<div class="text-white bg-primary p-2">Dean Baldwin</div>
			</li>
			<li class="col-sm p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/DT-Logo-Square.jpg" alt="Dixie Tech">
				<div class="text-white bg-primary p-2">Dixie Tech</div>
			</li>
			<li class="col-sm p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/GAT-logo.jpg" alt="GA Telesis">
				<div class="text-white bg-primary p-2">GA Telesis</div>
			</li>
			<li class="col-sm p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/Marsh-and-McLennan-logo.jpg" alt="Marsh & McLennan">
				<div class="text-white bg-primary p-2">Marsh & McLennan</div>
			</li>
			<li class="col-sm p-0 mr-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/NIACC.jpg" alt="">
				<div class="text-white bg-primary p-2">NIACC-AVITECH</div>
			</li>
		</ul>
		<ul class="row mb-0">
			<li class="col-sm p-0 ml-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/PrattWhitney-New2017.jpg" alt="Pratt & Whitney">
				<div class="text-white bg-primary p-2">Pratt & Whitney</div>
			</li>
			<li class="col-sm p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/Proviti-Logo.jpg" alt="Protiviti">
				<div class="text-white bg-primary p-2">Protiviti</div>
			</li>
			<li class="col-sm p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/RegionalOne.jpg" alt="Regional One">
				<div class="text-white bg-primary p-2">Regional One</div>
			</li>
			<li class="col-sm p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/STS.jpg" alt="STS Avitation Group">
				<div class="text-white bg-primary p-2">STS Avitation Group</div>
			</li>
			<li class="col-sm p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/wells-fargo.jpg" alt="Wells Fargo">
				<div class="text-white bg-primary p-2">Wells Fargo</div>
			</li>
		</ul>
	</div>
	<br />
	<div class="clear"></div>
	<br />

	<div class="GoldSponsors-5k">
		<h3 style="border-bottom: 1px solid #ccc;"><span>Car Sponsors $5,000</span></h3>
		<ul class="row mb-0">
			<li class="col-sm p-0 ml-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/AeroKool-Logo.jpg" alt="Aerokool Aviation">
				<div class="text-white bg-primary p-2">AeroKool Aviation</div>
			</li>
			<li class="col-sm p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/Meggitt-w-secureplane-cropped.jpg" alt="Securaplane Technologies">
				<div class="text-white bg-primary p-2">Securaplane</div>
			</li>
			<li class="col p-0" style="background: none;"></li>
			<li class="col p-0" style="background: none;"></li>
			<li class="col p-0" style="background: none;"></li>
			<li class="col p-0 mr-0" style="background: none;"></li>
		</ul>
	</div>
	<br />
	<div class="clear"></div>
	<br />

	<div class="GoldSponsors-3_2k">
		<h3 style="border-bottom: 1px solid #ccc;"><span>Car Sponsors $3,200</span></h3>
		<ul class="row mb-0">
			<li class="col-xs p-0 ml-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/Bombardier.png" alt="Bombardier">
				<div class="text-white bg-primary p-2">Bombardier</div>
			</li>
			<li class="col-xs p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/michelin2.png" alt="Michelin">
				<div class="text-white bg-primary p-2">Michelin</div>
			</li>
			<li class="col-xs p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/Aero-Parts-Mart_logo.jpg" alt="Aero Parts Mart">
				<div class="text-white bg-primary p-2">Aero Parts Mart</div>
			</li>
			<li class="col-xs p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/parker.png" alt="Parker Aerospace">
				<div class="text-white bg-primary p-2">Parker Aerospace</div>
			</li>
			<li class="col-xs p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/aviall2.png" alt="Aviall">
				<div class="text-white bg-primary p-2">Aviall</div>
			</li>
			<li class="col-xs p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/UnitedHealthcareWeb.jpg" alt="United Healthcare">
				<div class="text-white bg-primary p-2">United Healthcare</div>
			</li>
		</ul>
		<ul class="row mb-0">
			<li class="col-xs p-0 ml-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/Parr-Brown-Logo.jpg" alt="Parr Brown">
				<div class="text-white bg-primary p-2">Parr Brown</div>
			</li>
			<li class="col-xs p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/Safran2.jpg" alt="Safran Landing Systems">
				<div class="text-white bg-primary p-2">Safran</div>
			</li>
			<li class="col-xs p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/Embraer-blue.jpg" alt="Embraer">
				<div class="text-white bg-primary p-2">Embraer</div>
			</li>
			<li class="col-xs p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/Thales-logo.jpg" alt="Thales">
				<div class="text-white bg-primary p-2">Thales</div>
			</li>
			<li class="col-xs p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/Enterprise.jpg" alt="Enterprise">
				<div class="text-white bg-primary p-2">Enterprise</div>
			</li>
			<li class="col-xs p-0">
				<img class="img-fluid" src="/assets/Uploads/TeamLogos/walmart.jpg" alt="Walmart Distribution">
				<div class="text-white bg-primary p-2">Walmart</div>
			</li>
			<li class="col p-0" style="background: none;"></li>
			<li class="col p-0 mr-0" style="background: none;"></li>
		</ul>
	</div>
	<br />
	<div class="clear"></div>
	<br />

	<br /><br /><br /><br /><br /><br />
	<div class="clear"></div>
	<br />
</div>
