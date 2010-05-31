if (!window['google']) {
window['google'] = {};
}
if (!window['google']['loader']) {
window['google']['loader'] = {};
google.loader.ServiceBase = 'http://www.google.com/uds';
google.loader.GoogleApisBase = 'http://ajax.googleapis.com/ajax';
google.loader.ApiKey = 'notsupplied';
google.loader.KeyVerified = true;
google.loader.LoadFailure = false;
google.loader.Secure = false;
google.loader.GoogleLocale = 'www.google.com';
google.loader.ClientLocation = {"latitude":47.8,"longitude":13.033,"address":{"city":"Salzburg","region":"Salzburg","country":"Austria","country_code":"AT"}};
google.loader.AdditionalParams = '';
google.loader.OriginalAppPath = 'http://localhost:3000/';
(function() {var d=true,e=null,h=false,i=encodeURIComponent,k=window,m=google,o=undefined,p=document;function q(a,b){return a.load=b}var r="push",s="replace",t="charAt",u="ServiceBase",v="name",w="getTime",x="length",y="prototype",z="setTimeout",A="loader",B="substring",C="join",D="toLowerCase";function E(a){if(a in F)return F[a];return F[a]=navigator.userAgent[D]().indexOf(a)!=-1}var F={};function G(a,b){var c=function(){};c.prototype=b[y];a.T=b[y];a.prototype=new c}
function H(a,b){var c=a.H||[];c=c.concat(Array[y].slice.call(arguments,2));if(typeof a.u!="undefined")b=a.u;if(typeof a.t!="undefined")a=a.t;var f=function(){var g=c.concat(Array[y].slice.call(arguments));return a.apply(b,g)};f.H=c;f.u=b;f.t=a;return f}function I(a){a=new Error(a);a.toString=function(){return this.message};return a}function J(a,b){for(var c=a.split(/\./),f=k,g=0;g<c[x]-1;g++){f[c[g]]||(f[c[g]]={});f=f[c[g]]}f[c[c[x]-1]]=b}function K(a,b,c){a[b]=c}if(!L)var L=J;if(!M)var M=K;m[A].v={};L("google.loader.callbacks",m[A].v);var N={},O={};m[A].eval={};L("google.loader.eval",m[A].eval);
q(m,function(a,b,c){function f(l){var n=l.split(".");if(n[x]>2)throw I("Module: '"+l+"' not found!");else if(typeof n[1]!="undefined"){g=n[0];c.packages=c.packages||[];c.packages[r](n[1])}}var g=a;c=c||{};if(a instanceof Array||a&&typeof a=="object"&&typeof a[C]=="function"&&typeof a.reverse=="function")for(var j=0;j<a[x];j++)f(a[j]);else f(a);if(a=N[":"+g]){if(c&&!c.language&&c.locale)c.language=c.locale;if(c&&typeof c.callback=="string"){j=c.callback;if(j.match(/^[[\]A-Za-z0-9._]+$/)){j=k.eval(j);
c.callback=j}}if((j=c&&c.callback!=e)&&!a.s(b))throw I("Module: '"+g+"' must be loaded before DOM onLoad!");else if(j)a.l(b,c)?k[z](c.callback,0):a.load(b,c);else a.l(b,c)||a.load(b,c)}else throw I("Module: '"+g+"' not found!");});L("google.load",m.load);
m.S=function(a,b){if(b){if(P[x]==0){Q(k,"load",R);if(!E("msie")&&!(E("safari")||E("konqueror"))&&E("mozilla")||k.opera)k.addEventListener("DOMContentLoaded",R,h);else if(E("msie"))p.write("<script defer onreadystatechange='google.loader.domReady()' src=//:><\/script>");else(E("safari")||E("konqueror"))&&k[z](aa,10)}P[r](a)}else Q(k,"load",a)};L("google.setOnLoadCallback",m.S);
function Q(a,b,c){if(a.addEventListener)a.addEventListener(b,c,h);else if(a.attachEvent)a.attachEvent("on"+b,c);else{var f=a["on"+b];a["on"+b]=f!=e?ba([c,f]):c}}function ba(a){return function(){for(var b=0;b<a[x];b++)a[b]()}}var P=[];m[A].N=function(){var a=k.event.srcElement;if(a.readyState=="complete"){a.onreadystatechange=e;a.parentNode.removeChild(a);R()}};L("google.loader.domReady",m[A].N);var ca={loaded:d,complete:d};function aa(){if(ca[p.readyState])R();else P[x]>0&&k[z](aa,10)}
function R(){for(var a=0;a<P[x];a++)P[a]();P.length=0}m[A].d=function(a,b,c){if(c){var f;if(a=="script"){f=p.createElement("script");f.type="text/javascript";f.src=b}else if(a=="css"){f=p.createElement("link");f.type="text/css";f.href=b;f.rel="stylesheet"}(a=p.getElementsByTagName("head")[0])||(a=p.body.parentNode.appendChild(p.createElement("head")));a.appendChild(f)}else if(a=="script")p.write('<script src="'+b+'" type="text/javascript"><\/script>');else a=="css"&&p.write('<link href="'+b+'" type="text/css" rel="stylesheet"></link>')};
L("google.loader.writeLoadTag",m[A].d);m[A].P=function(a){O=a};L("google.loader.rfm",m[A].P);m[A].R=function(a){for(var b in a)if(typeof b=="string"&&b&&b[t](0)==":"&&!N[b])N[b]=new T(b[B](1),a[b])};L("google.loader.rpl",m[A].R);m[A].Q=function(a){if((a=a.specs)&&a[x])for(var b=0;b<a[x];++b){var c=a[b];if(typeof c=="string")N[":"+c]=new U(c);else{c=new V(c[v],c.baseSpec,c.customSpecs);N[":"+c[v]]=c}}};L("google.loader.rm",m[A].Q);m[A].loaded=function(a){N[":"+a.module].j(a)};
L("google.loader.loaded",m[A].loaded);m[A].M=function(){var a=(new Date)[w](),b=Math.floor(Math.random()*1E7);return"qid="+(a.toString(16)+b.toString(16))};L("google.loader.createGuidArg_",m[A].M);J("google_exportSymbol",J);J("google_exportProperty",K);m[A].b={};L("google.loader.themes",m[A].b);m[A].b.B="http://www.google.com/cse/style/look/bubblegum.css";M(m[A].b,"BUBBLEGUM",m[A].b.B);m[A].b.D="http://www.google.com/cse/style/look/greensky.css";M(m[A].b,"GREENSKY",m[A].b.D);m[A].b.C="http://www.google.com/cse/style/look/espresso.css";
M(m[A].b,"ESPRESSO",m[A].b.C);m[A].b.G="http://www.google.com/cse/style/look/shiny.css";M(m[A].b,"SHINY",m[A].b.G);m[A].b.F="http://www.google.com/cse/style/look/minimalist.css";M(m[A].b,"MINIMALIST",m[A].b.F);function U(a){this.a=a;this.q=[];this.p={};this.m={};this.e={};this.k=d;this.c=-1}
U[y].g=function(a,b){var c="";if(b!=o){if(b.language!=o)c+="&hl="+i(b.language);if(b.nocss!=o)c+="&output="+i("nocss="+b.nocss);if(b.nooldnames!=o)c+="&nooldnames="+i(b.nooldnames);if(b.packages!=o)c+="&packages="+i(b.packages);if(b.callback!=e)c+="&async=2";if(b.style!=o)c+="&style="+i(b.style);if(b.other_params!=o)c+="&"+b.other_params}if(!this.k){if(m[this.a]&&m[this.a].JSHash)c+="&sig="+i(m[this.a].JSHash);var f=[];for(var g in this.p)g[t](0)==":"&&f[r](g[B](1));for(g in this.m)g[t](0)==":"&&
f[r](g[B](1));c+="&have="+i(f[C](","))}return m[A][u]+"/?file="+this.a+"&v="+a+m[A].AdditionalParams+c};U[y].z=function(a){var b=e;if(a)b=a.packages;var c=e;if(b)if(typeof b=="string")c=[a.packages];else if(b[x]){c=[];for(a=0;a<b[x];a++)typeof b[a]=="string"&&c[r](b[a][s](/^\s*|\s*$/,"")[D]())}c||(c=["default"]);b=[];for(a=0;a<c[x];a++)this.p[":"+c[a]]||b[r](c[a]);return b};
q(U[y],function(a,b){var c=this.z(b),f=b&&b.callback!=e;if(f)var g=new W(b.callback);for(var j=[],l=c[x]-1;l>=0;l--){var n=c[l];f&&g.I(n);if(this.m[":"+n]){c.splice(l,1);f&&this.e[":"+n][r](g)}else j[r](n)}if(c[x]){if(b&&b.packages)b.packages=c.sort()[C](",");for(l=0;l<j[x];l++){n=j[l];this.e[":"+n]=[];f&&this.e[":"+n][r](g)}if(!b&&O[":"+this.a]!=e&&O[":"+this.a].versions[":"+a]!=e&&!m[A].AdditionalParams&&this.k){c=O[":"+this.a];m[this.a]=m[this.a]||{};for(var S in c.properties)if(S&&S[t](0)==":")m[this.a][S[B](1)]=
c.properties[S];m[A].d("script",m[A][u]+c.path+c.js,f);c.css&&m[A].d("css",m[A][u]+c.path+c.css,f)}else if(!b||!b.autoloaded)m[A].d("script",this.g(a,b),f);if(this.k){this.k=h;this.c=(new Date)[w]();if(this.c%100!=1)this.c=-1}for(l=0;l<j[x];l++){n=j[l];this.m[":"+n]=d}}});
U[y].j=function(a){if(this.c!=-1){X("al_"+this.a,"jl."+((new Date)[w]()-this.c),d);this.c=-1}this.q=this.q.concat(a.components);m[A][this.a]||(m[A][this.a]={});m[A][this.a].packages=this.q.slice(0);for(var b=0;b<a.components[x];b++){this.p[":"+a.components[b]]=d;this.m[":"+a.components[b]]=h;var c=this.e[":"+a.components[b]];if(c){for(var f=0;f<c[x];f++)c[f].L(a.components[b]);delete this.e[":"+a.components[b]]}}X("hl",this.a)};U[y].l=function(a,b){return this.z(b)[x]==0};U[y].s=function(){return d};
function W(a){this.K=a;this.n={};this.r=0}W[y].I=function(a){this.r++;this.n[":"+a]=d};W[y].L=function(a){if(this.n[":"+a]){this.n[":"+a]=h;this.r--;this.r==0&&k[z](this.K,0)}};function V(a,b,c){this.name=a;this.J=b;this.o=c;this.w=this.h=h;this.i=[];m[A].v[this[v]]=H(this.j,this)}G(V,U);q(V[y],function(a,b){var c=b&&b.callback!=e;if(c){this.i[r](b.callback);b.callback="google.loader.callbacks."+this[v]}else this.h=d;if(!b||!b.autoloaded)m[A].d("script",this.g(a,b),c);X("el",this[v])});V[y].l=function(a,b){return b&&b.callback!=e?this.w:this.h};V[y].j=function(){this.w=d;for(var a=0;a<this.i[x];a++)k[z](this.i[a],0);this.i=[]};
var Y=function(a,b){return a.string?i(a.string)+"="+i(b):a.regex?b[s](/(^.*$)/,a.regex):""};V[y].g=function(a,b){return this.O(this.A(a),a,b)};
V[y].O=function(a,b,c){var f="";if(a.key)f+="&"+Y(a.key,m[A].ApiKey);if(a.version)f+="&"+Y(a.version,b);b=m[A].Secure&&a.ssl?a.ssl:a.uri;if(c!=e)for(var g in c)if(a.params[g])f+="&"+Y(a.params[g],c[g]);else if(g=="other_params")f+="&"+c[g];else if(g=="base_domain")b="http://"+c[g]+a.uri[B](a.uri.indexOf("/",7));m[this[v]]={};if(b.indexOf("?")==-1&&f)f="?"+f[B](1);return b+f};V[y].s=function(a){return this.A(a).deferred};V[y].A=function(a){if(this.o)for(var b=0;b<this.o[x];++b){var c=this.o[b];if((new RegExp(c.pattern)).test(a))return c}return this.J};function T(a,b){this.a=a;this.f=b;this.h=h}G(T,U);q(T[y],function(a,b){this.h=d;m[A].d("script",this.g(a,b),h)});T[y].l=function(){return this.h};T[y].j=function(){};T[y].g=function(a,b){if(!this.f.versions[":"+a]){if(this.f.aliases){var c=this.f.aliases[":"+a];if(c)a=c}if(!this.f.versions[":"+a])throw I("Module: '"+this.a+"' with version '"+a+"' not found!");}c=m[A].GoogleApisBase+"/libs/"+this.a+"/"+a+"/"+this.f.versions[":"+a][b&&b.uncompressed?"uncompressed":"compressed"];X("el",this.a);return c};
T[y].s=function(){return h};var da=h,Z=[],ea=(new Date)[w](),X=function(a,b,c){if(!da){Q(k,"unload",fa);da=d}if(c){if(!m[A].Secure&&(!m[A].Options||m[A].Options.csi===h)){a=a[D]()[s](/[^a-z0-9_.]+/g,"_");b=b[D]()[s](/[^a-z0-9_.]+/g,"_");k[z](H($,e,"http://csi.gstatic.com/csi?s=uds&v=2&action="+i(a)+"&it="+i(b)),1E4)}}else{Z[r]("r"+Z[x]+"="+i(a+(b?"|"+b:"")));k[z](fa,Z[x]>5?0:15E3)}},fa=function(){if(Z[x]){$(m[A][u]+"/stats?"+Z[C]("&")+"&nc="+(new Date)[w]()+"_"+((new Date)[w]()-ea));Z.length=0}},$=function(a){var b=new Image,
c=ga++;ha[c]=b;b.onload=b.onerror=function(){delete ha[c]};b.src=a;b=e},ha={},ga=0;J("google.loader.recordStat",X);J("google.loader.createImageForLogging",$);

}) ();google.loader.rm({"specs":[{"name":"books","baseSpec":{"uri":"http://books.google.com/books/api.js","ssl":null,"key":{"string":"key"},"version":{"string":"v"},"deferred":true,"params":{"callback":{"string":"callback"},"language":{"string":"hl"}}}},"feeds",{"name":"friendconnect","baseSpec":{"uri":"http://www.google.com/friendconnect/script/friendconnect.js","ssl":null,"key":{"string":"key"},"version":{"string":"v"},"deferred":false,"params":{}}},"spreadsheets","gdata","visualization",{"name":"sharing","baseSpec":{"uri":"http://www.google.com/s2/sharing/js","ssl":null,"key":{"string":"key"},"version":{"string":"v"},"deferred":false,"params":{"language":{"string":"hl"}}}},"search",{"name":"maps","baseSpec":{"uri":"http://maps.google.com/maps?file\u003dgoogleapi","ssl":"https://maps-api-ssl.google.com/maps?file\u003dgoogleapi","key":{"string":"key"},"version":{"string":"v"},"deferred":true,"params":{"callback":{"regex":"callback\u003d$1\u0026async\u003d2"},"language":{"string":"hl"}}},"customSpecs":[{"uri":"http://maps.google.com/maps/api/js","ssl":null,"key":{"string":"key"},"version":{"string":"v"},"deferred":true,"params":{"callback":{"string":"callback"},"language":{"string":"hl"}},"pattern":"^(3|3..*)$"}]},"annotations_v2","wave","orkut",{"name":"annotations","baseSpec":{"uri":"http://www.google.com/reviews/scripts/annotations_bootstrap.js","ssl":null,"key":{"string":"key"},"version":{"string":"v"},"deferred":true,"params":{"callback":{"string":"callback"},"language":{"string":"hl"},"country":{"string":"gl"}}}},"language","earth","ads","elements"]});
google.loader.rfm({":search":{"versions":{":1":"1",":1.0":"1"},"path":"/api/search/1.0/9e851088de4ceeea5a080c46a04c2720/","js":"default+en.I.js","css":"default.css","properties":{":JSHash":"9e851088de4ceeea5a080c46a04c2720",":NoOldNames":false,":Version":"1.0"}},":language":{"versions":{":1":"1",":1.0":"1"},"path":"/api/language/1.0/3fad7e8b5dc5f434143637f490aef720/","js":"default+en.I.js","properties":{":JSHash":"3fad7e8b5dc5f434143637f490aef720",":Version":"1.0"}},":wave":{"versions":{":1":"1",":1.0":"1"},"path":"/api/wave/1.0/395d51b25e854d0d2bef3297edbc03f9/","js":"default.I.js","properties":{":JSHash":"395d51b25e854d0d2bef3297edbc03f9",":Version":"1.0"}},":spreadsheets":{"versions":{":0":"1",":0.3":"1"},"path":"/api/spreadsheets/0.3/8331b0bbcc74776270648505340e9200/","js":"default.I.js","properties":{":JSHash":"8331b0bbcc74776270648505340e9200",":Version":"0.3"}},":earth":{"versions":{":1":"1",":1.0":"1"},"path":"/api/earth/1.0/adebf52d05a2cfff1db62bf5ad31980d/","js":"default.I.js","properties":{":JSHash":"adebf52d05a2cfff1db62bf5ad31980d",":Version":"1.0"}},":annotations":{"versions":{":1":"1",":1.0":"1"},"path":"/api/annotations/1.0/a8c51b8fc15cb3733d37bdedf2e0c167/","js":"default+en.I.js","properties":{":JSHash":"a8c51b8fc15cb3733d37bdedf2e0c167",":Version":"1.0"}}});
google.loader.rpl({":scriptaculous":{"versions":{":1.8.3":{"uncompressed":"scriptaculous.js","compressed":"scriptaculous.js"},":1.8.2":{"uncompressed":"scriptaculous.js","compressed":"scriptaculous.js"},":1.8.1":{"uncompressed":"scriptaculous.js","compressed":"scriptaculous.js"}},"aliases":{":1.8":"1.8.3",":1":"1.8.3"}},":yui":{"versions":{":2.6.0":{"uncompressed":"build/yuiloader/yuiloader.js","compressed":"build/yuiloader/yuiloader-min.js"},":2.7.0":{"uncompressed":"build/yuiloader/yuiloader.js","compressed":"build/yuiloader/yuiloader-min.js"},":2.8.0r4":{"uncompressed":"build/yuiloader/yuiloader.js","compressed":"build/yuiloader/yuiloader-min.js"},":2.8.1":{"uncompressed":"build/yuiloader/yuiloader.js","compressed":"build/yuiloader/yuiloader-min.js"}},"aliases":{":2":"2.8.1",":2.7":"2.7.0",":2.6":"2.6.0",":2.8":"2.8.1",":2.8.0":"2.8.0r4"}},":swfobject":{"versions":{":2.1":{"uncompressed":"swfobject_src.js","compressed":"swfobject.js"},":2.2":{"uncompressed":"swfobject_src.js","compressed":"swfobject.js"}},"aliases":{":2":"2.2"}},":webfont":{"versions":{":1.0.1":{"uncompressed":"webfont_debug.js","compressed":"webfont.js"},":1.0.0":{"uncompressed":"webfont_debug.js","compressed":"webfont.js"}},"aliases":{":1":"1.0.1",":1.0":"1.0.1"}},":ext-core":{"versions":{":3.1.0":{"uncompressed":"ext-core-debug.js","compressed":"ext-core.js"},":3.0.0":{"uncompressed":"ext-core-debug.js","compressed":"ext-core.js"}},"aliases":{":3":"3.1.0",":3.0":"3.0.0",":3.1":"3.1.0"}},":mootools":{"versions":{":1.2.3":{"uncompressed":"mootools.js","compressed":"mootools-yui-compressed.js"},":1.1.1":{"uncompressed":"mootools.js","compressed":"mootools-yui-compressed.js"},":1.2.4":{"uncompressed":"mootools.js","compressed":"mootools-yui-compressed.js"},":1.2.1":{"uncompressed":"mootools.js","compressed":"mootools-yui-compressed.js"},":1.2.2":{"uncompressed":"mootools.js","compressed":"mootools-yui-compressed.js"},":1.1.2":{"uncompressed":"mootools.js","compressed":"mootools-yui-compressed.js"}},"aliases":{":1":"1.1.2",":1.11":"1.1.1",":1.2":"1.2.4",":1.1":"1.1.2"}},":jqueryui":{"versions":{":1.7.2":{"uncompressed":"jquery-ui.js","compressed":"jquery-ui.min.js"},":1.7.3":{"uncompressed":"jquery-ui.js","compressed":"jquery-ui.min.js"},":1.6.0":{"uncompressed":"jquery-ui.js","compressed":"jquery-ui.min.js"},":1.7.0":{"uncompressed":"jquery-ui.js","compressed":"jquery-ui.min.js"},":1.7.1":{"uncompressed":"jquery-ui.js","compressed":"jquery-ui.min.js"},":1.5.3":{"uncompressed":"jquery-ui.js","compressed":"jquery-ui.min.js"},":1.8.0":{"uncompressed":"jquery-ui.js","compressed":"jquery-ui.min.js"},":1.5.2":{"uncompressed":"jquery-ui.js","compressed":"jquery-ui.min.js"},":1.8.1":{"uncompressed":"jquery-ui.js","compressed":"jquery-ui.min.js"}},"aliases":{":1.8":"1.8.1",":1.7":"1.7.3",":1.6":"1.6.0",":1":"1.8.1",":1.5":"1.5.3"}},":chrome-frame":{"versions":{":1.0.2":{"uncompressed":"CFInstall.js","compressed":"CFInstall.min.js"},":1.0.1":{"uncompressed":"CFInstall.js","compressed":"CFInstall.min.js"},":1.0.0":{"uncompressed":"CFInstall.js","compressed":"CFInstall.min.js"}},"aliases":{":1":"1.0.2",":1.0":"1.0.2"}},":prototype":{"versions":{":1.6.0.2":{"uncompressed":"prototype.js","compressed":"prototype.js"},":1.6.1.0":{"uncompressed":"prototype.js","compressed":"prototype.js"},":1.6.0.3":{"uncompressed":"prototype.js","compressed":"prototype.js"}},"aliases":{":1.6.1":"1.6.1.0",":1":"1.6.1.0",":1.6":"1.6.1.0",":1.6.0":"1.6.0.3"}},":jquery":{"versions":{":1.2.3":{"uncompressed":"jquery.js","compressed":"jquery.min.js"},":1.3.1":{"uncompressed":"jquery.js","compressed":"jquery.min.js"},":1.3.0":{"uncompressed":"jquery.js","compressed":"jquery.min.js"},":1.3.2":{"uncompressed":"jquery.js","compressed":"jquery.min.js"},":1.2.6":{"uncompressed":"jquery.js","compressed":"jquery.min.js"},":1.4.0":{"uncompressed":"jquery.js","compressed":"jquery.min.js"},":1.4.1":{"uncompressed":"jquery.js","compressed":"jquery.min.js"},":1.4.2":{"uncompressed":"jquery.js","compressed":"jquery.min.js"}},"aliases":{":1":"1.4.2",":1.4":"1.4.2",":1.3":"1.3.2",":1.2":"1.2.6"}},":dojo":{"versions":{":1.2.3":{"uncompressed":"dojo/dojo.xd.js.uncompressed.js","compressed":"dojo/dojo.xd.js"},":1.3.1":{"uncompressed":"dojo/dojo.xd.js.uncompressed.js","compressed":"dojo/dojo.xd.js"},":1.1.1":{"uncompressed":"dojo/dojo.xd.js.uncompressed.js","compressed":"dojo/dojo.xd.js"},":1.3.0":{"uncompressed":"dojo/dojo.xd.js.uncompressed.js","compressed":"dojo/dojo.xd.js"},":1.3.2":{"uncompressed":"dojo/dojo.xd.js.uncompressed.js","compressed":"dojo/dojo.xd.js"},":1.4.3":{"uncompressed":"dojo/dojo.xd.js.uncompressed.js","compressed":"dojo/dojo.xd.js"},":1.2.0":{"uncompressed":"dojo/dojo.xd.js.uncompressed.js","compressed":"dojo/dojo.xd.js"},":1.4.0":{"uncompressed":"dojo/dojo.xd.js.uncompressed.js","compressed":"dojo/dojo.xd.js"},":1.4.1":{"uncompressed":"dojo/dojo.xd.js.uncompressed.js","compressed":"dojo/dojo.xd.js"}},"aliases":{":1":"1.4.3",":1.4":"1.4.3",":1.3":"1.3.2",":1.2":"1.2.3",":1.1":"1.1.1"}}});
}
