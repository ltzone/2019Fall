<!DOCTYPE html>
<html lang="en" dir="ltr" prefix="og: http://ogp.me/ns#">
  <head>
    <meta charset="utf-8" /><script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var o=n[t]={exports:{}};e[t][0].call(o.exports,function(n){var o=e[t][1][n];return r(o||n)},o,o.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<t.length;o++)r(t[o]);return r}({1:[function(e,n,t){function r(){}function o(e,n,t){return function(){return i(e,[c.now()].concat(u(arguments)),n?null:this,t),n?void 0:this}}var i=e("handle"),a=e(3),u=e(4),f=e("ee").get("tracer"),c=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,n){s[n]=o(d+n,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,o="function"==typeof n;return i(l+"tracer",[c.now(),e,t],r),function(){if(f.emit((o?"":"no-")+"fn-start",[c.now(),r,o],t),o)try{return n.apply(this,arguments)}catch(e){throw f.emit("fn-err",[arguments,this,e],t),e}finally{f.emit("fn-end",[c.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=o(l+n)}),newrelic.noticeError=function(e,n){"string"==typeof e&&(e=new Error(e)),i("err",[e,c.now(),!1,n])}},{}],2:[function(e,n,t){function r(e,n){if(!o)return!1;if(e!==o)return!1;if(!n)return!0;if(!i)return!1;for(var t=i.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var u=navigator.userAgent,f=u.match(a);f&&u.indexOf("Chrome")===-1&&u.indexOf("Chromium")===-1&&(o="Safari",i=f[1])}n.exports={agent:o,version:i,match:r}},{}],3:[function(e,n,t){function r(e,n){var t=[],r="",i=0;for(r in e)o.call(e,r)&&(t[i]=n(r,e[r]),i+=1);return t}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],4:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,o=t-n||0,i=Array(o<0?0:o);++r<o;)i[r]=e[n+r];return i}n.exports=r},{}],5:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function o(e){function n(e){return e&&e instanceof r?e:e?f(e,u,i):i()}function t(t,r,o,i){if(!d.aborted||i){e&&e(t,r,o);for(var a=n(o),u=v(t),f=u.length,c=0;c<f;c++)u[c].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(e,n){h[e]=v(e).concat(n)}function m(e,n){var t=h[e];if(t)for(var r=0;r<t.length;r++)t[r]===n&&t.splice(r,1)}function v(e){return h[e]||[]}function g(e){return p[e]=p[e]||o(t)}function w(e,n){c(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var h={},y={},b={on:l,addEventListener:l,removeEventListener:m,emit:t,get:g,listeners:v,context:n,buffer:w,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",f=e("gos"),c=e(3),s={},p={},d=n.exports=o();d.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(o.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){o.buffer([e],r),o.emit(e,n,t)}var o=e("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!E++){var e=x.info=NREUM.info,n=l.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();c(y,function(n,t){e[n]||(e[n]=t)}),f("mark",["onload",a()+x.offset],null,"api");var t=l.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function o(){"complete"===l.readyState&&i()}function i(){f("mark",["domContent",a()+x.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-x.offset}var u=(new Date).getTime(),f=e("handle"),c=e(3),s=e("ee"),p=e(2),d=window,l=d.document,m="addEventListener",v="attachEvent",g=d.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:g,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1130.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),x=n.exports={offset:u,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};e(1),l[m]?(l[m]("DOMContentLoaded",i,!1),d[m]("load",r,!1)):(l[v]("onreadystatechange",o),d[v]("onload",r)),f("mark",["firstbyte",u],null,"api");var E=0,O=e(5)},{}]},{},["loader"]);</script>
<meta name="title" content="Investor Overview | Baidu Inc" />
<link rel="shortlink" href="http://ir.baidu.com/" />
<meta property="og:site_name" content="Baidu Inc" />
<link rel="canonical" href="http://ir.baidu.com/investor-overview/" />
<meta property="og:type" content="website" />
<meta name="description" content="The Investor Relations website contains information about Baidu Inc &#039;s business for stockholders, potential investors, and financial analysts." />
<meta property="og:url" content="http://ir.baidu.com/investor-overview" />
<meta property="og:title" content="Investor Overview | Baidu Inc" />
<meta property="og:description" content="The Investor Relations website contains information about Baidu Inc &#039;s business for stockholders, potential investors, and financial analysts." />
<meta name="Generator" content="Drupal 8 (https://www.drupal.org)" />
<meta name="MobileOptimized" content="width" />
<meta name="HandheldFriendly" content="true" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="viewport" content="width=device-width, initial-scale=0.36" />
<link rel="shortcut icon" href="/sites/g/files/knoqqb24286/files/favicon_0.ico" type="image/vnd.microsoft.icon" />
<link rel="alternate" hreflang="en" href="http://ir.baidu.com/investor-overview" />
<link rel="revision" href="http://ir.baidu.com/investor-overview" />

    <title>Investor Overview | Baidu Inc</title>
    <link rel="stylesheet" media="all" href="/sites/g/files/knoqqb24286/files/css/css_99v8ymF_mpzobuOf89FVg3FKhcjKqiwyFOXYVCVBOFg.css?pyhph3" />
<link rel="stylesheet" media="all" href="/sites/g/files/knoqqb24286/files/css/css_jYcTsb5hTFLq1lIb0oZNXX813GzsAebR56QKDxWb1T8.css?pyhph3" />
<link rel="stylesheet" media="print" href="/sites/g/files/knoqqb24286/files/css/css_Ot19GIJN24bqvXeZno3bS7zyODiGrB-uI4CAUmR6XTY.css?pyhph3" />

    
<!--[if lte IE 8]>
<script src="/sites/g/files/knoqqb24286/files/js/js_VtafjXmRvoUgAzqzYTA3Wrjkx9wcWhjP0G4ZnnqRamA.js"></script>
<![endif]-->
<script src="/core/assets/vendor/modernizr/modernizr.min.js?v=3.3.1"></script>

    
  </head>
  <body class="body-sidebars-first nir-node nir-node--type-nir-landing-page nir-node--5806 path-frontpage page-node-type-nir-landing-page">
    <div id="skip">
      <a class="visually-hidden focusable skip-link" href="#main-menu">
        Skip to main navigation
      </a>
    </div>
    
      <div class="dialog-off-canvas-main-canvas" data-off-canvas-main-canvas>
    
<div class="header_wrap">
    <div id="header"><a href="http://www.baidu.com/"><img width="116" src="/sites/g/files/knoqqb24286/themes/site/nir_pid2206/client/images/baidu_logo.png" /></a></div>
</div>
<div class="wrapper index">
    <div class="w_left">
          <div class="region region-sidebar-first">
    

<nav role="navigation" aria-labelledby="block-nir-pid2206-investorrelations-menu" id="block-nir-pid2206-investorrelations" class="block--system-menu-blockir block--system-menu-blockir--5806 block--sidebar-first--system-menu-block--ir block--sidebar-first--system-menu-block--ir--5806 block--62466881-d51c-4f8e-99a3-3f8326b98628 block--62466881-d51c-4f8e-99a3-3f8326b98628--5806 block block-menu navigation block-system-menublock menu--ir">
                        
    <h2 class="visually-hidden" id="block-nir-pid2206-investorrelations-menu">Investor Relations</h2>
    

                              <ul data-block-uuid="62466881-d51c-4f8e-99a3-3f8326b98628" class="menu side-menu">
          	            <li class="side-menu__item menu-active">
          <a href="/" target="" rel="" title="Main Investor Relations Page" data-drupal-link-system-path="&lt;front&gt;" class="is-active">HOME</a>
                  </li>
      	            <li class="side-menu__item ">
          <a href="" target="" rel="">ABOUT BAIDU </a>
                                    <ul class="menu side-menu">
          	            <li class="side-menu__item ">
          <a href="/company-overview" target="" rel="" data-drupal-link-system-path="node/9381">Company Overview</a>
                  </li>
      	            <li class="side-menu__item ">
          <a href="/milestone" target="" rel="" data-drupal-link-system-path="node/9391">Milestones</a>
                  </li>
      	            <li class="side-menu__item ">
          <a href="/corporate-governance/management" target="" rel="" data-drupal-link-system-path="node/5846">Management</a>
                  </li>
      	            <li class="side-menu__item ">
          <a href="/corporate-governance/board-of-directors" target="" rel="" data-drupal-link-system-path="node/5841">Board of Directors</a>
                  </li>
          </ul>
  
                  </li>
      	            <li class="side-menu__item menu-active">
          <a href="/" data-drupal-link-system-path="&lt;front&gt;" class="is-active">Investor Relations</a>
                                    <ul class="menu side-menu">
          	            <li class="side-menu__item ">
          <a href="/press-releases" target="" rel="" data-drupal-link-system-path="node/5816">Press Releases</a>
                  </li>
      	            <li class="side-menu__item ">
          <a href="/financial-reports" target="" rel="" data-drupal-link-system-path="node/9466">Financial Reports</a>
                  </li>
      	            <li class="side-menu__item ">
          <a href="/webcasts" target="" rel="" data-drupal-link-system-path="node/5826">Webcasts</a>
                  </li>
      	            <li class="side-menu__item ">
          <a href="/stock-information/stock-quote" data-drupal-link-system-path="node/5911">Stock Information</a>
                  </li>
      	            <li class="side-menu__item ">
          <a href="/financial-information/sec-filings" data-drupal-link-system-path="node/5876">SEC Filings</a>
                  </li>
      	            <li class="side-menu__item ">
          <a href="/stock-information/analyst-coverage" data-drupal-link-system-path="node/5896">Analyst Coverage</a>
                  </li>
      	            <li class="side-menu__item ">
          <a href="/ir-calendar" target="" rel="" class="highlight" title="Corporate Profile" data-drupal-link-system-path="node/5821">IR Calendar</a>
                  </li>
      	            <li class="side-menu__item ">
          <a href="/shareholder-services/investor-faqs" data-drupal-link-system-path="node/5941">Investor FAQs</a>
                  </li>
      	            <li class="side-menu__item ">
          <a href="/corporate-governance" target="" rel="" data-drupal-link-system-path="node/9461">Corporate Governance</a>
                  </li>
          </ul>
  
                  </li>
      	            <li class="side-menu__item ">
          <a href="" target="" rel=""> PRODUCTS &amp; SERVICES             </a>
                                    <ul class="menu side-menu">
          	            <li class="side-menu__item ">
          <a href="/Baidu-Core" target="" rel="" data-drupal-link-system-path="node/9401">Baidu Core</a>
                  </li>
      	            <li class="side-menu__item ">
          <a href="/iqiyi" target="" rel="" data-drupal-link-system-path="node/9421">iQIYI</a>
                  </li>
          </ul>
  
                  </li>
      	            <li class="side-menu__item ">
          <a href="" target="" rel="">CONTACT US</a>
                                    <ul class="menu side-menu">
          	            <li class="side-menu__item ">
          <a href="/contact-form" target="" rel="" data-drupal-link-system-path="node/9426">Contact Form</a>
                  </li>
      	            <li class="side-menu__item ">
          <a href="/notice-right-holders-block-0" target="" rel="" data-drupal-link-system-path="node/9451">IP Protection</a>
                  </li>
      	            <li class="side-menu__item ">
          <a href="/sem" target="" rel="" data-drupal-link-system-path="node/9436">SEM</a>
                  </li>
      	            <li class="side-menu__item ">
          <a href="/shareholder-services/email-alerts" target="" rel="" data-drupal-link-system-path="node/5946">Email Alerts</a>
                  </li>
          </ul>
  
                  </li>
          </ul>
  


    </nav>

  </div>

    </div>

    <div class="w_mright">
        <div class="ccbnContent">
              <div class="region region-content">
    <div data-drupal-messages-fallback class="hidden"></div>
<div id="block-nir-pid2206-content" class="block--system-main-block block--system-main-block--5806 block--content--system-main-block block--content--system-main-block--5806 block--4eb3c991-3611-4753-8c7d-e7981c5b1302 block--4eb3c991-3611-4753-8c7d-e7981c5b1302--5806 block block-system block-system-main-block">
  
    
      <article class="node node--type-nir_landing_page node--view-mode-full clearfix">
  
      <h1>
              Investor Overview
          </h1>
    

  <div>
    
<div class="panel-display bartlett-flipped clearfix " >
  <div class="container-fluid">
    <div class="row">

      <div class="col-md-8 panel-panel">
        <div class="row">
          <div class="col-md-12 radix-layouts-contentheader panel-panel">
            <div class="panel-panel-inner">
              <div class="block-region-contentheader"><div class="block-content--nir-lp-block block-content--nir-lp-block--7286 block--block-contentc453aa60-a4b4-4111-ba57-29f0330d8d24 block--block-contentc453aa60-a4b4-4111-ba57-29f0330d8d24--5806 block--contentheader--block-content--c453aa60-a4b4-4111-ba57-29f0330d8d24 block--contentheader--block-content--c453aa60-a4b4-4111-ba57-29f0330d8d24--5806 block--5b62bc4e-1d67-4e5d-86c2-103a5ac504d9 block--5b62bc4e-1d67-4e5d-86c2-103a5ac504d9--5806 block block-block-content block-block-contentc453aa60-a4b4-4111-ba57-29f0330d8d24">
  
    
      
            <div class="field field--name-field-nir-lp-block-node field--type-entity-reference field--label-hidden field__item">  
            <div class="clearfix text-formatted field field--name-field-nir-lp-block-body field--type-text-long field--label-hidden field__item"><p><a href="/company-overview"><img alt="homepage" data-entity-type="file" data-entity-uuid="a165f1bd-0f13-46b3-bc83-4408e238acc6" src="/system/files-encrypted/nasdaq_kms/inline-images/New%20homepage%20pic%20-%20Baidu.png" /></a></p>
</div>
      
</div>
      
  </div>
</div>
            </div>
          </div>
          <div class="col-md-6 radix-layouts-contentcolumn1 panel-panel">
            <div class="panel-panel-inner">
              <div class="block-region-contentcolumn1"><div class="block-content--nir-lp-block block-content--nir-lp-block--9471 block--block-content0d3b1b5c-1089-42aa-8532-fa840f4cb378 block--block-content0d3b1b5c-1089-42aa-8532-fa840f4cb378--5806 block--contentcolumn1--block-content--0d3b1b5c-1089-42aa-8532-fa840f4cb378 block--contentcolumn1--block-content--0d3b1b5c-1089-42aa-8532-fa840f4cb378--5806 block--1d180b8d-b259-4917-b48a-7e7f8c56758d block--1d180b8d-b259-4917-b48a-7e7f8c56758d--5806 block block-block-content block-block-content0d3b1b5c-1089-42aa-8532-fa840f4cb378">
  
    
      
            <div class="field field--name-field-nir-lp-block-node field--type-entity-reference field--label-hidden field__item">  
            <div class="clearfix text-formatted field field--name-field-nir-lp-block-body field--type-text-long field--label-hidden field__item"><a class="see_all" href="/press-releases">See All</a></div>
      
</div>
      
  </div>
<div class="block--homepage-releases block--nir-news__widget block--nir-news__widget--5806 block--contentcolumn1--nir-news__widget block--contentcolumn1--nir-news__widget--5806 block--4a0dfa50-e595-4902-b584-7cfa504fd4d5 block--4a0dfa50-e595-4902-b584-7cfa504fd4d5--5806 block block-nir-news block-nir-news__widget">
  
    
      <div class="nir-widget">
      <div class="nir-widget--label">
      Press releases
    </div>
    <div class="nir-widget--content">
        <div class="nir-widget--list">
              
<article role="article" class="clearfix node node--nir-news--nir-widget-list node--type-nir-news node--view-mode-nir-widget-list node--promoted">

  


            <div class="nir-widget--field nir-widget--news--headline">
        <span class="HomeNewsTitle">
          <a href="/news-releases/news-release-details/baidu-announces-second-quarter-2019-results" hreflang="en">Baidu Announces Second Quarter 2019 Results</a>
        </span>
      </div>
      
          <div class="nir-widget--field nir-widget--news--date-time">
        <span class="HomeNewsDate">
          Aug 19, 19
        </span>
      </div>
    
  
  
  
  
  
  
</article>

<article role="article" class="clearfix node node--nir-news--nir-widget-list node--type-nir-news node--view-mode-nir-widget-list node--promoted">

  


            <div class="nir-widget--field nir-widget--news--headline">
        <span class="HomeNewsTitle">
          <a href="/news-releases/news-release-details/baidu-report-second-quarter-2019-financial-results-august-19" hreflang="en">Baidu to Report Second Quarter 2019 Financial Results on August 19, 2019</a>
        </span>
      </div>
      
          <div class="nir-widget--field nir-widget--news--date-time">
        <span class="HomeNewsDate">
          Jul 29, 19
        </span>
      </div>
    
  
  
  
  
  
  
</article>

<article role="article" class="clearfix node node--nir-news--nir-widget-list node--type-nir-news node--view-mode-nir-widget-list node--promoted">

  


            <div class="nir-widget--field nir-widget--news--headline">
        <span class="HomeNewsTitle">
          <a href="/news-releases/news-release-details/baidu-announces-first-quarter-2019-results" hreflang="en">Baidu Announces First Quarter 2019 Results</a>
        </span>
      </div>
      
          <div class="nir-widget--field nir-widget--news--date-time">
        <span class="HomeNewsDate">
          May 16, 19
        </span>
      </div>
    
  
  
  
  
  
  
</article>

          </div>
    <div class="nir-widget--pager">
      
    </div>
    <div class="nir-widget--total-results">
      
    </div>
  </div>
</div>
  </div>
<div class="block-content--nir-lp-block block-content--nir-lp-block--9481 block--block-contentfd37286f-a674-481e-a332-4ae34f7ee427 block--block-contentfd37286f-a674-481e-a332-4ae34f7ee427--5806 block--contentcolumn1--block-content--fd37286f-a674-481e-a332-4ae34f7ee427 block--contentcolumn1--block-content--fd37286f-a674-481e-a332-4ae34f7ee427--5806 block--fbd221cc-21d7-4385-a551-25fcd40022a3 block--fbd221cc-21d7-4385-a551-25fcd40022a3--5806 block block-block-content block-block-contentfd37286f-a674-481e-a332-4ae34f7ee427">
  
    
      
            <div class="field field--name-field-nir-lp-block-node field--type-entity-reference field--label-hidden field__item">  
            <div class="clearfix text-formatted field field--name-field-nir-lp-block-body field--type-text-long field--label-hidden field__item"><a class="see_all" href="/ir-calendar">See All</a></div>
      
</div>
      
  </div>
<div class="block--homepage-events block--nir-events__widget block--nir-events__widget--5806 block--contentcolumn1--nir-events__widget block--contentcolumn1--nir-events__widget--5806 block--91cd2cb2-e175-4f4b-8caf-c3df2b297e3c block--91cd2cb2-e175-4f4b-8caf-c3df2b297e3c--5806 block block-nir-events block-nir-events__widget">
  
    
      <div class="nir-widget">
      <div class="nir-widget--label">
      IR Calendar
    </div>
    <div class="nir-widget--content">
        <div class="nir-widget--list">
              More events are coming soon.
          </div>
    <div class="nir-widget--pager">
      
    </div>
    <div class="nir-widget--total-results">
      
    </div>
  </div>
</div>
  </div>
<div class="block--attribution-block__stock-info-attribution__thomson-reuters block--attribution-block__stock-info-attribution__thomson-reuters--5806 block--contentcolumn1--attribution-block__stock-info-attribution__thomson-reuters block--contentcolumn1--attribution-block__stock-info-attribution__thomson-reuters--5806 block--fe5fc00f-14eb-420e-ad1a-d1ff5b3a0d8b block--fe5fc00f-14eb-420e-ad1a-d1ff5b3a0d8b--5806 block block-nir-attribution-block block-attribution-block__stock-info-attribution__thomson-reuters">
  
    
      <p>
  Copyright West LLC. Minimum 15 minutes delayed.</p>

  </div>
</div>
            </div>
          </div>
          <div class="col-md-6 radix-layouts-contentcolumn2 panel-panel">
            <div class="panel-panel-inner">
              <div class="block-region-contentcolumn2"><div class="block-content--nir-lp-block block-content--nir-lp-block--9476 block--block-content299b832f-9921-45db-8964-30daa0b17c21 block--block-content299b832f-9921-45db-8964-30daa0b17c21--5806 block--contentcolumn2--block-content--299b832f-9921-45db-8964-30daa0b17c21 block--contentcolumn2--block-content--299b832f-9921-45db-8964-30daa0b17c21--5806 block--c8dd6704-f875-4173-9003-ce664452ddd5 block--c8dd6704-f875-4173-9003-ce664452ddd5--5806 block block-block-content block-block-content299b832f-9921-45db-8964-30daa0b17c21">
  
    
      
            <div class="field field--name-field-nir-lp-block-node field--type-entity-reference field--label-hidden field__item">  
            <div class="clearfix text-formatted field field--name-field-nir-lp-block-body field--type-text-long field--label-hidden field__item"><a class="see_all" href="/financial-reports">See All</a></div>
      
</div>
      
  </div>
<div class="block--homepage-asset block--nir-assets__widget block--nir-assets__widget--5806 block--contentcolumn2--nir-assets__widget block--contentcolumn2--nir-assets__widget--5806 block--81ec1eaa-bbe7-45d7-9ef9-48191018224c block--81ec1eaa-bbe7-45d7-9ef9-48191018224c--5806 block block-nir-assets block-nir-assets__widget">
  
    
      <div class="nir-widget">
      <div class="nir-widget--label">
      Financial Reports
    </div>
    <div class="nir-widget--content">
        <div class="nir-widget--list">
              
<article role="article" class="clearfix node node--nir-asset--nir-widget-list node--type-nir-asset node--view-mode-nir-widget-list">

  
      <div class="nir-widget--field nir-widgets--asset--title">
      <span class="nir-widget--asset--title--title">
<div class="field-nir-asset-title">
      <div class="field__item">2019</div>
  </div></span>
      <span class="nir-widget--asset--title-file-size"></span>
    </div>
  
  
  
  
  
  

      <div class="nir-widget--field nir-widget--asset--list-of-files">
      
<div class="field-nir-document">
      <div class="nir-widgets--file-list--hide-filesize field__item">
<article role="article" class="node node--nir-asset--asset-link node--type-nir-asset node--view-mode-asset-link">
  <div class="node__content">
    
      <div class="field field--name-field-nir-document field--type-file field--label-hidden field__items">
              <div class="field__item">
            <div class="file-link">
  <span class="file file--mime-application-pdf file--application-pdf"> <a href="http://ir.baidu.com/static-files/0bd14b2a-c2e7-4d72-8024-68bfd296b2a2" type="application/pdf; length=442400" title="BIDU - Q1 2019 Earnings Release 2.pdf">Q1</a></span><span class="filesize"> 442.4 KB</span>
</div>

        </div>
              <div class="field__item">
            <div class="file-link">
  <span class="file file--mime-application-pdf file--application-pdf"> <a href="http://ir.baidu.com/static-files/91f91e3c-8b88-42be-90e2-a9a9ea06b1f5" type="application/pdf; length=468471" title="BIDU - Q2 2019 Earnings Release.pdf">Q2</a></span><span class="filesize"> 468.4 KB</span>
</div>

        </div>
              <div class="field__item">
            <div class="file-link">
  <span class="file file--mime-application-pdf file--application-pdf"> <a href="http://ir.baidu.com/static-files/0132fe62-2c84-4ca5-8717-6f785589151b" type="application/pdf; length=17598" title="blank.pdf">Q3</a></span><span class="filesize"> 17.5 KB</span>
</div>

        </div>
              <div class="field__item">
            <div class="file-link">
  <span class="file file--mime-application-pdf file--application-pdf"> <a href="http://ir.baidu.com/static-files/eb4e1b3e-00d1-4a88-b1fd-2e2c95698105" type="application/pdf; length=17598" title="blank.pdf">Q4</a></span><span class="filesize"> 17.5 KB</span>
</div>

        </div>
              <div class="field__item">
            <div class="file-link">
  <span class="file file--mime-application-pdf file--application-pdf"> <a href="http://ir.baidu.com/static-files/c4a7b809-a90c-43a2-ba8f-ce70be3ff049" type="application/pdf; length=17598" title="blank.pdf">Annual</a></span><span class="filesize"> 17.5 KB</span>
</div>

        </div>
          </div>
  
  </div>
</article>
</div>
  </div>
    </div>
  
</article>

<article role="article" class="clearfix node node--nir-asset--nir-widget-list node--type-nir-asset node--view-mode-nir-widget-list">

  
      <div class="nir-widget--field nir-widgets--asset--title">
      <span class="nir-widget--asset--title--title">
<div class="field-nir-asset-title">
      <div class="field__item">2018</div>
  </div></span>
      <span class="nir-widget--asset--title-file-size"></span>
    </div>
  
  
  
  
  
  

      <div class="nir-widget--field nir-widget--asset--list-of-files">
      
<div class="field-nir-document">
      <div class="nir-widgets--file-list--hide-filesize field__item">
<article role="article" class="node node--nir-asset--asset-link node--type-nir-asset node--view-mode-asset-link">
  <div class="node__content">
    
      <div class="field field--name-field-nir-document field--type-file field--label-hidden field__items">
              <div class="field__item">
            <div class="file-link">
  <span class="file file--mime-application-pdf file--application-pdf"> <a href="http://ir.baidu.com/static-files/626b8f84-5d34-49b7-b4ab-4f9f03cb8a2b" type="application/pdf; length=395202" title="BIDU -- Q1 2018 Earnings Release-d.pdf">Q1</a></span><span class="filesize"> 395.2 KB</span>
</div>

        </div>
              <div class="field__item">
            <div class="file-link">
  <span class="file file--mime-application-pdf file--application-pdf"> <a href="http://ir.baidu.com/static-files/24f96e6a-218f-4a3f-89e9-cbe5daac720f" type="application/pdf; length=396786" title="BIDU_Q2_2018_Earnings_Release.pdf">Q2</a></span><span class="filesize"> 396.7 KB</span>
</div>

        </div>
              <div class="field__item">
            <div class="file-link">
  <span class="file file--mime-application-pdf file--application-pdf"> <a href="http://ir.baidu.com/static-files/72497712-134d-48d1-8d96-5363d74569cf" type="application/pdf; length=306991" title="BIDU -- Q3 2018 Earnings Release.pdf">Q3</a></span><span class="filesize"> 306.9 KB</span>
</div>

        </div>
              <div class="field__item">
            <div class="file-link">
  <span class="file file--mime-application-pdf file--application-pdf"> <a href="http://ir.baidu.com/static-files/40b3bccb-b4bc-453b-890b-5a6ac2624c98" type="application/pdf; length=372644" title="BIDU -- Q4 2018 Earnings Release.pdf">Q4</a></span><span class="filesize"> 372.6 KB</span>
</div>

        </div>
              <div class="field__item">
            <div class="file-link">
  <span class="file file--mime-application-pdf file--application-pdf"> <a href="http://ir.baidu.com/static-files/4ce88b07-60fe-4561-9cc9-2b0e0ec9dfd6" type="application/pdf; length=6174235" title="Baidu 2018 Form 20-F.pdf">Annual</a></span><span class="filesize"> 6.1 MB</span>
</div>

        </div>
          </div>
  
  </div>
</article>
</div>
  </div>
    </div>
  
</article>

<article role="article" class="clearfix node node--nir-asset--nir-widget-list node--type-nir-asset node--view-mode-nir-widget-list">

  
      <div class="nir-widget--field nir-widgets--asset--title">
      <span class="nir-widget--asset--title--title">
<div class="field-nir-asset-title">
      <div class="field__item">2017</div>
  </div></span>
      <span class="nir-widget--asset--title-file-size"></span>
    </div>
  
  
  
  
  
  

      <div class="nir-widget--field nir-widget--asset--list-of-files">
      
<div class="field-nir-document">
      <div class="nir-widgets--file-list--hide-filesize field__item">
<article role="article" class="node node--nir-asset--asset-link node--type-nir-asset node--view-mode-asset-link">
  <div class="node__content">
    
      <div class="field field--name-field-nir-document field--type-file field--label-hidden field__items">
              <div class="field__item">
            <div class="file-link">
  <span class="file file--mime-application-pdf file--application-pdf"> <a href="http://ir.baidu.com/static-files/7788c2fd-feec-4b96-ab53-a7e5938cb3d1" type="application/pdf; length=178819" title="BIDU_ --_ Q1_2017_Earnings_Release.pdf">Q1</a></span><span class="filesize"> 178.8 KB</span>
</div>

        </div>
              <div class="field__item">
            <div class="file-link">
  <span class="file file--mime-application-pdf file--application-pdf"> <a href="http://ir.baidu.com/static-files/799bc3aa-e928-46ab-b042-988c05cfbba1" type="application/pdf; length=335988" title="BIDU -- Q2 2017 Earnings Release.pdf">Q2</a></span><span class="filesize"> 335.9 KB</span>
</div>

        </div>
              <div class="field__item">
            <div class="file-link">
  <span class="file file--mime-application-pdf file--application-pdf"> <a href="http://ir.baidu.com/static-files/af6caa62-a466-43ad-afbc-0be8c67e2600" type="application/pdf; length=337188" title="BIDU -- Q3 2017 Earnings Release.pdf">Q3</a></span><span class="filesize"> 337.1 KB</span>
</div>

        </div>
              <div class="field__item">
            <div class="file-link">
  <span class="file file--mime-application-pdf file--application-pdf"> <a href="http://ir.baidu.com/static-files/10697097-82ae-4722-b998-f97b88bc0e15" type="application/pdf; length=514683" title="BIDU -- Q4 2017 Earnings Release.pdf">Q4</a></span><span class="filesize"> 514.6 KB</span>
</div>

        </div>
              <div class="field__item">
            <div class="file-link">
  <span class="file file--mime-application-pdf file--application-pdf"> <a href="http://ir.baidu.com/static-files/014fbdb7-8fcf-4ff3-b01e-1e7544efa4b7" type="application/pdf; length=2230491" title="Baidu 2017 Form 20-F.pdf">Annual</a></span><span class="filesize"> 2.2 MB</span>
</div>

        </div>
          </div>
  
  </div>
</article>
</div>
  </div>
    </div>
  
</article>

          </div>
    <div class="nir-widget--pager">
      
    </div>
    <div class="nir-widget--total-results">
      
    </div>
  </div>
</div>
  </div>
<div class="block-content--nir-lp-block block-content--nir-lp-block--9486 block--block-content6cc0a134-55f9-496a-8831-6526fee65116 block--block-content6cc0a134-55f9-496a-8831-6526fee65116--5806 block--contentcolumn2--block-content--6cc0a134-55f9-496a-8831-6526fee65116 block--contentcolumn2--block-content--6cc0a134-55f9-496a-8831-6526fee65116--5806 block--f08a4bfd-18e6-4dc4-9453-141010ab3269 block--f08a4bfd-18e6-4dc4-9453-141010ab3269--5806 block block-block-content block-block-content6cc0a134-55f9-496a-8831-6526fee65116">
  
    
      
            <div class="field field--name-field-nir-lp-block-node field--type-entity-reference field--label-hidden field__item">  
            <div class="clearfix text-formatted field field--name-field-nir-lp-block-body field--type-text-long field--label-hidden field__item"><a class="see_all" href="/financial-information/sec-filings">See All</a></div>
      
</div>
      
  </div>
<div class="views-element-container block--views-blockwidget-sec-filings-table block--views-blockwidget-sec-filings-table--5806 block--contentcolumn2--views-block--widget-sec-filings-table block--contentcolumn2--views-block--widget-sec-filings-table--5806 block--82e70f70-a84d-431e-9296-c6a6aeb5743c block--82e70f70-a84d-431e-9296-c6a6aeb5743c--5806 block block-views block-views-blockwidget-sec-filings-table">
  
      <h2>SEC Filings</h2>
    
      <div data-block-uuid="82e70f70-a84d-431e-9296-c6a6aeb5743c"><div class="view view-widget-sec-filings view-id-widget_sec_filings view-display-id-table js-view-dom-id-7d45035c5571f2ebb52b1763a8327cb2541dcae7b14b7a2f51a70689c7bcaea0">
  
    
        <div class="view-filters">
      <form class="views-exposed-form" data-drupal-selector="views-exposed-form-widget-sec-filings-table" action="/" method="get" id="views-exposed-form-widget-sec-filings-table" accept-charset="UTF-8">
  <div class="form--inline clearfix">
  <div data-drupal-selector="edit-actions" class="form-actions js-form-wrapper form-wrapper" id="edit-actions"><input data-drupal-selector="edit-reset" type="submit" id="edit-reset" name="op" value="Reset" class="button js-form-submit form-submit" />
</div>

</div>

</form>

    </div>
    
      <div class="view-content">
      <table class="nirtable views-table views-view-table cols-3 collapse-table-wide">
    
          <tr>
                                                                                        <li headers="view-field-nir-sec-description-table-column" class="views-field views-field-field-nir-sec-description"><p>An amendment to a SC 13D filing</p>
          </li>
                                                                                        <li headers="view-field-nir-sec-date-filed-table-column" class="views-field views-field-field-nir-sec-date-filed is-active"><time datetime="2019-10-02T04:00:00Z" timezone="America/New_York" class="datetime">Oct 2, 2019 </time>          </li>
                                                                                                                                                                      <li headers="view-nothing-1-table-column" class="views-field views-field-nothing-1 views-field-field-nir-sec-pdf views-field-field-nir-sec-doc views-field-field-nir-sec-xls">  <div class="file-link">
  <span class="file file--mime-application-pdf file--application-pdf"> <a href="http://ir.baidu.com/static-files/b55f0129-e940-440d-92bf-a9e8326439c0" type="application/pdf; length=">0000950103-19-013460.pdf</a></span><span class="filesize"> </span>
</div>
  <div class="file-link">
  <span class="file file--mime-application-rtf file--general"> <a href="http://ir.baidu.com/static-files/5ab90a20-3675-4a5d-b3fa-8901d6635bd9" type="application/rtf; length=">0000950103-19-013460.rtf</a></span><span class="filesize"> </span>
</div>
  <div class="file-link">
  <span class="file file--mime-application-vnd-ms-excel file--x-office-spreadsheet"> <a href="http://ir.baidu.com/static-files/ab91f3ac-5e46-4b5a-9ef2-e70957cc9127" type="application/vnd.ms-excel; length=">0000950103-19-013460.xls</a></span><span class="filesize"> </span>
</div>
          </li>
              </tr>
          <tr>
                                                                                        <li headers="view-field-nir-sec-description-table-column" class="views-field views-field-field-nir-sec-description"><p>An amendment to a SC 13D filing</p>
          </li>
                                                                                        <li headers="view-field-nir-sec-date-filed-table-column" class="views-field views-field-field-nir-sec-date-filed is-active"><time datetime="2019-10-02T04:00:00Z" timezone="America/New_York" class="datetime">Oct 2, 2019 </time>          </li>
                                                                                                                                                                      <li headers="view-nothing-1-table-column" class="views-field views-field-nothing-1 views-field-field-nir-sec-pdf views-field-field-nir-sec-doc views-field-field-nir-sec-xls">  <div class="file-link">
  <span class="file file--mime-application-pdf file--application-pdf"> <a href="http://ir.baidu.com/static-files/43cf8ed4-b27b-4791-b32a-f21087befcb4" type="application/pdf; length=">0000950103-19-013469.pdf</a></span><span class="filesize"> </span>
</div>
  <div class="file-link">
  <span class="file file--mime-application-rtf file--general"> <a href="http://ir.baidu.com/static-files/a361a44a-914c-4462-bcb0-1f20ea49b2e5" type="application/rtf; length=">0000950103-19-013469.rtf</a></span><span class="filesize"> </span>
</div>
  <div class="file-link">
  <span class="file file--mime-application-vnd-ms-excel file--x-office-spreadsheet"> <a href="http://ir.baidu.com/static-files/13d8ab6a-71b9-47c2-bdb8-a6eaba886557" type="application/vnd.ms-excel; length=">0000950103-19-013469.xls</a></span><span class="filesize"> </span>
</div>
          </li>
              </tr>
      
</table>

    </div>
  
  
        </div>
</div>

  </div>
</div>
            </div>
          </div>
        </div>
      </div>

      <!-- Sidebar -->
      <div class="col-md-4 radix-layouts-sidebar panel-panel">
        <div class="panel-panel-inner">
          <div class="block-region-sidebar"><div class="block--nir-stock-chart block--nir-stock-chart--5806 block--sidebar--nir-stock-chart block--sidebar--nir-stock-chart--5806 block--a99ada07-1490-4f38-99ba-edb4947bf780 block--a99ada07-1490-4f38-99ba-edb4947bf780--5806 block block-nir-stock-chart">
  <span class="top_border"><span class="top_border_l"></span><span class="top_border_r"></span></span>
  
      <h2>Stock Information</h2>
    
      
<img src="https://api.nasdaqomx.wallst.com/api/chart?display=mountain&symbol=BIDU&scale=linear&duration=6mo&frequency=1dy&gridLine=b&bgColor=ffffff&lineColor=c9e4ff&fillcolor=c9e4ff|c9e4ff&width=192&height=180&volume=0&amp;bdr=2&amp;headerType=" width="192" height="180" ></img>

  </div>
<div data-storage-id="node:5806:full:28816" data-uuid="ef6147b4-5c48-4bb5-a249-efadc198f426" class="block--market-data-block__stock-quote block--market-data-block__stock-quote--5806 block--sidebar--market-data-block__stock-quote block--sidebar--market-data-block__stock-quote--5806 block--ef6147b4-5c48-4bb5-a249-efadc198f426 block--ef6147b4-5c48-4bb5-a249-efadc198f426--5806 block block-nir-market-data-block block-market-data-block__stock-quote">
  
    
      <div class='quote-wrap user-toggle-off stock-quote__featured'>
  <div class="quote-wrapper">
                              <div class="stock_name"> Baidu, Inc () <span class="stock_source">-</span></div>
      <div class="stock_number"><span class="data-price"></span><span class=""></span></div>
      <div class="stock_time"></div>
      <div class="summery_wrap">
          <ul class="summery">

                  <li class="day_high">Day High<span class="detail_number"></span></li>
                  <li class="day_low">Day low<span class="detail_number"></span></li>
                  <li class="week_high">52-week High<span class="detail_number"></span></li>
                  <li class="day_high">52-week Low<span class="detail_number"></span></li>

          </ul>

      </div>
    </div>
</div>

  </div>
<div class="block-content--nir-lp-block block-content--nir-lp-block--9556 block--block-content8de0928e-745b-40cc-8bd4-b511929b1acf block--block-content8de0928e-745b-40cc-8bd4-b511929b1acf--5806 block--sidebar--block-content--8de0928e-745b-40cc-8bd4-b511929b1acf block--sidebar--block-content--8de0928e-745b-40cc-8bd4-b511929b1acf--5806 block--c3b88bb1-c26b-4f1c-bd37-bde02a1a47a9 block--c3b88bb1-c26b-4f1c-bd37-bde02a1a47a9--5806 block block-block-content block-block-content8de0928e-745b-40cc-8bd4-b511929b1acf">
  
    
      
            <div class="field field--name-field-nir-lp-block-node field--type-entity-reference field--label-hidden field__item">  
            <div class="clearfix text-formatted field field--name-field-nir-lp-block-body field--type-text-long field--label-hidden field__item"><a class="more_link" href="/stock-information/stock-quote">More stock Information</a></div>
      
</div>
      
  </div>


<nav role="navigation" aria-labelledby="-menu" class="block--system-menu-blocktools block--system-menu-blocktools--5806 block--sidebar--system-menu-block--tools block--sidebar--system-menu-block--tools--5806 block--eb5a5175-d931-4362-ac48-4efa56b9f036 block--eb5a5175-d931-4362-ac48-4efa56b9f036--5806 block block-menu navigation block-system-menublock menu--tools">
            
    <h2 id="-menu">Links</h2>
    

                              <ul data-block-uuid="eb5a5175-d931-4362-ac48-4efa56b9f036" class="menu side-menu">
                  <li class="side-menu__item">
          <a href="/shareholder-services/investor-faqs" target="" rel="" data-drupal-link-system-path="node/5941">Investor FAQs</a>
                  </li>
              <li class="side-menu__item">
          <a href="/shareholder-services/email-alerts" data-drupal-link-system-path="node/5946">Email Alerts</a>
                  </li>
              <li class="side-menu__item">
          <a href="/corporate-governance" target="" rel="" data-drupal-link-system-path="node/9461">Corporate Governance</a>
                  </li>
              <li class="side-menu__item">
          <a href="/stock-information/analyst-coverage" target="" rel="" data-drupal-link-system-path="node/5896">Analyst Coverage</a>
                  </li>
              <li class="side-menu__item">
          <a href="/contact-form" target="" rel="" data-drupal-link-system-path="node/9426">Contact Form</a>
                  </li>
          </ul>
  


    </nav>
</div>
        </div>
      </div>

    </div>
  </div>  
</div><!-- /.bartlett-flipped -->

  </div>
</article>

  </div>

  </div>

        </div>
    </div>
</div>
<div class="footer_wrapper">
    <div class="footer">
        <a href="/disclaimer" target="_blank">Disclaimer</a> |
        <a href="/baidu-statement-privacy-protection" target="_blank">Privacy</a> |
        <span>
            Copyright © 2019 Baidu, Inc. All Rights Reserved.
         </span>
    </div>
</div>

  </div>

    
          <script type="text/javascript">var s_CCSWebHostingAccount = "trcgclientweb2090 ";</script>
        <script type="application/json" data-drupal-selector="drupal-settings-json">{"path":{"baseUrl":"\/","scriptPath":null,"pathPrefix":"","currentPath":"node\/5806","currentPathIsAdmin":false,"isFront":true,"currentLanguage":"en"},"pluralDelimiter":"\u0003","ajaxPageState":{"libraries":"classy\/node,core\/drupal.collapse,core\/html5shiv,nir_base\/adobe_omniture,nir_base\/lib,nir_base\/nir_icons,nir_base\/nir_toolbar,nir_ckeditor_datatables\/datatables,nir_market_data_block\/nir_market_data_block.command,nir_market_data_block\/nir_market_data_block.stockQuote,nir_multimedia\/nir_multimedia,nir_pid2206\/override,nir_stock_chart\/nir_stock_chart.stockChartStyling,radix_layouts\/radix_layouts,system\/base,views\/views.module","theme":"nir_pid2206","theme_token":null},"ajaxTrustedUrl":{"\/investor-overview":true},"user":{"uid":0,"permissionsHash":"c9577c5df5cf1f6a6618739b5430121268b63830c2e7e854c38a5001146030a8"}}</script>
<script src="/sites/g/files/knoqqb24286/files/js/js_ZoJrqzuVMJh4IQWmHyzM2UwAQOebY6H7SdhV5jiJayg.js"></script>

    
  <script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"761e715901","applicationID":"35893545,24276188","transactionName":"ZlVXYRcAW0ZRW0QKX18fdFYRCFpbH2ddBkRQRFRSOhFUW1VUWRlVQ29FRwA+R1BeXFUR","queueTime":0,"applicationTime":636,"atts":"ShJUF18aSEg=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>
