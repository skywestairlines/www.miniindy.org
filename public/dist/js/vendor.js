!function(t){var e={};function i(a){if(e[a])return e[a].exports;var o=e[a]={i:a,l:!1,exports:{}};return t[a].call(o.exports,o,o.exports,i),o.l=!0,o.exports}i.m=t,i.c=e,i.d=function(t,e,a){i.o(t,e)||Object.defineProperty(t,e,{configurable:!1,enumerable:!0,get:a})},i.n=function(t){var e=t&&t.__esModule?function(){return t.default}:function(){return t};return i.d(e,"a",e),e},i.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},i.p="",i(i.s=16)}({16:function(t,e,i){t.exports=i(17)},17:function(t,e,i){var a,o;i(18),i(19),window.$=window.jQuery||document.write('<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"><\/script>'),a=jQuery,o={social_tools:!0,modal:!0,allow_resize:!0,theme:"light-rounded"},a(document).ready(function(){a("a[rel^='prettyPhoto']",document).prettyPhoto(o),a(document).on("click","a[rel^='prettyPhoto']",function(){a(this).prettyPhoto(a.extend({},o,a(this).data()))})})},18:function(t,e){var a;(a=jQuery).fn.slides=function(t){return t=a.extend({},a.fn.slides.option,t),this.each(function(){function e(e,i,o){if(!p&&n){switch(p=!0,t.animationStart(k+1),e){case"next":b=k,r=2*m,e=2*-m,k=w=g===(w=k+1)?0:w;break;case"prev":b=k,r=0,e=0,k=w=-1==(w=k-1)?g-1:w;break;case"pagination":w=parseInt(o,10),b=a("."+t.paginationClass+" li."+t.currentClass+" a",h).attr("href").match("[^#/]+$"),w>b?(r=2*m,e=2*-m):(r=0,e=0),k=w}"fade"===i?t.crossfade?_.children(":eq("+w+")",h).css({zIndex:10}).fadeIn(t.fadeSpeed,t.fadeEasing,function(){t.autoHeight?_.animate({height:_.children(":eq("+w+")",h).outerHeight()},t.autoHeightSpeed,function(){_.children(":eq("+b+")",h).css({display:"none",zIndex:0}),_.children(":eq("+w+")",h).css({zIndex:0}),t.animationComplete(w+1),p=!1}):(_.children(":eq("+b+")",h).css({display:"none",zIndex:0}),_.children(":eq("+w+")",h).css({zIndex:0}),t.animationComplete(w+1),p=!1)}):_.children(":eq("+b+")",h).fadeOut(t.fadeSpeed,t.fadeEasing,function(){t.autoHeight?_.animate({height:_.children(":eq("+w+")",h).outerHeight()},t.autoHeightSpeed,function(){_.children(":eq("+w+")",h).fadeIn(t.fadeSpeed,t.fadeEasing)}):_.children(":eq("+w+")",h).fadeIn(t.fadeSpeed,t.fadeEasing,function(){a.browser.msie&&a(this).get(0).style.removeAttribute("filter")}),t.animationComplete(w+1),p=!1}):(_.children(":eq("+w+")").css({left:r,display:"block"}),t.autoHeight?_.animate({left:e,height:_.children(":eq("+w+")").outerHeight()},t.slideSpeed,t.slideEasing,function(){_.css({left:-m}),_.children(":eq("+w+")").css({left:m,zIndex:5}),_.children(":eq("+b+")").css({left:m,display:"none",zIndex:0}),t.animationComplete(w+1),p=!1}):_.animate({left:e},t.slideSpeed,t.slideEasing,function(){_.css({left:-m}),_.children(":eq("+w+")").css({left:m,zIndex:5}),_.children(":eq("+b+")").css({left:m,display:"none",zIndex:0}),t.animationComplete(w+1),p=!1})),t.pagination&&(a("."+t.paginationClass+" li."+t.currentClass,h).removeClass(t.currentClass),a("."+t.paginationClass+" li:eq("+w+")",h).addClass(t.currentClass))}}function i(){clearInterval(h.data("interval"))}function o(){t.pause?(clearTimeout(h.data("pause")),clearInterval(h.data("interval")),d=setTimeout(function(){clearTimeout(h.data("pause")),c=setInterval(function(){e("next",v)},t.play),h.data("interval",c)},t.pause),h.data("pause",d)):i()}a("."+t.container,a(this)).children().wrapAll('<div class="slides_control"/>');var n,p,s,r,l,d,c,h=a(this),_=a(".slides_control",h),g=_.children().length,m=_.children().outerWidth(),f=_.children().outerHeight(),u=t.start-1,v=t.effect.indexOf(",")<0?t.effect:t.effect.replace(" ","").split(",")[0],y=t.effect.indexOf(",")<0?v:t.effect.replace(" ","").split(",")[1],w=0,b=0,x=0,k=0;if(g<2)return a("."+t.container,a(this)).fadeIn(t.fadeSpeed,t.fadeEasing,function(){n=!0,t.slidesLoaded()}),a("."+t.next+", ."+t.prev).fadeOut(0),!1;if(!(g<2)){if(u<0&&(u=0),u>g&&(u=g-1),t.start&&(k=u),t.randomize&&_.randomize(),a("."+t.container,h).css({overflow:"hidden",position:"relative"}),_.children().css({position:"absolute",top:0,left:_.children().outerWidth(),zIndex:0,display:"none"}),_.css({position:"relative",width:3*m,height:f,left:-m}),a("."+t.container,h).css({display:"block"}),t.autoHeight&&(_.children().css({height:"auto"}),_.animate({height:_.children(":eq("+u+")").outerHeight()},t.autoHeightSpeed)),t.preload&&_.find("img:eq("+u+")").length){a("."+t.container,h).css({background:"url("+t.preloadImage+") no-repeat 50% 50%"});var P=_.find("img:eq("+u+")").attr("src")+"?"+(new Date).getTime();l="slides_control"!=a("img",h).parent().attr("class")?_.children(":eq(0)")[0].tagName.toLowerCase():_.find("img:eq("+u+")"),_.find("img:eq("+u+")").attr("src",P).load(function(){_.find(l+":eq("+u+")").fadeIn(t.fadeSpeed,t.fadeEasing,function(){a(this).css({zIndex:5}),a("."+t.container,h).css({background:""}),n=!0,t.slidesLoaded()})})}else _.children(":eq("+u+")").fadeIn(t.fadeSpeed,t.fadeEasing,function(){n=!0,t.slidesLoaded()});t.bigTarget&&(_.children().css({cursor:"pointer"}),_.children().click(function(){return e("next",v),!1})),t.hoverPause&&t.play&&(_.bind("mouseover",function(){i()}),_.bind("mouseleave",function(){o()})),t.generateNextPrev&&(a("."+t.container,h).after('<a href="#" class="'+t.prev+'">Prev</a>'),a("."+t.prev,h).after('<a href="#" class="'+t.next+'">Next</a>')),a("."+t.next,h).click(function(i){i.preventDefault(),t.play&&o(),e("next",v)}),a("."+t.prev,h).click(function(i){i.preventDefault(),t.play&&o(),e("prev",v)}),t.generatePagination?(t.prependPagination?h.prepend("<ul class="+t.paginationClass+"></ul>"):h.append("<ul class="+t.paginationClass+"></ul>"),_.children().each(function(){a("."+t.paginationClass,h).append('<li><a href="#'+x+'">'+(x+1)+"</a></li>"),x++})):a("."+t.paginationClass+" li a",h).each(function(){a(this).attr("href","#"+x),x++}),a("."+t.paginationClass+" li:eq("+u+")",h).addClass(t.currentClass),a("."+t.paginationClass+" li a",h).click(function(){return t.play&&o(),s=a(this).attr("href").match("[^#/]+$"),k!=s&&e("pagination",y,s),!1}),a("a.link",h).click(function(){return t.play&&o(),s=a(this).attr("href").match("[^#/]+$")-1,k!=s&&e("pagination",y,s),!1}),t.play&&(c=setInterval(function(){e("next",v)},t.play),h.data("interval",c))}})},a.fn.slides.option={preload:!1,preloadImage:"/img/loading.gif",container:"slides_container",generateNextPrev:!1,next:"next",prev:"prev",pagination:!0,generatePagination:!0,prependPagination:!1,paginationClass:"pagination",currentClass:"current",fadeSpeed:350,fadeEasing:"",slideSpeed:350,slideEasing:"",start:1,effect:"slide",crossfade:!1,randomize:!1,play:0,pause:0,hoverPause:!1,autoHeight:!1,autoHeightSpeed:350,bigTarget:!1,animationStart:function(){},animationComplete:function(){},slidesLoaded:function(){}},a.fn.randomize=function(t){function e(){return Math.round(Math.random())-.5}return a(this).each(function(){var o=a(this),n=o.children(),p=n.length;if(p>1){n.hide();var s=[];for(i=0;i<p;i++)s[s.length]=i;s=s.sort(e),a.each(s,function(e,i){var a=n.eq(i),p=a.clone(!0);p.show().appendTo(o),void 0!==t&&t(a,p),a.remove()})}})}},19:function(t,e){!function(t){function e(){var t=location.href;return hashtag=-1!==t.indexOf("#prettyPhoto")&&decodeURI(t.substring(t.indexOf("#prettyPhoto")+1,t.length)),hashtag&&(hashtag=hashtag.replace(/<|>/g,"")),hashtag}function a(t,e){t=t.replace(/[\[]/,"\\[").replace(/[\]]/,"\\]");var i=new RegExp("[\\?&]"+t+"=([^&#]*)").exec(e);return null==i?"":i[1]}t.prettyPhoto={version:"3.1.6"},t.fn.prettyPhoto=function(o){o=jQuery.extend({hook:"rel",animation_speed:"fast",ajaxcallback:function(){},slideshow:5e3,autoplay_slideshow:!1,opacity:.8,show_title:!0,allow_resize:!0,allow_expand:!0,default_width:500,default_height:344,counter_separator_label:"/",theme:"pp_default",horizontal_padding:20,hideflash:!1,wmode:"opaque",autoplay:!0,modal:!1,deeplinking:!0,overlay_gallery:!0,overlay_gallery_max:30,keyboard_shortcuts:!0,changepicturecallback:function(){},callback:function(){},ie6_fallback:!0,markup:'<div class="pp_pic_holder"> \t\t\t\t\t\t<div class="ppt">&nbsp;</div> \t\t\t\t\t\t<div class="pp_top"> \t\t\t\t\t\t\t<div class="pp_left"></div> \t\t\t\t\t\t\t<div class="pp_middle"></div> \t\t\t\t\t\t\t<div class="pp_right"></div> \t\t\t\t\t\t</div> \t\t\t\t\t\t<div class="pp_content_container"> \t\t\t\t\t\t\t<div class="pp_left"> \t\t\t\t\t\t\t<div class="pp_right"> \t\t\t\t\t\t\t\t<div class="pp_content"> \t\t\t\t\t\t\t\t\t<div class="pp_loaderIcon"></div> \t\t\t\t\t\t\t\t\t<div class="pp_fade"> \t\t\t\t\t\t\t\t\t\t<a href="#" class="pp_expand" title="Expand the image">Expand</a> \t\t\t\t\t\t\t\t\t\t<div class="pp_hoverContainer"> \t\t\t\t\t\t\t\t\t\t\t<a class="pp_next" href="#">next</a> \t\t\t\t\t\t\t\t\t\t\t<a class="pp_previous" href="#">previous</a> \t\t\t\t\t\t\t\t\t\t</div> \t\t\t\t\t\t\t\t\t\t<div id="pp_full_res"></div> \t\t\t\t\t\t\t\t\t\t<div class="pp_details"> \t\t\t\t\t\t\t\t\t\t\t<div class="pp_nav"> \t\t\t\t\t\t\t\t\t\t\t\t<a href="#" class="pp_arrow_previous">Previou</a> \t\t\t\t\t\t\t\t\t\t\t\t<p class="currentTextHolder">0/0</p> \t\t\t\t\t\t\t\t\t\t\t\t<a href="#" class="pp_arrow_next">Next</a> \t\t\t\t\t\t\t\t\t\t\t</div> \t\t\t\t\t\t\t\t\t\t\t<p class="pp_description"></p> \t\t\t\t\t\t\t\t\t\t\t<div class="pp_social">{pp_social}</div> \t\t\t\t\t\t\t\t\t\t\t<a class="pp_close" href="#">Close</a> \t\t\t\t\t\t\t\t\t\t</div> \t\t\t\t\t\t\t\t\t</div> \t\t\t\t\t\t\t\t</div> \t\t\t\t\t\t\t</div> \t\t\t\t\t\t\t</div> \t\t\t\t\t\t</div> \t\t\t\t\t\t<div class="pp_bottom"> \t\t\t\t\t\t\t<div class="pp_left"></div> \t\t\t\t\t\t\t<div class="pp_middle"></div> \t\t\t\t\t\t\t<div class="pp_right"></div> \t\t\t\t\t\t</div> \t\t\t\t\t</div> \t\t\t\t\t<div class="pp_overlay"></div>',gallery_markup:'<div class="pp_gallery"> \t\t\t\t\t\t\t\t<a href="#" class="pp_arrow_previous">Previous</a> \t\t\t\t\t\t\t\t<div> \t\t\t\t\t\t\t\t\t<ul> \t\t\t\t\t\t\t\t\t\t{gallery} \t\t\t\t\t\t\t\t\t</ul> \t\t\t\t\t\t\t\t</div> \t\t\t\t\t\t\t\t<a href="#" class="pp_arrow_next">Next</a> \t\t\t\t\t\t\t</div>',image_markup:'<img id="fullResImage" src="{path}" />',flash_markup:'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="{width}" height="{height}"><param name="wmode" value="{wmode}" /><param name="allowfullscreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="movie" value="{path}" /><embed src="{path}" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="{width}" height="{height}" wmode="{wmode}"></embed></object>',quicktime_markup:'<object classid="clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B" codebase="http://www.apple.com/qtactivex/qtplugin.cab" height="{height}" width="{width}"><param name="src" value="{path}"><param name="autoplay" value="{autoplay}"><param name="type" value="video/quicktime"><embed src="{path}" height="{height}" width="{width}" autoplay="{autoplay}" type="video/quicktime" pluginspage="http://www.apple.com/quicktime/download/"></embed></object>',iframe_markup:'<iframe src ="{path}" width="{width}" height="{height}" frameborder="no"></iframe>',inline_markup:'<div class="pp_inline">{content}</div>',custom_markup:"",social_tools:'<div class="twitter"><a href="http://twitter.com/share" class="twitter-share-button" data-count="none">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"><\/script></div><div class="facebook"><iframe src="//www.facebook.com/plugins/like.php?locale=en_US&href={location_href}&amp;layout=button_count&amp;show_faces=true&amp;width=500&amp;action=like&amp;font&amp;colorscheme=light&amp;height=23" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:500px; height:23px;" allowTransparency="true"></iframe></div>'},o);var n,p,s,r,l,d,c,h=this,_=!1,g=t(window).height(),m=t(window).width();function f(){t(".pp_loaderIcon").hide(),projectedTop=scroll_pos.scrollTop+(g/2-n.containerHeight/2),projectedTop<0&&(projectedTop=0),$ppt.fadeTo(settings.animation_speed,1),$pp_pic_holder.find(".pp_content").animate({height:n.contentHeight,width:n.contentWidth},settings.animation_speed),$pp_pic_holder.animate({top:projectedTop,left:m/2-n.containerWidth/2<0?0:m/2-n.containerWidth/2,width:n.containerWidth},settings.animation_speed,function(){$pp_pic_holder.find(".pp_hoverContainer,#fullResImage").height(n.height).width(n.width),$pp_pic_holder.find(".pp_fade").fadeIn(settings.animation_speed),isSet&&"image"==w(pp_images[set_position])?$pp_pic_holder.find(".pp_hoverContainer").show():$pp_pic_holder.find(".pp_hoverContainer").hide(),settings.allow_expand&&(n.resized?t("a.pp_expand,a.pp_contract").show():t("a.pp_expand").hide()),!settings.autoplay_slideshow||c||p||t.prettyPhoto.startSlideshow(),settings.changepicturecallback(),p=!0}),isSet&&settings.overlay_gallery&&"image"==w(pp_images[set_position])?(itemWidth=57,navWidth="facebook"==settings.theme||"pp_default"==settings.theme?50:30,itemsPerPage=Math.floor((n.containerWidth-100-navWidth)/itemWidth),itemsPerPage=itemsPerPage<pp_images.length?itemsPerPage:pp_images.length,totalPage=Math.ceil(pp_images.length/itemsPerPage)-1,0==totalPage?(navWidth=0,$pp_gallery.find(".pp_arrow_next,.pp_arrow_previous").hide()):$pp_gallery.find(".pp_arrow_next,.pp_arrow_previous").show(),galleryWidth=itemsPerPage*itemWidth,fullGalleryWidth=pp_images.length*itemWidth,$pp_gallery.css("margin-left",-(galleryWidth/2+navWidth/2)).find("div:first").width(galleryWidth+5).find("ul").width(fullGalleryWidth).find("li.selected").removeClass("selected"),goToPage=Math.floor(set_position/itemsPerPage)<totalPage?Math.floor(set_position/itemsPerPage):totalPage,t.prettyPhoto.changeGalleryPage(goToPage),$pp_gallery_li.filter(":eq("+set_position+")").addClass("selected")):$pp_pic_holder.find(".pp_content").unbind("mouseenter mouseleave"),o.ajaxcallback()}function u(e){$pp_pic_holder.find("#pp_full_res object,#pp_full_res embed").css("visibility","hidden"),$pp_pic_holder.find(".pp_fade").fadeOut(settings.animation_speed,function(){t(".pp_loaderIcon").show(),e()})}function v(t,e){if(resized=!1,y(t,e),imageWidth=t,imageHeight=e,(d>m||l>g)&&doresize&&settings.allow_resize&&!_){for(resized=!0,fitting=!1;!fitting;)d>m?(imageWidth=m-200,imageHeight=e/t*imageWidth):l>g?(imageHeight=g-200,imageWidth=t/e*imageHeight):fitting=!0,l=imageHeight,d=imageWidth;(d>m||l>g)&&v(d,l),y(imageWidth,imageHeight)}return{width:Math.floor(imageWidth),height:Math.floor(imageHeight),containerHeight:Math.floor(l),containerWidth:Math.floor(d)+2*settings.horizontal_padding,contentHeight:Math.floor(s),contentWidth:Math.floor(r),resized:resized}}function y(e,i){e=parseFloat(e),i=parseFloat(i),$pp_details=$pp_pic_holder.find(".pp_details"),$pp_details.width(e),detailsHeight=parseFloat($pp_details.css("marginTop"))+parseFloat($pp_details.css("marginBottom")),$pp_details=$pp_details.clone().addClass(settings.theme).width(e).appendTo(t("body")).css({position:"absolute",top:-1e4}),detailsHeight+=$pp_details.height(),detailsHeight=detailsHeight<=34?36:detailsHeight,$pp_details.remove(),$pp_title=$pp_pic_holder.find(".ppt"),$pp_title.width(e),titleHeight=parseFloat($pp_title.css("marginTop"))+parseFloat($pp_title.css("marginBottom")),$pp_title=$pp_title.clone().appendTo(t("body")).css({position:"absolute",top:-1e4}),titleHeight+=$pp_title.height(),$pp_title.remove(),s=i+detailsHeight,r=e,l=s+titleHeight+$pp_pic_holder.find(".pp_top").height()+$pp_pic_holder.find(".pp_bottom").height(),d=e}function w(t){return t.match(/youtube\.com\/watch/i)||t.match(/youtu\.be/i)?"youtube":t.match(/vimeo\.com/i)?"vimeo":t.match(/\b.mov\b/i)?"quicktime":t.match(/\b.swf\b/i)?"flash":t.match(/\biframe=true\b/i)?"iframe":t.match(/\bajax=true\b/i)?"ajax":t.match(/\bcustom=true\b/i)?"custom":"#"==t.substr(0,1)?"inline":"image"}function b(){if(doresize&&"undefined"!=typeof $pp_pic_holder){if(scroll_pos=x(),contentHeight=$pp_pic_holder.height(),contentwidth=$pp_pic_holder.width(),projectedTop=g/2+scroll_pos.scrollTop-contentHeight/2,projectedTop<0&&(projectedTop=0),contentHeight>g)return;$pp_pic_holder.css({top:projectedTop,left:m/2+scroll_pos.scrollLeft-contentwidth/2})}}function x(){return self.pageYOffset?{scrollTop:self.pageYOffset,scrollLeft:self.pageXOffset}:document.documentElement&&document.documentElement.scrollTop?{scrollTop:document.documentElement.scrollTop,scrollLeft:document.documentElement.scrollLeft}:document.body?{scrollTop:document.body.scrollTop,scrollLeft:document.body.scrollLeft}:void 0}function k(e){if(settings.social_tools&&(facebook_like_link=settings.social_tools.replace("{location_href}",encodeURIComponent(location.href))),settings.markup=settings.markup.replace("{pp_social}",""),t("body").append(settings.markup),$pp_pic_holder=t(".pp_pic_holder"),$ppt=t(".ppt"),$pp_overlay=t("div.pp_overlay"),isSet&&settings.overlay_gallery){currentGalleryPage=0,toInject="";for(var i=0;i<pp_images.length;i++)pp_images[i].match(/\b(jpg|jpeg|png|gif)\b/gi)?(classname="",img_src=pp_images[i]):(classname="default",img_src=""),toInject+="<li class='"+classname+"'><a href='#'><img src='"+img_src+"' width='50' alt='' /></a></li>";toInject=settings.gallery_markup.replace(/{gallery}/g,toInject),$pp_pic_holder.find("#pp_full_res").after(toInject),$pp_gallery=t(".pp_pic_holder .pp_gallery"),$pp_gallery_li=$pp_gallery.find("li"),$pp_gallery.find(".pp_arrow_next").click(function(){return t.prettyPhoto.changeGalleryPage("next"),t.prettyPhoto.stopSlideshow(),!1}),$pp_gallery.find(".pp_arrow_previous").click(function(){return t.prettyPhoto.changeGalleryPage("previous"),t.prettyPhoto.stopSlideshow(),!1}),$pp_pic_holder.find(".pp_content").hover(function(){$pp_pic_holder.find(".pp_gallery:not(.disabled)").fadeIn()},function(){$pp_pic_holder.find(".pp_gallery:not(.disabled)").fadeOut()}),itemWidth=57,$pp_gallery_li.each(function(e){t(this).find("a").click(function(){return t.prettyPhoto.changePage(e),t.prettyPhoto.stopSlideshow(),!1})})}settings.slideshow&&($pp_pic_holder.find(".pp_nav").prepend('<a href="#" class="pp_play">Play</a>'),$pp_pic_holder.find(".pp_nav .pp_play").click(function(){return t.prettyPhoto.startSlideshow(),!1})),$pp_pic_holder.attr("class","pp_pic_holder "+settings.theme),$pp_overlay.css({opacity:0,height:t(document).height(),width:t(window).width()}).bind("click",function(){settings.modal||t.prettyPhoto.close()}),t("a.pp_close").bind("click",function(){return t.prettyPhoto.close(),!1}),settings.allow_expand&&t("a.pp_expand").bind("click",function(e){return t(this).hasClass("pp_expand")?(t(this).removeClass("pp_expand").addClass("pp_contract"),doresize=!1):(t(this).removeClass("pp_contract").addClass("pp_expand"),doresize=!0),u(function(){t.prettyPhoto.open()}),!1}),$pp_pic_holder.find(".pp_previous, .pp_nav .pp_arrow_previous").bind("click",function(){return t.prettyPhoto.changePage("previous"),t.prettyPhoto.stopSlideshow(),!1}),$pp_pic_holder.find(".pp_next, .pp_nav .pp_arrow_next").bind("click",function(){return t.prettyPhoto.changePage("next"),t.prettyPhoto.stopSlideshow(),!1}),b()}return doresize=!0,scroll_pos=x(),t(window).unbind("resize.prettyphoto").bind("resize.prettyphoto",function(){b(),g=t(window).height(),m=t(window).width(),"undefined"!=typeof $pp_overlay&&$pp_overlay.height(t(document).height()).width(m)}),o.keyboard_shortcuts&&t(document).unbind("keydown.prettyphoto").bind("keydown.prettyphoto",function(e){if("undefined"!=typeof $pp_pic_holder&&$pp_pic_holder.is(":visible"))switch(e.keyCode){case 37:t.prettyPhoto.changePage("previous"),e.preventDefault();break;case 39:t.prettyPhoto.changePage("next"),e.preventDefault();break;case 27:settings.modal||t.prettyPhoto.close(),e.preventDefault()}}),t.prettyPhoto.initialize=function(){return settings=o,"pp_default"==settings.theme&&(settings.horizontal_padding=16),theRel=t(this).attr(settings.hook),galleryRegExp=/\[(?:.*)\]/,isSet=!!galleryRegExp.exec(theRel),pp_images=isSet?jQuery.map(h,function(e,i){if(-1!=t(e).attr(settings.hook).indexOf(theRel))return t(e).attr("href")}):t.makeArray(t(this).attr("href")),pp_titles=isSet?jQuery.map(h,function(e,i){if(-1!=t(e).attr(settings.hook).indexOf(theRel))return t(e).find("img").attr("alt")?t(e).find("img").attr("alt"):""}):t.makeArray(t(this).find("img").attr("alt")),pp_descriptions=isSet?jQuery.map(h,function(e,i){if(-1!=t(e).attr(settings.hook).indexOf(theRel))return t(e).attr("title")?t(e).attr("title"):""}):t.makeArray(t(this).attr("title")),pp_images.length>settings.overlay_gallery_max&&(settings.overlay_gallery=!1),set_position=jQuery.inArray(t(this).attr("href"),pp_images),rel_index=isSet?set_position:t("a["+settings.hook+"^='"+theRel+"']").index(t(this)),k(this),settings.allow_resize&&t(window).bind("scroll.prettyphoto",function(){b()}),t.prettyPhoto.open(),!1},t.prettyPhoto.open=function(e){return"undefined"==typeof settings&&(settings=o,pp_images=t.makeArray(arguments[0]),pp_titles=arguments[1]?t.makeArray(arguments[1]):t.makeArray(""),pp_descriptions=arguments[2]?t.makeArray(arguments[2]):t.makeArray(""),isSet=pp_images.length>1,set_position=arguments[3]?arguments[3]:0,k(e.target)),settings.hideflash&&t("object,embed,iframe[src*=youtube],iframe[src*=vimeo]").css("visibility","hidden"),t(pp_images).length>1?t(".pp_nav").show():t(".pp_nav").hide(),t(".pp_loaderIcon").show(),settings.deeplinking&&function(){if("undefined"==typeof theRel)return;location.hash=theRel+"/"+rel_index+"/"}(),settings.social_tools&&(facebook_like_link=settings.social_tools.replace("{location_href}",encodeURIComponent(location.href)),$pp_pic_holder.find(".pp_social").html(facebook_like_link)),$ppt.is(":hidden")&&$ppt.css("opacity",0).show(),$pp_overlay.show().fadeTo(settings.animation_speed,settings.opacity),$pp_pic_holder.find(".currentTextHolder").text(set_position+1+settings.counter_separator_label+t(pp_images).length),void 0!==pp_descriptions[set_position]&&""!=pp_descriptions[set_position]?$pp_pic_holder.find(".pp_description").show().html(unescape(pp_descriptions[set_position])):$pp_pic_holder.find(".pp_description").hide(),movie_width=parseFloat(a("width",pp_images[set_position]))?a("width",pp_images[set_position]):settings.default_width.toString(),movie_height=parseFloat(a("height",pp_images[set_position]))?a("height",pp_images[set_position]):settings.default_height.toString(),_=!1,-1!=movie_height.indexOf("%")&&(movie_height=parseFloat(t(window).height()*parseFloat(movie_height)/100-150),_=!0),-1!=movie_width.indexOf("%")&&(movie_width=parseFloat(t(window).width()*parseFloat(movie_width)/100-150),_=!0),$pp_pic_holder.fadeIn(function(){switch(settings.show_title&&""!=pp_titles[set_position]&&void 0!==pp_titles[set_position]?$ppt.html(unescape(pp_titles[set_position])):$ppt.html("&nbsp;"),imgPreloader="",skipInjection=!1,w(pp_images[set_position])){case"image":imgPreloader=new Image,nextImage=new Image,isSet&&set_position<t(pp_images).length-1&&(nextImage.src=pp_images[set_position+1]),prevImage=new Image,isSet&&pp_images[set_position-1]&&(prevImage.src=pp_images[set_position-1]),$pp_pic_holder.find("#pp_full_res")[0].innerHTML=settings.image_markup.replace(/{path}/g,pp_images[set_position]),imgPreloader.onload=function(){n=v(imgPreloader.width,imgPreloader.height),f()},imgPreloader.onerror=function(){alert("Image cannot be loaded. Make sure the path is correct and image exist."),t.prettyPhoto.close()},imgPreloader.src=pp_images[set_position];break;case"youtube":n=v(movie_width,movie_height),movie_id=a("v",pp_images[set_position]),""==movie_id&&(movie_id=pp_images[set_position].split("youtu.be/"),movie_id=movie_id[1],movie_id.indexOf("?")>0&&(movie_id=movie_id.substr(0,movie_id.indexOf("?"))),movie_id.indexOf("&")>0&&(movie_id=movie_id.substr(0,movie_id.indexOf("&")))),movie="http://www.youtube.com/embed/"+movie_id,a("rel",pp_images[set_position])?movie+="?rel="+a("rel",pp_images[set_position]):movie+="?rel=1",settings.autoplay&&(movie+="&autoplay=1"),toInject=settings.iframe_markup.replace(/{width}/g,n.width).replace(/{height}/g,n.height).replace(/{wmode}/g,settings.wmode).replace(/{path}/g,movie);break;case"vimeo":n=v(movie_width,movie_height),movie_id=pp_images[set_position];var e=movie_id.match(/http(s?):\/\/(www\.)?vimeo.com\/(\d+)/);movie="http://player.vimeo.com/video/"+e[3]+"?title=0&amp;byline=0&amp;portrait=0",settings.autoplay&&(movie+="&autoplay=1;"),vimeo_width=n.width+"/embed/?moog_width="+n.width,toInject=settings.iframe_markup.replace(/{width}/g,vimeo_width).replace(/{height}/g,n.height).replace(/{path}/g,movie);break;case"quicktime":(n=v(movie_width,movie_height)).height+=15,n.contentHeight+=15,n.containerHeight+=15,toInject=settings.quicktime_markup.replace(/{width}/g,n.width).replace(/{height}/g,n.height).replace(/{wmode}/g,settings.wmode).replace(/{path}/g,pp_images[set_position]).replace(/{autoplay}/g,settings.autoplay);break;case"flash":n=v(movie_width,movie_height),flash_vars=pp_images[set_position],flash_vars=flash_vars.substring(pp_images[set_position].indexOf("flashvars")+10,pp_images[set_position].length),filename=pp_images[set_position],filename=filename.substring(0,filename.indexOf("?")),toInject=settings.flash_markup.replace(/{width}/g,n.width).replace(/{height}/g,n.height).replace(/{wmode}/g,settings.wmode).replace(/{path}/g,filename+"?"+flash_vars);break;case"iframe":n=v(movie_width,movie_height),frame_url=pp_images[set_position],frame_url=frame_url.substr(0,frame_url.indexOf("iframe")-1),toInject=settings.iframe_markup.replace(/{width}/g,n.width).replace(/{height}/g,n.height).replace(/{path}/g,frame_url);break;case"ajax":doresize=!1,n=v(movie_width,movie_height),doresize=!0,skipInjection=!0,t.get(pp_images[set_position],function(t){toInject=settings.inline_markup.replace(/{content}/g,t),$pp_pic_holder.find("#pp_full_res")[0].innerHTML=toInject,f()});break;case"custom":n=v(movie_width,movie_height),toInject=settings.custom_markup;break;case"inline":myClone=t(pp_images[set_position]).clone().append('<br clear="all" />').css({width:settings.default_width}).wrapInner('<div id="pp_full_res"><div class="pp_inline"></div></div>').appendTo(t("body")).show(),doresize=!1,n=v(t(myClone).width(),t(myClone).height()),doresize=!0,t(myClone).remove(),toInject=settings.inline_markup.replace(/{content}/g,t(pp_images[set_position]).html())}imgPreloader||skipInjection||($pp_pic_holder.find("#pp_full_res")[0].innerHTML=toInject,f())}),!1},t.prettyPhoto.changePage=function(e){currentGalleryPage=0,"previous"==e?(set_position--,set_position<0&&(set_position=t(pp_images).length-1)):"next"==e?(set_position++,set_position>t(pp_images).length-1&&(set_position=0)):set_position=e,rel_index=set_position,doresize||(doresize=!0),settings.allow_expand&&t(".pp_contract").removeClass("pp_contract").addClass("pp_expand"),u(function(){t.prettyPhoto.open()})},t.prettyPhoto.changeGalleryPage=function(t){"next"==t?(currentGalleryPage++,currentGalleryPage>totalPage&&(currentGalleryPage=0)):"previous"==t?(currentGalleryPage--,currentGalleryPage<0&&(currentGalleryPage=totalPage)):currentGalleryPage=t,slide_speed="next"==t||"previous"==t?settings.animation_speed:0,slide_to=currentGalleryPage*(itemsPerPage*itemWidth),$pp_gallery.find("ul").animate({left:-slide_to},slide_speed)},t.prettyPhoto.startSlideshow=function(){void 0===c?($pp_pic_holder.find(".pp_play").unbind("click").removeClass("pp_play").addClass("pp_pause").click(function(){return t.prettyPhoto.stopSlideshow(),!1}),c=setInterval(t.prettyPhoto.startSlideshow,settings.slideshow)):t.prettyPhoto.changePage("next")},t.prettyPhoto.stopSlideshow=function(){$pp_pic_holder.find(".pp_pause").unbind("click").removeClass("pp_pause").addClass("pp_play").click(function(){return t.prettyPhoto.startSlideshow(),!1}),clearInterval(c),c=void 0},t.prettyPhoto.close=function(){$pp_overlay.is(":animated")||(t.prettyPhoto.stopSlideshow(),$pp_pic_holder.stop().find("object,embed").css("visibility","hidden"),t("div.pp_pic_holder,div.ppt,.pp_fade").fadeOut(settings.animation_speed,function(){t(this).remove()}),$pp_overlay.fadeOut(settings.animation_speed,function(){settings.hideflash&&t("object,embed,iframe[src*=youtube],iframe[src*=vimeo]").css("visibility","visible"),t(this).remove(),t(window).unbind("scroll.prettyphoto"),-1!==location.href.indexOf("#prettyPhoto")&&(location.hash="prettyPhoto"),settings.callback(),doresize=!0,p=!1}))},!i&&e()&&(i=!0,hashIndex=e(),hashRel=hashIndex,hashIndex=hashIndex.substring(hashIndex.indexOf("/")+1,hashIndex.length-1),hashRel=hashRel.substring(0,hashRel.indexOf("/")),setTimeout(function(){t("a["+o.hook+"^='"+hashRel+"']:eq("+hashIndex+")").trigger("click")},50)),this.unbind("click.prettyphoto").bind("click.prettyphoto",t.prettyPhoto.initialize)}}(jQuery);var i=!1}});