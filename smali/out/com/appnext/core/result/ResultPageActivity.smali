.class public Lcom/appnext/core/result/ResultPageActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/core/result/ResultPageActivity$CustomAd;,
        Lcom/appnext/core/result/ResultPageActivity$a;,
        Lcom/appnext/core/result/ResultPageActivity$b;
    }
.end annotation


# instance fields
.field private aE:Lcom/appnext/core/AppnextAd;

.field private ca:Ljava/lang/String;

.field private cd:Z

.field private fJ:Ljava/lang/String;

.field private ic:Lcom/appnext/core/AppnextAd;

.field private id:Ljava/lang/String;

.field private ie:Lcom/appnext/core/result/a;

.field private if:Lcom/appnext/core/result/c;

.field private placementID:Ljava/lang/String;

.field private userAction:Lcom/appnext/core/q;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private F()Ljava/lang/Object;
    .registers 2

    .line 168
    new-instance v0, Lcom/appnext/core/result/ResultPageActivity$b;

    invoke-direct {v0, p0}, Lcom/appnext/core/result/ResultPageActivity$b;-><init>(Lcom/appnext/core/result/ResultPageActivity;)V

    return-object v0
.end method

.method static synthetic a(Lcom/appnext/core/result/ResultPageActivity;Lcom/appnext/core/AppnextAd;)Lcom/appnext/core/AppnextAd;
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->aE:Lcom/appnext/core/AppnextAd;

    return-object p1
.end method

.method static synthetic a(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/result/c;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/appnext/core/result/ResultPageActivity;->if:Lcom/appnext/core/result/c;

    return-object p0
.end method

.method static synthetic b(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/AppnextAd;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/appnext/core/result/ResultPageActivity;->aE:Lcom/appnext/core/AppnextAd;

    return-object p0
.end method

.method static synthetic b(Lcom/appnext/core/result/ResultPageActivity;Lcom/appnext/core/AppnextAd;)Lcom/appnext/core/result/ResultPageActivity$CustomAd;
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/appnext/core/result/ResultPageActivity;->h(Lcom/appnext/core/AppnextAd;)Lcom/appnext/core/result/ResultPageActivity$CustomAd;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/appnext/core/result/ResultPageActivity;)Ljava/lang/String;
    .registers 1

    .line 3160
    new-instance p0, Lcom/appnext/core/result/b;

    invoke-direct {p0}, Lcom/appnext/core/result/b;-><init>()V

    const-string p0, "var Appnext=function(e){var t=e;return t.css=\'html,body{font-family:sans-serif;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%;-moz-text-size-adjust:100%;height:100% !important;width:100% !important;padding:0 !important;margin:0 !important;overflow:hidden !important;font-size:85%;max-width:100%;min-width:100%;-moz-user-select:none;-webkit-user-select:none;user-select:none;position:fixed;text-align:left !important;line-height:normal}html>img,body>img{position:absolute;z-index:-1}.md-scroll-mask{position:initial}#appnext{direction:ltr !important;-webkit-font-smoothing:antialiased;overflow:hidden;width:100%;height:100%;font-family:sans-serif !important;position:absolute;top:0;left:0;margin:0;padding:0;-moz-transform:scale(1.01, 1.01);text-align:left !important}#appnext .center{position:absolute;top:50%;transform:translateY(-50%);-webkit-transform:translateY(-50%)}#appnext i{display:inline-block;font-style:normal}#appnext div{direction:ltr !important;text-align:left}#appnext .caption{background:transparent;margin:0;padding:0}#appnext .disclosure{-webkit-tap-highlight-color:none;color:#BDBDBD;z-index:10000;display:block;width:1.8em;height:1.8em;right:0;top:6px;position:absolute;background-repeat:no-repeat;background-size:71%;background-position:center;background-image:url(\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTExIDc5LjE1ODMyNSwgMjAxNS8wOS8xMC0wMToxMDoyMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKE1hY2ludG9zaCkiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RTJDQzA2RjkyOTYwMTFFNkE1MDVDRkVBNzkwQ0Q1ODkiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RTJDQzA2RkEyOTYwMTFFNkE1MDVDRkVBNzkwQ0Q1ODkiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpFMkNDMDZGNzI5NjAxMUU2QTUwNUNGRUE3OTBDRDU4OSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpFMkNDMDZGODI5NjAxMUU2QTUwNUNGRUE3OTBDRDU4OSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PlU7OdUAAAKvSURBVHjaxJfPS1RRFMfnORUtxiAwWkiGqUVgqzLol+TQL/pBbdIpitzUUtpE1h/Q1C5cZwiBKbiJfgz9YAKLishVLqK0yNoVCOmmwHl9L30G3rzezLtv9DEHPt7Befd7ztxz73nnOq7rJmppy8yffD5fE+fpdPpfAJbmiD3iiNglWsVqvpsVU+KVeCBeCNd6BUKsTvSKKzgNsrVgArtEMFkxJAph4pWsWbwRgzifETfEQbFOrBT1YrM4xHdfeHaQuc3VBrBXvBUdOD4tNoh+8UR8F7/FvPggHvNdG8/OMNdodEYN4ACCDeR0i7grFixStsCz7cw1Gk9ZNasANokxsUIMiOPiVxWbfI65A2iNoV0xgKS4Q15HxcWwTRRiBTSMVgrtZKUAzpG3b+K8xVHaKi57jmOQuWgV90RvuQAcjlqCzTRn8QtNbq+LCxbp8Go7QQF0cny+smQ29jlCOkbRbvWeCm8AhxlHLHe7sf1iG+ff5nSM+HyVBLCT8XmEX3VS7KM+2FhRe0dQKW5jnKwigAnLdBS1NwatQHEn/4zxBfjD5yv0XRC7eQOYZWyI0d8an6+SAD4xtscYQFH7Y1AArxm7Ygygy+erJICHjBl/vV7CdGf4/CgogHE6mfWiJ4YAMmhP0bL9F4BLXU/QTqUsK6Gp689CnkuhmcBHodwxND3cO9EkbnlfGoswB60mCtZQpdexqddnabNMGm4uslbUodGD5hn/eyZI3PR33eKP6BP3xKoqnNcztw+tbrStesKcOEHUR8V7ccpyNZI8O8ncebRyUbviHB3MBPkbpuXO0rQ2iuXQyP+yFLRhT847yjm3uZiYJdtOG3VVtNDR9IfMmxbXbC4mNjcjI3Absd3iGL1Di+9qNs3V7L54advMRrkbFihW40tZnZxaX8//CjAAq56aKzL+/C8AAAAASUVORK5CYII=\")}#appnext .disclosure.gdpr{top:0;background-size:50%;background-position:top right;background-image:url(\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACcAAAAnCAMAAAC7faEHAAAAZlBMVEXNzMwArs1WusyTw8xEuM0Ir83Jy8zFy8y2yMxhvMwWsc2kxsx1v8wttM0dss0QsM2/ysyoxsyaxMyNwsyfxcyHwcyAwMxrvcxLucw3tsw+t80ytc0ks826ycyxx8yux8xovcxPucxOwgPRAAAA+0lEQVQ4y83Tx27DMBAE0CUpdvXuEpf//8lIngS+sOhmz4kQHiAsOUufje7UEXZvWD0ccJZtuYxZx9krxT3vEP6TdYhcdMYtJ0g3q6QTJK6QV5F2pGYHeeqSjkgvEnI1SUfUckBp24TTthC3ArIpVcThYQyNFWQ9xdy6HfYZhhqyGsOul+z8+psqG8izCTkyvSKktRjdtQHXOVb8Q/KAQ8A9t4PHN/0Akybg9ivpac/k/ibxlHC+gnITUdyZ9V2yuBMPCfZEaWMOCp2JOwTrl3GoQNahUlE382qmct/OW3bfvCr5eGAvh2N7ftEZZ9FeRZl4iavIxghNX5lfdnkJssV7DcsAAAAASUVORK5CYII=\")}#appnext .wrp{position:relative;height:100%;width:100%;margin:0;padding:0}#appnext .wrp .header{height:74px;background-size:cover;background-repeat:no-repeat;position:relative}#appnext .wrp .container{width:100%;top:0;left:0;margin:0;padding:0;height:100%}#appnext .wrp .container nav{position:relative;margin-top:16px;width:93%;height:30px;margin-left:4%;margin-bottom:2px}#appnext .wrp .container nav ul.tabs{width:100%;list-style:none;padding:0;margin:0;text-transform:uppercase;font-size:1.2em;font-style:italic;position:absolute;top:0;z-index:10}#appnext .wrp .container nav ul.tabs li{display:inline-block;margin:0;padding:0;padding-bottom:1%;margin-right:5%;color:#6f6f6f;position:relative;max-width:40%;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}#appnext .wrp .container nav ul.tabs li.active{font-weight:bold}#appnext .wrp .container nav ul.tabs li.active span{display:block;width:100%;height:6px;background:#3499e7;position:absolute;bottom:-6px}#appnext .wrp .container nav .sep{background:#cecece;height:2px;position:absolute;bottom:6px;width:100%;z-index:1}#appnext .wrp .container .more_apps{width:100%;overflow:hidden;overflow-y:auto;height:100%}#appnext .wrp .container .more_apps .suggested_apps{height:100%;width:100%;margin:0 auto}#appnext .wrp .container .more_apps .suggested_apps>div.title{padding:2.5% 6%;background-color:rgba(76,93,128,0.8);letter-spacing:0.2px;color:#ffffff;font-size:1.3em;position:relative}#appnext .wrp .container .more_apps .suggested_apps>div.title:first-child{padding:3.5% 6%;font-size:1.5em;background-color:#4c5d80}#appnext .wrp .container .more_apps .suggested_apps>div.app_container{background:white;padding:3% 0;box-shadow:0 -3px 7px -1px rgba(0,0,0,0.1);position:relative;height:104px;display:table-row}#appnext .wrp .container .more_apps .suggested_apps>div.app_container>div{display:table-cell;vertical-align:middle}#appnext .wrp .container .more_apps .suggested_apps>div.app_container>div.icon{width:25%;text-align:center;background:none}#appnext .wrp .container .more_apps .suggested_apps>div.app_container>div.icon img{width:55%;height:auto;vertical-align:middle}#appnext .wrp .container .more_apps .suggested_apps>div.app_container>div.caption{width:51%;font-size:12px;color:rgba(74,74,74,0.79);font-weight:300}#appnext .wrp .container .more_apps .suggested_apps>div.app_container>div.caption .title{text-align:left;margin:0;padding:0;font-size:14px;font-weight:bold;line-height:1.5em}#appnext .wrp .container .more_apps .suggested_apps>div.app_container>div.caption .dec{width:90%}#appnext .wrp .container .more_apps .suggested_apps>div.app_container>div.cta{padding-bottom:9px;padding-right:9px;vertical-align:bottom;width:auto;text-transform:uppercase;text-align:center;font-size:12px;color:rgba(76,93,128,0.8)}@media only screen and (orientation: landscape){#appnext .wrp .container .more_apps .suggested_apps>div.app_container>div.icon{width:13%}}template{display:none} \',t.build=\"1534333058941\",t.template=\'<div class=\"wrp\">   <div class=\"disclosure \"></div>    <div class=\"container\">              <div class=\"more_apps\">            <div class=\"suggested_apps\"></div>        </div>    </div>    \\x3c!--div class=\"close_button\"></div--\\x3e       <template id=\"app_template\">        <div class=\"app_container\">            <div class=\"icon\">              <img/>            </div>           <div class=\"caption\">              <div class=\"title\"></div>                          <div class=\"desc\"></div>           </div>          <div class=\"cta\">            Install          </div>       </div>    </template>    </div>\',t.vid=t.vid||\"1\",t.tid=t.tid||\"301\",t.osid=t.osid||\"100\",t.ads_type=\"interstitial_tag\",t}(Appnext||{}),Appnext=function(e){function t(e,t){n.Layout.Disclosure.addEventListener(\"click\",function(t){t.stopPropagation();var i=e.country||\"\",a=e.zId,o=\"https://www.appnext.com/privacy_policy/index.html?z=\"+a+\"&geo=\"+i;1==e.gdpr&&(o+=\"&edda=1\"),n.redirect(o)},!1),1==e.gdpr&&n.Layout.Disclosure.classList.add(\"gdpr\"),t.appendChild(n.Layout.Disclosure)}var n=e;return n.id=n.android_id||n.id,n.timstamp=Date.now(),n.API=function(){function e(e,t,n){var i=new XMLHttpRequest;i.open(n,e,!0),i.onload=t;var a=new FormData;i.send(a)}function t(e,t,n,i){window.callback=function(e){return e||!0}(t);var a=document.createElement(\"script\");e+=~e.indexOf(\"?\")?\"&\":\"?\",a.src=e,a.className=\"appnext_cb\",a.type=void 0!==i&&i?i:\"text/javascript\",a.async=!0;try{document.body?document.body.appendChild(a):document.head.appendChild(a)}catch(e){return!!n&&n(e)}}var i={data:\"./data.json\",log:\"https://admin.appnext.com/tp12.aspx\",config:\"https://cdn.appnext.com/tools/sdk/config/2.4.0/result_banner/\"};return{buildUrl:function(e,t){var n=[];for(var i in t)n.push(encodeURIComponent(i)+\"=\"+encodeURIComponent(t[i]));return e+\"?\"+n.join(\"&\")},loadAds:function(t){if(n.client_call){var a=i.data;return void e(a,t,\"GET\")}t(n.data)},loadConfig:function(e){var a=\"en\";switch(n.lang){case\"zh\":a=\"zh\";break;case\"ru\":a=\"ru\";break;case\"de\":a=\"de\"}t(i.config+a+\"/result_config.json\",e,n.error,null)},log:function(e,a,o){if(e==n.API.TP12.Play||e==n.API.TP12.Ended){var p={tid:n.tid,vid:n.vid,osid:n.osid,auid:n.auid,pid:n.id,bid:o?o.bannerId:0,cid:o?o.campaignId:0,session_id:a?encodeURIComponent(a):null,ref:encodeURIComponent(e),ads_type:n.ads_type},r=i.log;t(this.buildUrl(r,p),function(e){return e},null,null)}},getRequest:function(e){t(e,null,null,null)},notifyImpression:function(e,t,i){if(!e.isImp){e.isImp=!0;(function(e,t,i){return function(){if(n.Layout.isVisible(t)){var a=JSON.stringify(e);n.postView(a),i&&i()}else e.isImp=!1}})(e,t,i)()}},getStyleUrl:function(){return i.css},TP12:{},Error:{NoAds:\"NO_ADS\",Other:\"NO_ADS\"}}}(),n.Layout=function(){var e=n.template,t={Close_Button:\".close_button\",More_Apps:\".more_apps\",More_Apps_Section:\".suggested_apps\",Small_App_Template:\"#app_template\",Footer:\".footer\",Header:\".header\",Disclosure:\".disclosure\"},i=document.createElement(\"div\");i.id=\"appnext\",i.className=\"appnext\";var a,o,p,r=(screen.width<screen.height?screen.height:screen.width,{isLoaded:!1,isVisible:function(e){var t=e.getBoundingClientRect(),n=Math.max(document.documentElement.clientHeight,window.innerHeight);return!(t.bottom<0||t.top-n>=0)&&this.isLoaded},calcHeight:function(){window.scrollTo(0,1)},resize:function(){n.Layout.calcHeight(),setTimeout(n.Layout.calcHeight.call(n.Layout),100)},setTemplate:function(){},loadStyle:function(){if(!this.isLoaded){this.isLoaded=!0,i.innerHTML=e;var t=document.createElement(\"meta\");t.name=\"viewport\",t.content=\"user-scalable=1\";var r=document.querySelectorAll(\"meta[name=\'viewport\']\");p=r[r.length-1]||t,o=document.createElement(\"meta\"),o.name=\"viewport\",o.content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0\";var s=n.css||\"\";a=document.createElement(\"style\"),a.type=\"text/css\",a.innerHTML=s,document.head.appendChild(a),document.head.appendChild(o),this.setTemplate()}},destroy:function(e){if(this.isLoaded){this.isLoaded=!1,document.head.removeChild(o),document.body.removeChild(this.Container),document.head.removeChild(this.Style),document.head.appendChild(p);for(var t=document.querySelectorAll(\".appnext_cb\"),i=0;i<t.length;i++)document.body.removeChild(t[i]);return window.removeEventListener(\"resize\",n.Layout.resize),e}},get Container(){return i},get Style(){return a},set Style(e){a=e},getAppTemplate:function(){var e={},t=document.createElement(\"div\");t.innerHTML=r.Small_App_Template.innerHTML;var n={App_Image:\".icon img\",Title:\".title\",Rate_Number:\".rate\",Rating:\".rating\",Description:\".desc\",Click_Section:\".app_container\",Container:\".app_container\",CTA:\".cta\"};for(var i in n)!function(n,i){Object.defineProperty(e,n,{get:function(){return t.querySelector(i[n])||document.createElement(\"div\")},enumerable:!0})}(i,n);return e}});for(var s in t)!function(e){Object.defineProperty(r,e,{get:function(){return i.querySelector(t[e])||document.createElement(\"div\")},enumerable:!0})}(s);return r}(),n.redirect=n.openLink||function(e){window.open(e,\"_top\")},n.setParams=function(e){for(key in e)n[key]=decodeURIComponent(e[key])},n.parseApp=function(e,t,i){var a=n.Layout.getAppTemplate();a.App_Image.src=e.urlImg,a.Title.textContent=e.title||\"\";var o=e.desc.length>60?e.desc.slice(0,60)+\"...\":e.desc;if(a.Description.textContent=o,n.config.hasOwnProperty(t)){var p=n.config[t];a.CTA.textContent=p.cta,a.CTA.style.color=p.color}return i&&(a.CTA.textContent=\"\"),1==e.is_installed&&(a.CTA.textContent=n.config.cta_open_text||\"Open\"),a.Click_Section.addEventListener(\"click\",function(t){console.log(\"APP \"+e.title+\" \"+e.index),n.adClicked(JSON.stringify(e),e.index)}),a.App_Image.addEventListener(\"load\",function(){n.API.notifyImpression(e,this)}),function(t,i){e.imp=function(){n.API.notifyImpression(t,i)}}(e,a.App_Image),a.Container},n.parseTitle=function(e,t){var i=document.createElement(\"div\");return i.classList.add(\"title\"),i.innerText=e,n.config.hasOwnProperty(t)&&(i.style.background=n.config[t].color),i},n.setContent=function(e){n.setDisclosureIcon=!1;var i=n.action;n.Layout.More_Apps_Section.innerHTML=\"\";var a,o,p=parseInt(n.config.campaigns_amount)||6,r=0,s=0,d=[],c=[];if(r<e.length&&r<p){var l=n.config[i].title_main;a=n.parseTitle(l,i),n.Layout.More_Apps_Section.appendChild(a)}for(;r<e.length&&r<p;r++){var u=e[r];-1!=u.package_action.indexOf(i)?(u.index=s,function(e,i,a){var o=n.parseApp(e,i,!1);n.Layout.More_Apps_Section.appendChild(o),n.setDisclosureIcon||(n.setDisclosureIcon=!0,t(e,a))}(u,i,a),c.push(u),s++):d.push(u)}if(r=c.length,\"sapop\"!=i){if(r<d.length&&r<p){var l=n.config.sapop.title_main;o=n.parseTitle(l,\"sapop\"),n.Layout.More_Apps_Section.appendChild(o)}for(var g=0;g<d.length&&r<p;r++,g++){var u=d[g];u.index=s,function(e,i,a){var o=n.parseApp(e,i,!0);n.Layout.More_Apps_Section.appendChild(o),n.setDisclosureIcon||(n.setDisclosureIcon=!0,t(e,a))}(u,i,a),s++,c.push(u)}}n.Layout.More_Apps.onscroll=function(e){for(var t=0;t<c.length;t++)c[t].imp();n.isScrollEvent||(n.isScrollEvent=!0)}},n.parseAds=function(e){try{var t=n.client_call?JSON.parse(this.responseText):e;n.Layout.loadStyle(),document.body.appendChild(n.Layout.Container),n.setContent(t.apps)}catch(e){return n.error(e),!1}},n.error=n.error||function(e){console.log(e)},n.load=function(e,t,i){return console.log(\"banner\",e),console.log(\"data\",t),console.log(\"data_all\",i),n.banner=e,n.data=t,n.data_all=i,n.API.loadConfig(function(e){n.config=e,n.action=n.banner.package_action.shift(),n.API.loadAds(n.parseAds)}),!0},n}(Appnext);"

    return-object p0
.end method

.method static synthetic d(Lcom/appnext/core/result/ResultPageActivity;)Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/appnext/core/result/ResultPageActivity;->id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/appnext/core/result/ResultPageActivity;)Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/appnext/core/result/ResultPageActivity;->placementID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/appnext/core/result/ResultPageActivity;)Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lcom/appnext/core/result/ResultPageActivity;->cd:Z

    return p0
.end method

.method static synthetic g(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/q;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/appnext/core/result/ResultPageActivity;->userAction:Lcom/appnext/core/q;

    return-object p0
.end method

.method private getFallbackScript()Ljava/lang/String;
    .registers 2

    .line 160
    new-instance v0, Lcom/appnext/core/result/b;

    invoke-direct {v0}, Lcom/appnext/core/result/b;-><init>()V

    const-string v0, "var Appnext=function(e){var t=e;return t.css=\'html,body{font-family:sans-serif;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%;-moz-text-size-adjust:100%;height:100% !important;width:100% !important;padding:0 !important;margin:0 !important;overflow:hidden !important;font-size:85%;max-width:100%;min-width:100%;-moz-user-select:none;-webkit-user-select:none;user-select:none;position:fixed;text-align:left !important;line-height:normal}html>img,body>img{position:absolute;z-index:-1}.md-scroll-mask{position:initial}#appnext{direction:ltr !important;-webkit-font-smoothing:antialiased;overflow:hidden;width:100%;height:100%;font-family:sans-serif !important;position:absolute;top:0;left:0;margin:0;padding:0;-moz-transform:scale(1.01, 1.01);text-align:left !important}#appnext .center{position:absolute;top:50%;transform:translateY(-50%);-webkit-transform:translateY(-50%)}#appnext i{display:inline-block;font-style:normal}#appnext div{direction:ltr !important;text-align:left}#appnext .caption{background:transparent;margin:0;padding:0}#appnext .disclosure{-webkit-tap-highlight-color:none;color:#BDBDBD;z-index:10000;display:block;width:1.8em;height:1.8em;right:0;top:6px;position:absolute;background-repeat:no-repeat;background-size:71%;background-position:center;background-image:url(\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTExIDc5LjE1ODMyNSwgMjAxNS8wOS8xMC0wMToxMDoyMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKE1hY2ludG9zaCkiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RTJDQzA2RjkyOTYwMTFFNkE1MDVDRkVBNzkwQ0Q1ODkiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RTJDQzA2RkEyOTYwMTFFNkE1MDVDRkVBNzkwQ0Q1ODkiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpFMkNDMDZGNzI5NjAxMUU2QTUwNUNGRUE3OTBDRDU4OSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpFMkNDMDZGODI5NjAxMUU2QTUwNUNGRUE3OTBDRDU4OSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PlU7OdUAAAKvSURBVHjaxJfPS1RRFMfnORUtxiAwWkiGqUVgqzLol+TQL/pBbdIpitzUUtpE1h/Q1C5cZwiBKbiJfgz9YAKLishVLqK0yNoVCOmmwHl9L30G3rzezLtv9DEHPt7Befd7ztxz73nnOq7rJmppy8yffD5fE+fpdPpfAJbmiD3iiNglWsVqvpsVU+KVeCBeCNd6BUKsTvSKKzgNsrVgArtEMFkxJAph4pWsWbwRgzifETfEQbFOrBT1YrM4xHdfeHaQuc3VBrBXvBUdOD4tNoh+8UR8F7/FvPggHvNdG8/OMNdodEYN4ACCDeR0i7grFixStsCz7cw1Gk9ZNasANokxsUIMiOPiVxWbfI65A2iNoV0xgKS4Q15HxcWwTRRiBTSMVgrtZKUAzpG3b+K8xVHaKi57jmOQuWgV90RvuQAcjlqCzTRn8QtNbq+LCxbp8Go7QQF0cny+smQ29jlCOkbRbvWeCm8AhxlHLHe7sf1iG+ff5nSM+HyVBLCT8XmEX3VS7KM+2FhRe0dQKW5jnKwigAnLdBS1NwatQHEn/4zxBfjD5yv0XRC7eQOYZWyI0d8an6+SAD4xtscYQFH7Y1AArxm7Ygygy+erJICHjBl/vV7CdGf4/CgogHE6mfWiJ4YAMmhP0bL9F4BLXU/QTqUsK6Gp689CnkuhmcBHodwxND3cO9EkbnlfGoswB60mCtZQpdexqddnabNMGm4uslbUodGD5hn/eyZI3PR33eKP6BP3xKoqnNcztw+tbrStesKcOEHUR8V7ccpyNZI8O8ncebRyUbviHB3MBPkbpuXO0rQ2iuXQyP+yFLRhT847yjm3uZiYJdtOG3VVtNDR9IfMmxbXbC4mNjcjI3Absd3iGL1Di+9qNs3V7L54advMRrkbFihW40tZnZxaX8//CjAAq56aKzL+/C8AAAAASUVORK5CYII=\")}#appnext .disclosure.gdpr{top:0;background-size:50%;background-position:top right;background-image:url(\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACcAAAAnCAMAAAC7faEHAAAAZlBMVEXNzMwArs1WusyTw8xEuM0Ir83Jy8zFy8y2yMxhvMwWsc2kxsx1v8wttM0dss0QsM2/ysyoxsyaxMyNwsyfxcyHwcyAwMxrvcxLucw3tsw+t80ytc0ks826ycyxx8yux8xovcxPucxOwgPRAAAA+0lEQVQ4y83Tx27DMBAE0CUpdvXuEpf//8lIngS+sOhmz4kQHiAsOUufje7UEXZvWD0ccJZtuYxZx9krxT3vEP6TdYhcdMYtJ0g3q6QTJK6QV5F2pGYHeeqSjkgvEnI1SUfUckBp24TTthC3ArIpVcThYQyNFWQ9xdy6HfYZhhqyGsOul+z8+psqG8izCTkyvSKktRjdtQHXOVb8Q/KAQ8A9t4PHN/0Akybg9ivpac/k/ibxlHC+gnITUdyZ9V2yuBMPCfZEaWMOCp2JOwTrl3GoQNahUlE382qmct/OW3bfvCr5eGAvh2N7ftEZZ9FeRZl4iavIxghNX5lfdnkJssV7DcsAAAAASUVORK5CYII=\")}#appnext .wrp{position:relative;height:100%;width:100%;margin:0;padding:0}#appnext .wrp .header{height:74px;background-size:cover;background-repeat:no-repeat;position:relative}#appnext .wrp .container{width:100%;top:0;left:0;margin:0;padding:0;height:100%}#appnext .wrp .container nav{position:relative;margin-top:16px;width:93%;height:30px;margin-left:4%;margin-bottom:2px}#appnext .wrp .container nav ul.tabs{width:100%;list-style:none;padding:0;margin:0;text-transform:uppercase;font-size:1.2em;font-style:italic;position:absolute;top:0;z-index:10}#appnext .wrp .container nav ul.tabs li{display:inline-block;margin:0;padding:0;padding-bottom:1%;margin-right:5%;color:#6f6f6f;position:relative;max-width:40%;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}#appnext .wrp .container nav ul.tabs li.active{font-weight:bold}#appnext .wrp .container nav ul.tabs li.active span{display:block;width:100%;height:6px;background:#3499e7;position:absolute;bottom:-6px}#appnext .wrp .container nav .sep{background:#cecece;height:2px;position:absolute;bottom:6px;width:100%;z-index:1}#appnext .wrp .container .more_apps{width:100%;overflow:hidden;overflow-y:auto;height:100%}#appnext .wrp .container .more_apps .suggested_apps{height:100%;width:100%;margin:0 auto}#appnext .wrp .container .more_apps .suggested_apps>div.title{padding:2.5% 6%;background-color:rgba(76,93,128,0.8);letter-spacing:0.2px;color:#ffffff;font-size:1.3em;position:relative}#appnext .wrp .container .more_apps .suggested_apps>div.title:first-child{padding:3.5% 6%;font-size:1.5em;background-color:#4c5d80}#appnext .wrp .container .more_apps .suggested_apps>div.app_container{background:white;padding:3% 0;box-shadow:0 -3px 7px -1px rgba(0,0,0,0.1);position:relative;height:104px;display:table-row}#appnext .wrp .container .more_apps .suggested_apps>div.app_container>div{display:table-cell;vertical-align:middle}#appnext .wrp .container .more_apps .suggested_apps>div.app_container>div.icon{width:25%;text-align:center;background:none}#appnext .wrp .container .more_apps .suggested_apps>div.app_container>div.icon img{width:55%;height:auto;vertical-align:middle}#appnext .wrp .container .more_apps .suggested_apps>div.app_container>div.caption{width:51%;font-size:12px;color:rgba(74,74,74,0.79);font-weight:300}#appnext .wrp .container .more_apps .suggested_apps>div.app_container>div.caption .title{text-align:left;margin:0;padding:0;font-size:14px;font-weight:bold;line-height:1.5em}#appnext .wrp .container .more_apps .suggested_apps>div.app_container>div.caption .dec{width:90%}#appnext .wrp .container .more_apps .suggested_apps>div.app_container>div.cta{padding-bottom:9px;padding-right:9px;vertical-align:bottom;width:auto;text-transform:uppercase;text-align:center;font-size:12px;color:rgba(76,93,128,0.8)}@media only screen and (orientation: landscape){#appnext .wrp .container .more_apps .suggested_apps>div.app_container>div.icon{width:13%}}template{display:none} \',t.build=\"1534333058941\",t.template=\'<div class=\"wrp\">   <div class=\"disclosure \"></div>    <div class=\"container\">              <div class=\"more_apps\">            <div class=\"suggested_apps\"></div>        </div>    </div>    \\x3c!--div class=\"close_button\"></div--\\x3e       <template id=\"app_template\">        <div class=\"app_container\">            <div class=\"icon\">              <img/>            </div>           <div class=\"caption\">              <div class=\"title\"></div>                          <div class=\"desc\"></div>           </div>          <div class=\"cta\">            Install          </div>       </div>    </template>    </div>\',t.vid=t.vid||\"1\",t.tid=t.tid||\"301\",t.osid=t.osid||\"100\",t.ads_type=\"interstitial_tag\",t}(Appnext||{}),Appnext=function(e){function t(e,t){n.Layout.Disclosure.addEventListener(\"click\",function(t){t.stopPropagation();var i=e.country||\"\",a=e.zId,o=\"https://www.appnext.com/privacy_policy/index.html?z=\"+a+\"&geo=\"+i;1==e.gdpr&&(o+=\"&edda=1\"),n.redirect(o)},!1),1==e.gdpr&&n.Layout.Disclosure.classList.add(\"gdpr\"),t.appendChild(n.Layout.Disclosure)}var n=e;return n.id=n.android_id||n.id,n.timstamp=Date.now(),n.API=function(){function e(e,t,n){var i=new XMLHttpRequest;i.open(n,e,!0),i.onload=t;var a=new FormData;i.send(a)}function t(e,t,n,i){window.callback=function(e){return e||!0}(t);var a=document.createElement(\"script\");e+=~e.indexOf(\"?\")?\"&\":\"?\",a.src=e,a.className=\"appnext_cb\",a.type=void 0!==i&&i?i:\"text/javascript\",a.async=!0;try{document.body?document.body.appendChild(a):document.head.appendChild(a)}catch(e){return!!n&&n(e)}}var i={data:\"./data.json\",log:\"https://admin.appnext.com/tp12.aspx\",config:\"https://cdn.appnext.com/tools/sdk/config/2.4.0/result_banner/\"};return{buildUrl:function(e,t){var n=[];for(var i in t)n.push(encodeURIComponent(i)+\"=\"+encodeURIComponent(t[i]));return e+\"?\"+n.join(\"&\")},loadAds:function(t){if(n.client_call){var a=i.data;return void e(a,t,\"GET\")}t(n.data)},loadConfig:function(e){var a=\"en\";switch(n.lang){case\"zh\":a=\"zh\";break;case\"ru\":a=\"ru\";break;case\"de\":a=\"de\"}t(i.config+a+\"/result_config.json\",e,n.error,null)},log:function(e,a,o){if(e==n.API.TP12.Play||e==n.API.TP12.Ended){var p={tid:n.tid,vid:n.vid,osid:n.osid,auid:n.auid,pid:n.id,bid:o?o.bannerId:0,cid:o?o.campaignId:0,session_id:a?encodeURIComponent(a):null,ref:encodeURIComponent(e),ads_type:n.ads_type},r=i.log;t(this.buildUrl(r,p),function(e){return e},null,null)}},getRequest:function(e){t(e,null,null,null)},notifyImpression:function(e,t,i){if(!e.isImp){e.isImp=!0;(function(e,t,i){return function(){if(n.Layout.isVisible(t)){var a=JSON.stringify(e);n.postView(a),i&&i()}else e.isImp=!1}})(e,t,i)()}},getStyleUrl:function(){return i.css},TP12:{},Error:{NoAds:\"NO_ADS\",Other:\"NO_ADS\"}}}(),n.Layout=function(){var e=n.template,t={Close_Button:\".close_button\",More_Apps:\".more_apps\",More_Apps_Section:\".suggested_apps\",Small_App_Template:\"#app_template\",Footer:\".footer\",Header:\".header\",Disclosure:\".disclosure\"},i=document.createElement(\"div\");i.id=\"appnext\",i.className=\"appnext\";var a,o,p,r=(screen.width<screen.height?screen.height:screen.width,{isLoaded:!1,isVisible:function(e){var t=e.getBoundingClientRect(),n=Math.max(document.documentElement.clientHeight,window.innerHeight);return!(t.bottom<0||t.top-n>=0)&&this.isLoaded},calcHeight:function(){window.scrollTo(0,1)},resize:function(){n.Layout.calcHeight(),setTimeout(n.Layout.calcHeight.call(n.Layout),100)},setTemplate:function(){},loadStyle:function(){if(!this.isLoaded){this.isLoaded=!0,i.innerHTML=e;var t=document.createElement(\"meta\");t.name=\"viewport\",t.content=\"user-scalable=1\";var r=document.querySelectorAll(\"meta[name=\'viewport\']\");p=r[r.length-1]||t,o=document.createElement(\"meta\"),o.name=\"viewport\",o.content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0\";var s=n.css||\"\";a=document.createElement(\"style\"),a.type=\"text/css\",a.innerHTML=s,document.head.appendChild(a),document.head.appendChild(o),this.setTemplate()}},destroy:function(e){if(this.isLoaded){this.isLoaded=!1,document.head.removeChild(o),document.body.removeChild(this.Container),document.head.removeChild(this.Style),document.head.appendChild(p);for(var t=document.querySelectorAll(\".appnext_cb\"),i=0;i<t.length;i++)document.body.removeChild(t[i]);return window.removeEventListener(\"resize\",n.Layout.resize),e}},get Container(){return i},get Style(){return a},set Style(e){a=e},getAppTemplate:function(){var e={},t=document.createElement(\"div\");t.innerHTML=r.Small_App_Template.innerHTML;var n={App_Image:\".icon img\",Title:\".title\",Rate_Number:\".rate\",Rating:\".rating\",Description:\".desc\",Click_Section:\".app_container\",Container:\".app_container\",CTA:\".cta\"};for(var i in n)!function(n,i){Object.defineProperty(e,n,{get:function(){return t.querySelector(i[n])||document.createElement(\"div\")},enumerable:!0})}(i,n);return e}});for(var s in t)!function(e){Object.defineProperty(r,e,{get:function(){return i.querySelector(t[e])||document.createElement(\"div\")},enumerable:!0})}(s);return r}(),n.redirect=n.openLink||function(e){window.open(e,\"_top\")},n.setParams=function(e){for(key in e)n[key]=decodeURIComponent(e[key])},n.parseApp=function(e,t,i){var a=n.Layout.getAppTemplate();a.App_Image.src=e.urlImg,a.Title.textContent=e.title||\"\";var o=e.desc.length>60?e.desc.slice(0,60)+\"...\":e.desc;if(a.Description.textContent=o,n.config.hasOwnProperty(t)){var p=n.config[t];a.CTA.textContent=p.cta,a.CTA.style.color=p.color}return i&&(a.CTA.textContent=\"\"),1==e.is_installed&&(a.CTA.textContent=n.config.cta_open_text||\"Open\"),a.Click_Section.addEventListener(\"click\",function(t){console.log(\"APP \"+e.title+\" \"+e.index),n.adClicked(JSON.stringify(e),e.index)}),a.App_Image.addEventListener(\"load\",function(){n.API.notifyImpression(e,this)}),function(t,i){e.imp=function(){n.API.notifyImpression(t,i)}}(e,a.App_Image),a.Container},n.parseTitle=function(e,t){var i=document.createElement(\"div\");return i.classList.add(\"title\"),i.innerText=e,n.config.hasOwnProperty(t)&&(i.style.background=n.config[t].color),i},n.setContent=function(e){n.setDisclosureIcon=!1;var i=n.action;n.Layout.More_Apps_Section.innerHTML=\"\";var a,o,p=parseInt(n.config.campaigns_amount)||6,r=0,s=0,d=[],c=[];if(r<e.length&&r<p){var l=n.config[i].title_main;a=n.parseTitle(l,i),n.Layout.More_Apps_Section.appendChild(a)}for(;r<e.length&&r<p;r++){var u=e[r];-1!=u.package_action.indexOf(i)?(u.index=s,function(e,i,a){var o=n.parseApp(e,i,!1);n.Layout.More_Apps_Section.appendChild(o),n.setDisclosureIcon||(n.setDisclosureIcon=!0,t(e,a))}(u,i,a),c.push(u),s++):d.push(u)}if(r=c.length,\"sapop\"!=i){if(r<d.length&&r<p){var l=n.config.sapop.title_main;o=n.parseTitle(l,\"sapop\"),n.Layout.More_Apps_Section.appendChild(o)}for(var g=0;g<d.length&&r<p;r++,g++){var u=d[g];u.index=s,function(e,i,a){var o=n.parseApp(e,i,!0);n.Layout.More_Apps_Section.appendChild(o),n.setDisclosureIcon||(n.setDisclosureIcon=!0,t(e,a))}(u,i,a),s++,c.push(u)}}n.Layout.More_Apps.onscroll=function(e){for(var t=0;t<c.length;t++)c[t].imp();n.isScrollEvent||(n.isScrollEvent=!0)}},n.parseAds=function(e){try{var t=n.client_call?JSON.parse(this.responseText):e;n.Layout.loadStyle(),document.body.appendChild(n.Layout.Container),n.setContent(t.apps)}catch(e){return n.error(e),!1}},n.error=n.error||function(e){console.log(e)},n.load=function(e,t,i){return console.log(\"banner\",e),console.log(\"data\",t),console.log(\"data_all\",i),n.banner=e,n.data=t,n.data_all=i,n.API.loadConfig(function(e){n.config=e,n.action=n.banner.package_action.shift(),n.API.loadAds(n.parseAds)}),!0},n}(Appnext);"

    return-object v0
.end method

.method private getJSurl()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity;->ie:Lcom/appnext/core/result/a;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/appnext/core/result/a;->getJSurl()Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity;->ie:Lcom/appnext/core/result/a;

    invoke-virtual {v0}, Lcom/appnext/core/result/a;->getJSurl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    const-string v0, "https://cdn.appnext.com/tools/sdk/banner/2.4.3/result.min.js"

    return-object v0
.end method

.method private getWebViewClient()Landroid/webkit/WebViewClient;
    .registers 2

    .line 216
    new-instance v0, Lcom/appnext/core/result/ResultPageActivity$a;

    invoke-direct {v0, p0}, Lcom/appnext/core/result/ResultPageActivity$a;-><init>(Lcom/appnext/core/result/ResultPageActivity;)V

    return-object v0
.end method

.method static synthetic h(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/AppnextAd;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/appnext/core/result/ResultPageActivity;->ic:Lcom/appnext/core/AppnextAd;

    return-object p0
.end method

.method private h(Lcom/appnext/core/AppnextAd;)Lcom/appnext/core/result/ResultPageActivity$CustomAd;
    .registers 3

    .line 310
    new-instance v0, Lcom/appnext/core/result/ResultPageActivity$CustomAd;

    invoke-direct {v0, p0, p1}, Lcom/appnext/core/result/ResultPageActivity$CustomAd;-><init>(Lcom/appnext/core/result/ResultPageActivity;Lcom/appnext/core/AppnextAd;)V

    return-object v0
.end method

.method static synthetic i(Lcom/appnext/core/result/ResultPageActivity;)Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/appnext/core/result/ResultPageActivity;->ca:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/appnext/core/result/ResultPageActivity;)Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/appnext/core/result/ResultPageActivity;->fJ:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected final loadJS(Ljava/lang/String;)V
    .registers 5

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loading js "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_24

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:(function() { try { "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " } catch(err){ Appnext.jsError(err.message); }})()"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method protected final loadWebview(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 282
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "<html><body><script>"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</script></body></html>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 285
    iget-object v1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    const/4 v4, 0x0

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_3d

    :catchall_3d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lcom/appnext/core/result/ResultPageActivity;->requestWindowFeature(I)Z

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    :try_start_7
    invoke-static {}, Lcom/appnext/core/result/d;->br()Lcom/appnext/core/result/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/core/result/d;->bs()Lcom/appnext/core/result/c;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->if:Lcom/appnext/core/result/c;

    .line 59
    invoke-interface {p1}, Lcom/appnext/core/result/c;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->placementID:Ljava/lang/String;

    .line 60
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->if:Lcom/appnext/core/result/c;

    invoke-interface {p1}, Lcom/appnext/core/result/c;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->id:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/appnext/core/result/ResultPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "shouldClose"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appnext/core/result/ResultPageActivity;->cd:Z

    .line 62
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->if:Lcom/appnext/core/result/c;

    invoke-interface {p1}, Lcom/appnext/core/result/c;->getSelectedAd()Lcom/appnext/core/AppnextAd;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->ic:Lcom/appnext/core/AppnextAd;

    .line 63
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->if:Lcom/appnext/core/result/c;

    invoke-interface {p1}, Lcom/appnext/core/result/c;->A()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->fJ:Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->if:Lcom/appnext/core/result/c;

    invoke-interface {p1}, Lcom/appnext/core/result/c;->B()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->ca:Ljava/lang/String;

    .line 66
    new-instance p1, Lcom/appnext/core/q;

    new-instance v1, Lcom/appnext/core/result/ResultPageActivity$1;

    invoke-direct {v1, p0}, Lcom/appnext/core/result/ResultPageActivity$1;-><init>(Lcom/appnext/core/result/ResultPageActivity;)V

    invoke-direct {p1, p0, v1}, Lcom/appnext/core/q;-><init>(Landroid/content/Context;Lcom/appnext/core/q$a;)V

    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->userAction:Lcom/appnext/core/q;

    .line 87
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->if:Lcom/appnext/core/result/c;

    invoke-interface {p1}, Lcom/appnext/core/result/c;->E()Lcom/appnext/core/result/a;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->ie:Lcom/appnext/core/result/a;
    :try_end_5b
    .catchall {:try_start_7 .. :try_end_5b} :catchall_10a

    .line 94
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/appnext/core/result/ResultPageActivity;->setContentView(Landroid/view/View;)V

    .line 96
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/appnext/core/result/ResultPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    .line 98
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 100
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 102
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 103
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 104
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 105
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 107
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-lt p1, v0, :cond_be

    .line 108
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 110
    :cond_be
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_cd

    .line 111
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 113
    :cond_cd
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/appnext/core/result/ResultPageActivity$2;

    invoke-direct {v0, p0}, Lcom/appnext/core/result/ResultPageActivity$2;-><init>(Lcom/appnext/core/result/ResultPageActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 121
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    .line 1216
    new-instance v0, Lcom/appnext/core/result/ResultPageActivity$a;

    invoke-direct {v0, p0}, Lcom/appnext/core/result/ResultPageActivity$a;-><init>(Lcom/appnext/core/result/ResultPageActivity;)V

    .line 121
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2149
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->ie:Lcom/appnext/core/result/a;

    if-eqz p1, :cond_ef

    invoke-virtual {p1}, Lcom/appnext/core/result/a;->getJSurl()Ljava/lang/String;

    .line 2150
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->ie:Lcom/appnext/core/result/a;

    invoke-virtual {p1}, Lcom/appnext/core/result/a;->getJSurl()Ljava/lang/String;

    move-result-object p1

    goto :goto_f1

    :cond_ef
    const-string p1, "https://cdn.appnext.com/tools/sdk/banner/2.4.3/result.min.js"

    .line 123
    :goto_f1
    invoke-static {p0}, Lcom/appnext/core/webview/AppnextWebView;->u(Landroid/content/Context;)Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    new-instance v1, Lcom/appnext/core/result/ResultPageActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/appnext/core/result/ResultPageActivity$3;-><init>(Lcom/appnext/core/result/ResultPageActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/appnext/core/webview/AppnextWebView;->a(Ljava/lang/String;Lcom/appnext/core/webview/AppnextWebView$c;)V

    .line 145
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    .line 2168
    new-instance v0, Lcom/appnext/core/result/ResultPageActivity$b;

    invoke-direct {v0, p0}, Lcom/appnext/core/result/ResultPageActivity$b;-><init>(Lcom/appnext/core/result/ResultPageActivity;)V

    const-string v1, "Appnext"

    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 90
    :catchall_10a
    invoke-virtual {p0}, Lcom/appnext/core/result/ResultPageActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 293
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 296
    :try_start_3
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_f

    .line 297
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 304
    :catchall_f
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity;->userAction:Lcom/appnext/core/q;

    invoke-virtual {v0}, Lcom/appnext/core/q;->destroy()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_14

    :catchall_14
    return-void
.end method

.method public parseAd(Ljava/lang/String;)Lcom/appnext/core/g;
    .registers 4

    .line 258
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 260
    const-class p1, Lcom/appnext/core/AppnextAd;

    invoke-static {p1, v0}, Lcom/appnext/core/l;->a(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appnext/core/AppnextAd;

    if-eqz p1, :cond_2f

    .line 262
    invoke-direct {p0, p1}, Lcom/appnext/core/result/ResultPageActivity;->h(Lcom/appnext/core/AppnextAd;)Lcom/appnext/core/result/ResultPageActivity$CustomAd;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appnext/core/result/ResultPageActivity$CustomAd;->setAdJSON(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getStoreRating()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 265
    invoke-direct {p0, p1}, Lcom/appnext/core/result/ResultPageActivity;->h(Lcom/appnext/core/AppnextAd;)Lcom/appnext/core/result/ResultPageActivity$CustomAd;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/appnext/core/result/ResultPageActivity$CustomAd;->setStoreRating(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    :cond_2f
    return-object p1

    :catchall_30
    const/4 p1, 0x0

    return-object p1
.end method
