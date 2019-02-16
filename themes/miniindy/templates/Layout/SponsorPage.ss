<div class="typography">
	$Content
	<div class="clear"><!-- --></div>
	
	<div class="PlatinumSponsers">
		<% if Major %>
		<% loop sectionTitle(Major) %>
		<% if HeaderTitle %>
		<h3><span>$HeaderTitle</span></h3>
		<% else %>
		<h3><span>Major Sponsors</span></h3>
		<% end_if %>
		<% end_loop %>
		<ul>
			<% loop Major %>
			<li class="sponsor PlatinumSponsor<% if MultipleOf(3) %> Last<% end_if %><% if First %> First<% end_if %><% if MultipleOf(4) %> First<% end_if %>">
				<a href="$customLink" class="logo" target="_blank">
					<% if Logo %>
					$Logo
					<% else %>
					<div class="noLogo"></div>
					<% end_if %>
					<div class="name">$Name</div>
				</a>
			</li>
			<% end_loop %>
			<div class="clear"><!-- --></div>
			</ul>
		<% end_if %>
	</div>
	<br />
	<div class="clear"><!-- --></div>
	<br />


	<div class="GoldSponsers">
		<h3><span>Diamond Sponsors $20,000</span></h3>
		<ul>
			<li class="sponsor First">
				<img src="/assets/Uploads/TeamLogos/Bombardier.png" alt="Bombardier" style="width:220px;">
				<div class="name">Bombardier</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/GEAviation.jpg" alt="GE Aviation" style="width:220px;">
				<div class="name">GE Aviation/GECAS</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/Embraer-blue.jpg" alt="Embraer" style="width:220px;">
				<div class="name">Embraer</div>
			</li>
			<li class="sponsor Last">
				<img src="/assets/Uploads/TeamLogos/travellance.jpg" alt="Travelliance" style="width:220px;">
				<div class="name">Travelliance</div>
			</li>
			<div class="clear"></div>
			<li class="sponsor First">
				<img src="/assets/Uploads/TeamLogos/standardAero.png" alt="Standard Aero" style="width:220px;">
				<div class="name">StandardAero</div>
			</li>
			<div class="clear"></div>
		</ul>
	</div>
	<br />
	<div class="clear"></div>
	<br />

	<div class="Platinum">
		<h3><span>Platinum Sponsors $10,000</span></h3>
		<ul>
			<li class="sponsor First">
				<img src="/assets/Uploads/TeamLogos/aar.png" alt="AAR">
				<div class="name">AAR</div>
			</li>
			<div class="clear"></div>
		</ul>
	</div>
	<br />
	<div class="clear"></div>
	<br />

	<div class="GoldSponsors-7k">
		<h3><span>Gold Sponsors $7,000</span></h3>
		<ul>
			<li class="sponsor First">
				<img src="/assets/Uploads/TeamLogos/Aero-Parts-Mart_logo.jpg" alt="Aero Parts Mart">
				<div class="name">Aero Parts Mart</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/RexnordAerospaceWeb.jpg" alt="Rexnord Aerospace">
				<div class="name">Rexnord Aerospace</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/Seginus-Logo.jpg" alt="Seginus">
				<div class="name">Seginus Inc</div>
			</li>
			<li class="sponsor ">
				<img src="/assets/Uploads/TeamLogos/AOG_Spares_logo.jpg" alt="AOG Spares">
				<div class="name">AOG Aviation Spares Inc</div>
			</li>
			<li class="sponsor Last">
				<img src="/assets/Uploads/TeamLogos/futureaviation.jpg" alt="Future Aviation">
				<div class="name">Future Aviation</div>
			</li>
			<div class="clear"></div>
			<li class="sponsor First">
				<img src="/assets/Uploads/TeamLogos/honeywell.png" alt="Honeywell">
				<div class="name">Honeywell</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/Parr-Brown-Logo.jpg" alt="Parr Brown">
				<div class="name">Parr Brown</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/rockwell.png" alt="Rockwell">
				<div class="name">Rockwell Collins</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/Safran2.jpg" alt="Safran Cabin Services">
				<div class="name">Safran Cabin Services </div>
			</li>
			<li class="sponsor Last">
				<img src="/assets/Uploads/TeamLogos/Aviation-Technical-Services-Logo.jpg" alt="ATS Components">
				<div class="name">ATS Components</div>
			</li>
			<div class="clear"></div>
			<li class="sponsor First">
				<img src="/assets/Uploads/TeamLogos/AQRD.jpg" alt="AQRD">
				<div class="name">AQRD</div>
			</li>
			<div class="clear"></div>
		</ul>
	</div>
	<br />
	<div class="clear"></div>
	<br />


	<div class="GoldSponsors-5k">
		<h3><span>Gold Sponsors $5,000</span></h3>
		<ul>
			<li class="sponsor First">
				<img src="/assets/Uploads/TeamLogos/API-logo.jpg" alt="Accommodations Plus International">
				<div class="name">Accommodations Plus International</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/dbPaint.png" alt="Dean Baldwin">
				<div class="name">Dean Baldwin</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/Mitsubishi.jpg" alt="Mitsubishi">
				<div class="name">Mitsubishi</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/Nitto.jpg" alt="Nitto">
				<div class="name">Nitto</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/parker.png" alt="Parker Aerospace">
				<div class="name">Parker Aerospace</div>
			</li>
			<li class="sponsor Last">
				<img src="/assets/Uploads/TeamLogos/PPG.jpg" alt="PPG">
				<div class="name">PPG</div>
			</li>
			<div class="clear"></div>
			<li class="sponsor First">
				<img src="/assets/Uploads/TeamLogos/PrattWhitney-New2017.jpg" alt="Pratt & Whitney">
				<div class="name">Pratt & Whitney</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/Proviti-Logo.jpg" alt="Protiviti">
				<div class="name">Protiviti</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/structured-finance-international.jpg" alt="Structured Finance International">
				<div class="name">Structured Finance International</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/wells-fargo.jpg" alt="Wells Fargo">
				<div class="name">Wells Fargo</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/Zodiac-Aerospace-01.jpg" alt="Zodiac Aircatering Equipment">
				<div class="name">Zodiac Aircatering Equipment</div>
			</li>
			<div class="clear"></div>
		</ul>
	</div>
	<br />
	<div class="clear"></div>
	<br />

	<div class="GoldSponsors-5k">
		<h3><span>Car Sponsors $5,000</span></h3>
		<ul>
			<li class="sponsor First">
				<img src="/assets/Uploads/TeamLogos/Enterprise.jpg" alt="Enterprise">
				<div class="name">Enterprise</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/UnitedHealthcareWeb.jpg" alt="United Healthcare">
				<div class="name">United Healthcare</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/Meggitt-w-secureplane-cropped.jpg" alt="Securaplane Technologies">
				<div class="name">Securaplane Technologies</div>
			</li>
			<div class="clear"></div>
		</ul>
	</div>
	<br />
	<div class="clear"></div>
	<br />

	<div class="GoldSponsors-3_2k">
		<h3><span>Car Sponsors $3,200</span></h3>
		<ul>
			<li class="sponsor First">
				<img src="/assets/Uploads/TeamLogos/ametek.jpg" alt="Ametek Ameron">
				<div class="name">Ametek Ameron</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/aviall2.png" alt="Aviall">
				<div class="name">Aviall</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/bgi3.jpg" alt="BGI">
				<div class="name">BGI</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/michelin2.png" alt="Michelin">
				<div class="name">Michelin</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/Professional.jpg" alt="Professional Aircraft Accessories">
				<div class="name">Professional Aircraft Accessories</div>
			</li>
			<li class="sponsor">
				<img src="/assets/Uploads/TeamLogos/Safran2.jpg" alt="Safran Landing Systems">
				<div class="name">Safran Landing Systems</div>
			</li>
			<li class="sponsor Last">
				<img src="/assets/Uploads/TeamLogos/walmart.jpg" alt="Walmart Distribution">
				<div class="name">Walmart Distribution</div>
			</li>
			<div class="clear"></div>
			<li class="sponsor First">
				<img src="/assets/Uploads/TeamLogos/walmart.jpg" alt="Walmart Transportation ">
				<div class="name">Walmart Transportation </div>
			</li>
		</ul>
	</div>
	<br />
	<div class="clear"></div>
	<br />






	<br /><br /><br /><br /><br /><br />
	<div class="clear"></div>
	<br />
</div>