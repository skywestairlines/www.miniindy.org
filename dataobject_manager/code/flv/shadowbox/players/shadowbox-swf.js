(function(){var b=Shadowbox,a=b.util;b.swf=function(c){this.obj=c;this.resizable=true;this.height=c.height?parseInt(c.height,10):300;this.width=c.width?parseInt(c.width,10):300};b.swf.prototype={append:function(k,d,m){this.id=d;var i=document.createElement("div");i.id=d;k.appendChild(i);var j=m.resize_h,n=m.resize_w,e=this.obj.content,l=b.options.flashVersion,c=b.path+"libraries/swfobject/expressInstall.swf",f=b.options.flashVars,g=b.options.flashParams;swfobject.embedSWF(e,d,n,j,l,c,f,g)},remove:function(){swfobject.expressInstallCallback();swfobject.removeSWF(this.id)}}})();