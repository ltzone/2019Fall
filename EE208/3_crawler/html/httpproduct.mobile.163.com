<!DOCTYPE HTML>
<!--[if IE 6 ]> <html class="ne_ua_ie6 ne_ua_ielte8"> <![endif]-->
<!--[if IE 7 ]> <html class="ne_ua_ie7 ne_ua_ielte8"> <![endif]-->
<!--[if IE 8 ]> <html class="ne_ua_ie8 ne_ua_ielte8"> <![endif]-->
<!--[if IE 9 ]> <html class="ne_ua_ie9"> <![endif]-->
<!--[if (gte IE 10)|!(IE)]><!--> <html> <!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<meta name="model_url" content="http://mobile.163.com/special/index2016/" />
<title>�����ֻ� ��̬�ȵ��ֻ��Ż�</title>
<meta name="keywords" content="�ֻ�,4G�ֻ�,�����ֻ�,ƻ���ֻ�,�����ֻ�,�ֻ���ȫ,�ֻ���̳,ŵ�����ֻ�,iPhone,�ƶ�������,�ɴ����豸,4g����,�ֻ���Ƶ,���¿Ƽ�,��ҵͶ��." />
<meta name="description" content="�����ֻ� ��̬�ȵ��ֻ��Ż�,�����ֻ��ṩ���µ��ֻ�����,�ֻ�����,�ƶ�������,4G���硢�ֻ�Ӧ�ã��ɴ����豸���ֻ������������±���,�����ֻ������ֻ���ȫ,�ֻ���̳,�ֻ�����,�ֻ���Ƶ���ֻ�������ֻ������������Լ������ֻ�,ƻ���ֻ�,�����ֻ�,4G�ֻ�,�����ֻ��������ֻ���������Ϣ,ͬʱ�����ֻ���ע�й��ƶ������������¶���,�ƶ��ɴ����豸�ķ�չ���й�4G���綯��,�����ֻ� ���ʹ���" />
  <script type="text/javascript" _keep="true">
    var matchStr =window.location.href;
    var reURL = /^(https):\/\/.+$/;
    if(!reURL.test(matchStr)){
        window.location.href = "https://mobile.163.com/";
    }
</script>
<!-- �ֻ�UA��ת -->
<script type="text/javascript" data-type="touch/index">!function e(t,n,r){function o(c,a){if(!n[c]){if(!t[c]){var u="function"==typeof require&&require;if(!a&&u)return u(c,!0);if(i)return i(c,!0);var s=new Error("Cannot find module '"+c+"'");throw s.code="MODULE_NOT_FOUND",s}var f=n[c]={exports:{}};t[c][0].call(f.exports,function(e){var n=t[c][1][e];return o(n||e)},f,f.exports,e,t,n,r)}return n[c].exports}for(var i="function"==typeof require&&require,c=0;c<r.length;c++)o(r[c]);return o}({1:[function(e,t,n){var r=["play.163.com"];t.exports=r},{}],2:[function(e,t,n){var r=e("./pc2wap"),o={news:{c3g:"news",child:{shehui:{c3g:"society"},domestic:{c3g:"domestic"},world:{c3g:"international"},history:{c3g:"history"},air:{c3g:"air",up:1},photo:{surl:"https://3g.163.com/touch/photo/subchannel/news/#adaptation=pc",c3g:"photo"}}},ent:{c3g:"ent",child:{tv:{c3g:"television"},movie:{c3g:"movie"},star_news:{c3g:"star"},music:{c3g:"music"}}},sports:{c3g:"sports",child:{nba:{surl:"https://3g.163.com/touch/sport_sub.html?cid=nba&adaptation=pc",c3g:"nba"},cba:{surl:"https://3g.163.com/touch/sport_sub.html?cid=cba&adaptation=pc",c3g:"cba"}}},money:{c3g:"money",child:{stock:{c3g:"shares"},fund:{c3g:"fund"}}},biz:{under:"money",c3g:"commercial"},auto:{c3g:"auto"},war:{c3g:"war"},v:{c3g:"liveshow",child:{video:{c3g:"video"},zongyi:{c3g:"video",up:1}}},fashion:{c3g:"lady"},lady:{c3g:"lady"},dy:{c3g:"dy"},mobile:{c3g:"mobile",child:{Apple:{c3g:"ios"}}},tech:{c3g:"tech",child:{vr:{c3g:"vr"},techcolumn:{c3g:"nejudge"}}},digi:{c3g:"digi"},edu:{c3g:"edu",child:{liuxue:{c3g:"aboard"},yimin:{c3g:"migrant"},en:{c3g:"foreign"}}},jiankang:{c3g:"jiankang"},travel:{c3g:"travel"},baby:{c3g:"baby"},art:{c3g:"art"},blog:{c3g:"blog"},jiu:{c3g:"jiu"}};r(function(e,t,n,r){var i=/https?:\/\/(?:.*\.)?([a-z0-9]*)\.163\.com(\/\w+)?(\/$|\/\?.*|$|\?.*|#.*|\/#.*)/.exec(t);if(i){var c=i[1],a=i[2]?i[2].substring(1):void 0;if(o.hasOwnProperty(c)){var u=o[c],s=u.c3g,f=s;if(a&&u.hasOwnProperty("child")&&"object"==typeof u.child[a]){var l=u.child[a];if(l.surl)return l.surl;var h=l.c3g;f=s+"/subchannel/"+h,l.up&&(f=h)}return u.hasOwnProperty("under")&&(f=u.under+"/subchannel/"+s),"https://3g.163.com/touch/"+f+"/#adaptation=pc"+n+e}}return!1})},{"./pc2wap":3}],3:[function(e,t,n){var r=e("./utils"),o=function(e){if(!/noredirect/i.test(location.search)){var t=window.location.href,n=new r.URL(t),o=n.hostname;if(!r.blockedDomain(o)&&r.isMobile()){var i=n.search.length>0?n.search.substring(1):"",c=n.hash;i.length>0&&"&"!==i[0]&&(i="&"+i);var a=function(){var e=document.referrer;return e?"&refer="+encodeURIComponent(e):""}(),u=e&&e(a,t,i,c);u&&(window.location.href=u)}}};t.exports=o},{"./utils":4}],4:[function(e,t,n){var r=e("./domainBlocked.config"),o={URL:function(){var e,t=self.URL;try{t&&("href"in(e=new self.URL("http://3g.163.com"))||(e=void 0))}catch(e){console.log(e)}return function(n){if(e)return new t(n);var r=document.createElement("a");return r.href=n,r}}(),isMobile:function(e){return/android.*?mobile|ipod|blackberry|bb\d+|phone|WindowsWechat/i.test(e||navigator.userAgent)},isPAD:function(e){return/iPad/i.test(e||navigator.userAgent)},blockedDomain:function(e){return-1!=r.indexOf(e)}};t.exports=o},{"./domainBlocked.config":1}]},{},[2]);</script>
<!-- �����ʽ -->
<style>
.channel_relative_2016{
    position:relative;
    line-height: 0px;
}
.channel_relative_2016_lh{
    line-height: 0px;
}
.channel_ad_2016{
    height: 17px;
    display:none;
    background: rgba(0,0,0,0.6);
    background: #000\9;
    color: #fff;
    border-radius: 0 8px 0px 0px;
    line-height: 17px;
    width: 30px;
    text-align: left;
    overflow: hidden;
    font-size: 12px;
    font-family: Arial;
    position:absolute;
    left:0;
    bottom:0;
    z-index:3;
}
.channel_ad_text_2016{
    position: absolute;
    right: 1px;
    bottom: -2px;
    color: #999999;
    z-index:3;
    font-size: 12px;
    font-family: Arial;
   display:none;
  line-height: 18px;
}
.channel_relative_2016 .channel_ad_2016,.channel_relative_2016 .channel_ad_text_2016{
    display: inline-block;
}
</style>

<link href="https://static.ws.126.net/f2e/mobile/common2015/css/sitehead.EEskuzjUiYFt.12.css" rel="stylesheet" type="text/css" />
<style>
.ntes-nav-main{width:auto;height:100%}
.kaolaicon{background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png24.png);_background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png8.png);background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029.svg),none;background-position:0 0;background-repeat:no-repeat}
.boboicon{background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png24.png);_background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png8.png);background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029.svg),none;background-position:0 -23px;background-repeat:no-repeat}
.mailicon{background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png24.png);_background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png8.png);background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029.svg),none;background-position:0 -46px;background-repeat:no-repeat}
.moneyicon{background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png24.png);_background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png8.png);background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029.svg),none;background-position:0 -69px;background-repeat:no-repeat}
.carticon{background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png24.png);_background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png8.png);background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029.svg),none;background-position:0 -92px;background-repeat:no-repeat}
.huatianicon{background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png24.png);_background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png8.png);background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029.svg),none;background-position:0 -115px;background-repeat:no-repeat}
.mobileicon{background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png24.png);_background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png8.png);background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029.svg),none;background-position:0 -138px;background-repeat:no-repeat}
.loftericon{background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png24.png);_background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png8.png);background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029.svg),none;background-position:0 -162px;background-repeat:no-repeat}
.studyicon{background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png24.png);_background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png8.png);background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029.svg),none;background-position:0 -184px;background-repeat:no-repeat}
@keyframes movemenu{0%{background-position:-1px 7px}
100%{background-position:-301px 7px}
}
@keyframes menu{0%{width:24px}
45%{width:6px}
90%{width:24px}
100%{width:24px}
}
.ntes-nav{border-bottom:0;height:45px}
.ntes-nav .ntes_cnav_logo{margin-left:40px}
.ntes-nav-select-arr{position:absolute;z-index:10;right:7px;top:20px;font-size:0;height:5px;width:10px;line-height:0;border:0 none;background:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/nav_sprite_v42.png) 0 -704px no-repeat;_background:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/nav_sprite_ie6_v42.png) 0 -704px no-repeat}
.ntes-nav-logined{border-bottom:0 none;box-shadow:none}
.ntes-nav-select-pop,.ntes-nav-loginframe-pop{left:auto;right:0}
.ntes-nav-app .ntes-nav-select-pop{left:0;right:auto}
.ntes-nav-entry-kaola{width:54px;background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png24.png);_background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png8.png);background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029.svg),none;background-position:0 0;background-repeat:no-repeat}
.ntes-nav-entry-lofter{width:46px;background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png24.png);_background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png8.png);background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029.svg),none;background-position:0 -162px;background-repeat:no-repeat}
.ntes-nav-entry-study{background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png24.png);_background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png8.png);background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029.svg),none;background-position:0 -184px;background-repeat:no-repeat}
.ntes-nav-entry-bobo{width:54px;background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png24.png);_background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png8.png);background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029.svg),none;background-position:0 -23px;background-repeat:no-repeat}
.ntes-nav-entry-mail{background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png24.png);_background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png8.png);background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029.svg),none;background-position:0 -46px;background-repeat:no-repeat}
.ntes-nav-entry-money{background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png24.png);_background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png8.png);background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029.svg),none;background-position:0 -69px;background-repeat:no-repeat}
.ntes-nav-entry-cart{background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png24.png);_background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png8.png);background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029.svg),none;background-position:0 -92px;background-repeat:no-repeat}
.ntes-nav-entry-huatian{background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png24.png);_background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png8.png);background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029.svg),none;background-position:0 -115px;background-repeat:no-repeat;background-position:0 -114px;width:48px}
.ntes-nav-entry-mobile{background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png24.png);_background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029_png8.png);background-image:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/products_sprites20181029.svg),none;background-position:0 -138px;background-repeat:no-repeat}
.ntes-nav-inside{float:none;float:right;border:0 none}
.ntes-nav-inside .ntes-nav-select-title{border:0 none;border-left:1px solid #4d4d4d}
.ntes-nav-inside .ntes-nav-select-unfold .ntes-nav-select-title,.ntes-nav-inside .ntes-nav-entry:hover{border-left:1px solid #4d4d4d}
.ntes-nav-inside .ntes-nav-select-title-kaola{padding-left:13px;padding-right:24px}
.ntes-nav-inside .ntes-nav-select-title-lofter{padding-left:14px;padding-right:10px}
.ntes-nav-inside .ntes-nav-select-title-study{padding-left:11px;padding-right:13px}
.ntes-nav-inside .ntes-nav-select-title-bobo{padding-left:16px;padding-right:23px}
.ntes-nav-inside .ntes-nav-select-title-mail{padding-left:9px;padding-right:15px}
.ntes-nav-inside .ntes-nav-select-title-money{padding-left:11px;padding-right:14px}
.ntes-nav-inside .ntes-nav-select-title-cart{padding-left:8px;padding-right:17px}
.ntes-nav-inside .ntes-nav-select-title-huatian{padding-left:8px;padding-right:14px}
.ntes-nav-inside .ntes-nav-select-title-register .ntes-nav-select-arr{right:11px}
.ntes-nav-inside .ntes-nav-mobile-title{padding-left:13px;padding-right:14px;border:0 none;border-left:1px solid #4d4d4d}
.ntes-nav-login-normal{background:#d60000;border-color:#d60000;-webkit-box-shadow:none;-moz-box-shadow:none;box-shadow:none}
.ntes-nav-login-active{background:#f70e0e;border-color:#f70e0e}
.ntes-nav-login-normal,.ntes-nav-login-active{border-bottom:5px solid #d60000;box-shadow:none}
.ntes-nav-login{width:70px;height:43px}
.ntes-nav-login-scroll{background:0;border-bottom:0}
.ntes-nav-login-active{border-color:#f70e0e;background:#f70e0e}
.ntes-nav-login-title{width:70px}
.ntes-nav-select-wide .ntes-nav-select-title{padding:0 23px 0 10px}
.ntes-nav-select-wide .ntes-nav-select-arr{right:11px}
.ntes-nav-logined{padding:0;border-right:1px solid #444;background:0;height:43px}
.ntes-nav-logined-userinfo{padding:0 26px 0 11px;border-left:1px solid #4d4d4d}
.ntes-nav-logined-username{max-width:70px;width:70px;height:40px}
.ntes-nav-entry-wide{padding:0 12px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-nav .ntes_cnav_logo{margin-left:0}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-nav-main{width:1024px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-nav-index-title{padding:0}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-nav-quick-navigation{margin-right:0}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-content{width:1024px;margin:0 auto;overflow:hidden}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column{float:left;width:95px;border-right:1px solid #f6f6f6}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column li{font:12px/30px "Sim sun"}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column li a,.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column li span{color:#333}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column li h3{margin-bottom:8px;font:16px/30px "Microsoft Yahei"}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column li h3 a{color:#404040}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column li h3 a:hover{color:#f33;text-decoration:none}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column li a:hover{color:#f33;text-decoration:underline}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-1{width:88px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-1 li{padding-left:24px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-2{width:94px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-2 li{padding-left:29px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-3{width:94px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-3 li{padding-left:33px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-4{width:95px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-4 li{padding-left:33px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-5{width:96px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-5 li{padding-left:29px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-6{width:94px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-6 li{padding-left:20px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-7{width:94px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-7 li{padding-left:32px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-8{width:95px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-8 li{padding-left:12px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-9{width:94px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-9 li{padding-left:14px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-10{width:95px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-10 li{padding-left:33px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-11{width:75px;border-right:0}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-quicknav-column.ntes-quicknav-column-11 li{padding-left:23px}
.ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-nav-sitemap a i{margin-right:14px}
.ntes_nav_wrap .ntes-nav-index-title{padding:0 6px 0 40px}
.ntes_nav_wrap .ntes-nav-quick-navigation{width:68px;float:right;border-left:1px solid #444;margin-right:40px}
.ntes_nav_wrap .ntes-nav-quick-navigation a.ntes-nav-quick-navigation-btn{display:block;height:43px}
.ntes_nav_wrap .ntes-nav-quick-navigation a.ntes-nav-quick-navigation-btn:hover{background:#1e1e1e}
.ntes_nav_wrap .ntes-nav-quick-navigation a.ntes-nav-quick-navigation-btn:hover .menu1{-webkit-transform:translate(0,-2px);-ms-transform:translate(0,-2px);-o-transform:translate(0,-2px);transform:translate(0,-2px)}
.ntes_nav_wrap .ntes-nav-quick-navigation a.ntes-nav-quick-navigation-btn:hover .menu3{-webkit-transform:translate(0,2px);-ms-transform:translate(0,2px);-o-transform:translate(0,2px);transform:translate(0,2px)}
.ntes_nav_wrap .ntes-nav-quick-navigation em{display:block;text-indent:-999em;overflow:hidden;width:28px;height:44px;line-height:0;margin-left:20px}
.ntes_nav_wrap .ntes-nav-quick-navigation .ntes-nav-quick-navigation-btn span{display:block;float:right;clear:both;width:24px;height:2px;background:#efefef}
.ntes_nav_wrap .ntes-nav-quick-navigation span.menu1{margin:13px 2px 0;-webkit-transition:-webkit-transform .4s;-o-transition:-o-transform .4s;transition:transform .4s}
.ntes_nav_wrap .ntes-nav-quick-navigation span.menu2{margin:6px 2px 0}
.ntes_nav_wrap .ntes-nav-quick-navigation span.menu3{margin:6px 2px 0;-webkit-transition:-webkit-transform .4s;-o-transition:-o-transform .4s;transition:transform .4s}
.ntes_nav_wrap .ntes-nav-quick-navigation .ntes-nav-quick-navigation-active,.ntes_nav_wrap .ntes-nav-quick-navigation .ntes-nav-quick-navigation-active:hover{background:#1e1e1e}
.ntes_nav_wrap .ntes-nav-quick-navigation .ntes-nav-quick-navigation-active em,.ntes_nav_wrap .ntes-nav-quick-navigation .ntes-nav-quick-navigation-active:hover em{background:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/menu.png) -1px 7px no-repeat;background:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/menu.png) -300px 7px no-repeat\0;background:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/menu.png) -300px 7px no-repeat\9}
.ntes_nav_wrap .ntes-nav-quick-navigation .ntes-nav-quick-navigation-active em span,.ntes_nav_wrap .ntes-nav-quick-navigation .ntes-nav-quick-navigation-active:hover em span{opacity:0;display:none\9}
.ntes_nav_wrap .ntes-nav-quick-navigation .ntes-nav-quick-navigation-active em{-moz-animation:movemenu 300ms steps(10) forwards;-webkit-animation:movemenu 300ms steps(10) forwards;animation:movemenu 300ms steps(10) forwards}
.ntes_nav_wrap .ntes-nav-quick-navigation .ntes-nav-quick-navigation-init .menu1{-moz-animation:menu 800ms ease 0s 2;-webkit-animation:menu 800ms ease 0s 2;animation:menu 800ms ease 0s 2}
.ntes_nav_wrap .ntes-nav-quick-navigation .ntes-nav-quick-navigation-init .menu2{-moz-animation:menu 800ms ease .16s 2;-webkit-animation:menu 800ms ease .16s 2;animation:menu 800ms ease .16s 2}
.ntes_nav_wrap .ntes-nav-quick-navigation .ntes-nav-quick-navigation-init .menu3{-moz-animation:menu 800ms ease .32s 2;-webkit-animation:menu 800ms ease .32s 2;animation:menu 800ms ease .32s 2}
.ntes_nav_wrap .ntes-quicknav-pop{display:block;display:none;position:fixed;left:0;right:0;top:43px;-moz-box-shadow:0 0 2px 3px rgba(4,0,0,0.08);-webkit-box-shadow:0 0 2px 3px rgba(4,0,0,0.08);box-shadow:0 0 2px 3px rgba(4,0,0,0.08)}
.ntes_nav_wrap .ntes-quicknav-list{padding-top:22px;border-bottom:1px solid #cdcdcd;border-left:1px solid #cdcdcd;background:#fff}
.ntes_nav_wrap .ntes-quicknav-content{width:1200px;margin:0 auto;overflow:hidden}
.ntes_nav_wrap .ntes-quicknav-column{float:left;width:107px;border-right:1px solid #f6f6f6}
.ntes_nav_wrap .ntes-quicknav-column li{font:12px/30px "Sim sun"}
.ntes_nav_wrap .ntes-quicknav-column li a,.ntes_nav_wrap .ntes-quicknav-column li span{color:#333}
.ntes_nav_wrap .ntes-quicknav-column li h3{margin-bottom:8px;font:16px/30px "Microsoft Yahei"}
.ntes_nav_wrap .ntes-quicknav-column li h3 a{color:#404040}
.ntes_nav_wrap .ntes-quicknav-column li h3 a:hover{color:#f33;text-decoration:none}
.ntes_nav_wrap .ntes-quicknav-column li a:hover{color:#f33;text-decoration:underline}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-1{width:98px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-1 li{padding-left:33px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-2{width:110px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-2 li{padding-left:37px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-3{width:110px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-3 li{padding-left:40px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-4{width:110px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-4 li{padding-left:41px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-5{width:109px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-5 li{padding-left:40px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-6{width:109px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-6 li{padding-left:35px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-7{width:109px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-7 li{padding-left:39px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-8{width:109px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-8 li{padding-left:18px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-9{width:109px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-9 li{padding-left:18px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-10{width:109px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-10 li{padding-left:40px}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-11{width:108px;border-right:0}
.ntes_nav_wrap .ntes-quicknav-column.ntes-quicknav-column-11 li{padding-left:35px}
.ntes_nav_wrap .ntes-nav-sitemap{clear:both;padding-top:17px;padding-bottom:27px;overflow:hidden;font:12px/20px "Sim sun"}
.ntes_nav_wrap .ntes-nav-sitemap a{float:right;color:#333;text-align:right}
.ntes_nav_wrap .ntes-nav-sitemap a i{float:right;width:15px;height:15px;margin:2px 0 0 4px;background:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/nav_sprite_v42.png) 0 -689px no-repeat;_background:url(https://static.ws.126.net/f2e/modules/ne2015/common-nav/images/nav_sprite_ie6_v42.png) 0 -689px no-repeat}
.ntes_nav_wrap .ntes-nav-sitemap a:hover,.ntes_nav_wrap .ntes-nav-sitemap a:visited{color:#333}
.ua-ios .ntes-nav-quick-navigation{display:none}
.ua-ios .ntes_nav_wrap.ntes-nav-wrap-resize1024 .ntes-nav-main{width:944px}
.ua-ios .ntes-nav-entry-huatian{background-position:0 -114px}
</style>
<script _keep="true" src="https://urswebzj.nosdn.127.net/webzj_cdn101/message.js" type="text/javascript"></script>
<script>if((/_touchall=1/.test(location.search)||!/auto|house|home|bbs|blog/.test(location.host))&&!/\/dy.163.com\/v2/.test(location.href)&&!(document.documentElement&&document.documentElement.getAttribute("phone"))&&!/163.com\/keywords\//.test(location.href)&&/163\.com/.test(location.host)&&!/_pc=1/.test(location.search)&&/android.*?mobile|ipod|blackberry|bb\d+|phone/i.test(navigator.userAgent))document.write('<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"/><div style="position:fixed;width:100%;height:100%;background:#fff"><div style="position:absolute;top:50%;left:0;width:100%;height:40px;margin-top:-40px;text-align:center;background:url(//static.ws.126.net/utf8/endpage/image/loading.gif) no-repeat top center;padding-top:40px;color:#666">ҳ������� ...</div></div><script src="//static.ws.126.net/f2e/system/touchall/collect/foot~M2Tn9VR49xqt.js"'+' defer><'+'/script><plaintext style="display:none">');</script>
<script>
if(/https:.*\.163.com\/keywords\//.test(window.location.href)){
	window.location.href = window.location.href.replace("https://","http://")
}
</script>
<script _keep="true" type="text/javascript" src="//static.ws.126.net/cnews/js/ntes_jslib_1.x.js" charset="gb2312"></script>
<script _keep="true" type="text/javascript" src="//static.ws.126.net/cnews/img/nvt10/nvt_widgets_2.0.js" charset="gb2312"></script>
<!-- ��Ϣ���ӿ� -->
<script _keep="true" type="text/javascript">
    window.getNewsData = '//mobile.163.com/special/index_datalist{{pageno}}/?callback={{callbackName}}';
    window.getAdDetail = '//mobile.163.com/special/001168I2/stream_mobile.js?callback={{callbackName}}';
</script>
<!-- channel2019_logo��ʽ -->
<style type="text/css">
	.channel2019_logo{
		background: url(http://cms-bucket.ws.126.net/2019/04/25/09e37a6a4dd349468cd38dd79a3b15b7.png) no-repeat !important;
		width: 152px !important;
		height: 37px !important;
		display: block !important;
		float: left!important;
	}
	/*����*/
	.channel2019_news_logo{
		background-position: 0px 4px !important;
	}
	/*�Ƽ�*/
	.channel2019_tech_logo{
		background-position: 0px -96px !important;
    	
	}
	/*�ֻ�*/
	.channel2019_mobile_logo{
		background-position: 0px -196px !important;
		
	}
	/*����*/
	.channel2019_digi_logo{
		background-position: 0px -296px !important;
    	
	}
	/*����ѧԺ*/
	.channel2019_college_logo{
		background-position: 0px -396px !important;
		width: 213px !important;
	}
	/*����*/
	.channel2019_gov_logo{
		background-position: 0px -496px !important;
	}
	/*����*/
	.channel2019_war_logo{
		background-position: 0px 0px !important;
    	height: 33px !important;
	}
	/*����*/
	.channel2019_air_logo{
		background-position: 0px 0px !important;
    	height: 33px !important;
	}
   /*�������а�*/
	.channel2019_newsrank_logo{
		background-position: 0px 0px !important;
    	height: 33px !important;
	}
  	/*����ͼƬ*/
	.channel2019_newsphoto_logo{
		background-position: 0px -2200px !important;
      	width: 213px !important;
    	height: 33px !important;
	}
	/*����*/
	.channel2019_sports_logo{
		background-position: 0px -796px !important;
	}
  	/*��������ҳ*/
	.channel2019_sportssub_logo{
		height: 33px !important;
		background-position: 0px -800px !important;
	}
	/*����*/
	.channel2019_ent_logo{
		background-position: 0px -896px !important;
	}
	/*����*/
	.channel2019_music_logo{
		background-position: 0px -900px !important;
    	height: 32px !important;
	}
	/*ʱ��*/
	.channel2019_fashion_logo{
		background-position: 0px -1100px !important;
		height: 32px !important;
	}
	/*Ů��*/
	.channel2019_lady_logo{
		background-position: 0px -1196px !important;
	}
	/*�ƾ�*/
	.channel2019_money_logo{
		background-position: 0px -1300px !important;
	}
    /*�ֻ�ͼƬ*/
	.channel2019_mobilephoto_logo{
		background-position: 0px -2300px !important;
		width: 213px !important;
    	height: 33px !important;
	}
	/*����*/
	.channel2019_auto_logo{
		background-position: 0px -1396px !important;
	}
	/*����*/
	.channel2019_travel_logo{
		background-position: 0px -1496px !important;
	}
	/*����*/
	.channel2019_jiankang_logo{
		background-position: 0px -1596px !important;
	}
	/*����*/
	.channel2019_edu_logo{
		background-position: 0px -1696px !important;
	}
	/*����*/
	.channel2019_art_logo{
		background-position: 0px -1796px !important;
	}
	/*����*/
	.channel2019_baby_logo{
		background-position: 0px -1896px !important;
	}
	/*˫��*/
	.channel2019_shuangchuang_logo{
		background-position: 0px -1996px !important;
	}
	/*����*/
	.channel2019_jiu_logo{
		background-position: 0px -2096px !important;
	}
  	/*��Ϸ*/
	.channel2019_game_logo{
		background-position: 0px -2400px !important;
	}
	</style>
<base target="_blank" />
    <link rel="stylesheet" href="https://static.ws.126.net/163/f2e/mobile/index2016/css/head~c7de94a446885.css">
</head>
<body>
<div class="index2016_wrap">
    <!-- ��������ͷ -->
    <link rel="stylesheet" href="//static.ws.126.net/163/f2e/commonnav2019/css/commonnav_headcss-0f01013b0e.css"/>
<!-- urs -->
<script _keep="true" src="https://urswebzj.nosdn.127.net/webzj_cdn101/message.js" type="text/javascript"></script>
<div class="ntes_nav_wrap" id="js_N_NTES_wrap">
  <div class="ntes-nav" id="js_N_nav">
    <div class="ntes-nav-main clearfix">
            <div class="c-fl">
        <a class="ntes-nav-index-title ntes-nav-entry-wide c-fl" href="http://www.163.com/" title="������ҳ">������ҳ</a>
        <!-- Ӧ�� -->
        <div class="js_N_navSelect ntes-nav-select ntes-nav-select-wide ntes-nav-app  c-fl">
          <a href="http://www.163.com/#f=topnav" class="ntes-nav-select-title ntes-nav-entry-bgblack JS_NTES_LOG_FE">Ӧ��
            <em class="ntes-nav-select-arr"></em>
          </a>
          <div class="ntes-nav-select-pop">
            <ul class="ntes-nav-select-list clearfix">
              <li>
                <a href="http://m.163.com/newsapp/#f=topnav">
                  <span>
                    <em class="ntes-nav-app-newsapp">��������</em>
                  </span>
                </a>
              </li>
              <li>
                <a href="http://open.163.com/#f=topnav">
                  <span>
                    <em class="ntes-nav-app-open">���׹�����</em>
                  </span>
                </a>
              </li>
              <li>
                <a href="https://hongcai.163.com/?from=pcsy-button">
                  <span>
                    <em class="ntes-nav-app-hongcai">���׺��</em>
                  </span>
                </a>
              </li>              
              <li>
                <a href="https://gulu.163.com">
                  <span>
                    <em class="ntes-nav-app-gulu-video">�������Ƶ</em>
                  </span>
                </a>
              </li>
              <li>
                <a href="http://u.163.com/aosoutbdbd8">
                  <span>
                    <em class="ntes-nav-app-yanxuan">������ѡ</em>
                  </span>
                </a>
              </li>
              <li>
                <a href="http://mail.163.com/client/dl.html?from=mail46">
                  <span>
                    <em class="ntes-nav-app-mail">�����ʦ</em>
                  </span>
                </a>
              </li>
              <li>
                <a href="http://study.163.com/client/download.htm?from=163app&utm_source=163.com&utm_medium=web_app&utm_campaign=business">
                  <span>
                    <em class="ntes-nav-app-study">�����ƿ���</em>
                  </span>
                </a>
              </li>
              <li class="last">
                <a href="http://da.kaola.com/redirect?t=5aaebece47f92c00&p=c901ea7c&proId=1024&code=6b69bfbfac0db5f335232faa957a27bb&target=https%3A%2F%2Fapp.kaola.com%2F%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                  <span>
                    <em class="ntes-nav-app-kaola-hg">���׿���</em>
                  </span>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="c-fr">
        <!-- Ƭ�ο�ʼ -->
        <div class="ntes-nav-quick-navigation">
          <a href="javascript:void(0);" class="ntes-nav-quick-navigation-btn" id="js_N_ntes_nav_quick_navigation_btn" target="_self">
            <em>���ٵ���
              <span class="menu1"></span>
              <span class="menu2"></span>
              <span class="menu3"></span>
            </em>
          </a>
          <div class="ntes-quicknav-pop" id="js_N_ntes_quicknav_pop">
            <div class="ntes-quicknav-list">
              <div class="ntes-quicknav-content">
                <ul class="ntes-quicknav-column ntes-quicknav-column-1">
                  <li>
                  <h3><a href="https://news.163.com">����</a></h3>
                  </li>
                  <li>
                  <a href="http://news.163.com/domestic">����</a>
                  </li>
                  <li>
                  <a href="http://news.163.com/world">����</a>
                  </li>
                  <li>
                  <a href="http://news.163.com/photo">ͼƬ</a>
                  </li>
                  <li>
                  <a href="http://view.163.com">����</a>
                  </li>
                  <li>
                  <a href="http://discovery.163.com">̽��</a>
                  </li>
                  <li>
                  <a href="http://war.163.com">����</a>
                  </li>
                  <li>
                  <a href="http://news.163.com/localnews/">��������</a>
                  </li>
                  <li>
                  <a href="http://news.163.com/special/wangsansanhome/">������</a>
                  </li>
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-2">
                  <li>
                  <h3><a href="http://sports.163.com">����</a></h3>
                  </li>
                  <li>
                  <a href="http://sports.163.com/nba">NBA</a>
                  </li>
                  <li>
                  <a href="http://sports.163.com/cba">CBA</a>
                  </li>
                  <li>
                  <a href="http://sports.163.com/allsports">�ۺ�</a>
                  </li>
                  <li>
                  <a href="http://sports.163.com/zc">�г�</a>
                  </li>
                  <li>
                  <a href="http://sports.163.com/world">��������</a>
                  </li>
                  <li>
                  <a href="http://sports.163.com/yc">Ӣ��</a>
                  </li>
                  <li>
                  <a href="http://sports.163.com/xj">����</a>
                  </li>
                  <li>
                  <a href="http://sports.163.com/yj">���</a>
                  </li>
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-3">
                  <li>
                  <h3><a href="http://ent.163.com">����</a></h3>
                  </li>
                  <li>
                  <a href="http://ent.163.com/star">����</a>
                  </li>
                  <li>
                  <a href="http://ent.163.com/photo">ͼƬ</a>
                  </li>
                  <li>
                  <a href="http://ent.163.com/movie">��Ӱ</a>
                  </li>
                  <li>
                  <a href="http://ent.163.com/tv">����</a>
                  </li>
                  <li>
                  <a href="http://ent.163.com/music">����</a>
                  </li>
                  <li>
                  <a href="http://ent.163.com/special/gsbjb/">���±༭��</a>
                  </li>
                  <li>
                  <a href="http://ent.163.com/special/focus_ent/">����FOCUS</a>
                  </li>
                  <li><a href="http://ent.163.com/special/xbkhz/">�ǲ���</a></li> 
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-4">
                  <li>
                  <h3><a href="http://money.163.com">�ƾ�</a></h3>
                  </li>
                  <li>
                  <a href="http://money.163.com/stock">��Ʊ</a>
                  </li>
                  <li>
                  <a href="http://quotes.money.163.com/stock">����</a>
                  </li>
                  <li>
                  <a href="http://money.163.com/chanjing">����</a>
                  </li>
                  <li>
                  <a href="http://money.163.com/ipo">�¹�</a>
                  </li>
                  <li>
                  <a href="http://money.163.com/finance">����</a>
                  </li>
                  <li>
                  <a href="http://money.163.com/fund">����</a>
                  </li>
                  <li>
                  <a href="http://biz.163.com">��ҵ</a>
                  </li>
                  <li>
                  <a href="http://money.163.com/licai">���</a>
                  </li>
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-5">
                  <li>
                  <h3><a href="http://auto.163.com">����</a></h3>
                  </li>
                  <li>
                  <a href="http://auto.163.com/buy">����</a>
                  </li>
                  <li>
                  <a href="http://auto.163.com/depreciate">����</a>
                  </li>
                  <li>
                  <a href="http://product.auto.163.com/finder">ѡ��</a>
                  </li>
                  <li>
                  <a href="http://product.auto.163.com">���Ϳ�</a>
                  </li>
                  <li>
                  <a href="http://auto.163.com/news">��ҵ</a>
                  </li>
                  <li>
                  <a href="http://auto.163.com/chezhu">�ó�</a>
                  </li>
                  <li>
                  <a href="http://auto.163.com/photo">����ͼƬ</a>
                  </li>
                  <li>
                  &nbsp;
                  </li>
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-6">
                  <li>
                  <h3><a href="http://tech.163.com">�Ƽ�</a></h3>
                  </li>
                  <li>
                  <a href="http://tech.163.com/telecom/">ͨ��</a>
                  </li>
                  <li>
                  <a href="http://tech.163.com/it">IT</a>
                  </li>
                  <li>
                  <a href="http://tech.163.com/internet">������</a>
                  </li>
                  <li>
                  <a href="http://tech.163.com/special/ydhlw">�ƶ�������</a>
                  </li>
                  <li>
                  <a href="http://tech.163.com/special/chzt">�ر�߻�</a>
                  </li>
                  <li>
                  <a href="http://tech.163.com/special/wudaokou">�����ɳ��</a>
                  </li>
                  <li>
                  <a href="http://tech.163.com/special/yyzd">�����е�</a>
                  </li>
                  <li>
                  <a href="http://tech.163.com/special">ר��</a>
                  </li>
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-7">
                  <li>
                  <h3><a href="http://lady.163.com">Ů��</a></h3>
                  </li>
                  <li>
                  <a href="http://baby.163.com">����</a>
                  </li>
                  <li>
                  <a href="http://fashion.163.com/art">����</a>
                  </li>
                  <li>
                  <a href="http://fashion.163.com">ʱ��</a>
                  </li>
                  <li>
                  <a href="http://shoucang.163.com">�ղ�</a>
                  </li>
                  <li>
                  <a href="http://lady.163.com/sense">���</a>
                  </li>
                  <li>
                  <a href="http://lady.163.com/astro">����</a>
                  </li>
                  <li>
                  <a href="http://lady.163.com/beauty">����</a>
                  </li>
                  <li>
                  <a href="http://cosmetic.lady.163.com/trial">�������</a>
                  </li>
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-8">
                  <li>
                  <h3><a href="http://mobile.163.com">�ֻ�</a><span>/</span><a href="http://digi.163.com/">����</a></h3>
                  </li>
                  <li>
                  <a href="http://mobile.163.com/mi">�ƶ�</a>
                  </li>
                  <li>
                  <a href="http://digi.163.com/pc">����</a>
                  </li>
                  <li>
                  <a href="http://product.mobile.163.com">�ֻ���</a>
                  </li>
                  <li>
                  <a href="http://hea.163.com/">�ҵ�</a>
                  </li>
                  <li>
                  <a href="http://digi.163.com/smart">����Ӳ��</a>
                  </li>
                  <li>
                  <a href="http://digi.163.com/dc">���</a>
                  </li>
                  <li>
                  <a href="http://v.mobile.163.com">�ֻ���Ƶ</a>
                  </li>
                  <li>
                  &nbsp;
                  </li>
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-9">
                  <li>
                  <h3><a href="http://house.163.com">����</a><span>/</span><a href="http://home.163.com">�Ҿ�</a></h3>
                  </li>
                  <li>
                  <a href="http://bj.house.163.com">��������</a>
                  </li>
                  <li>
                  <a href="http://sh.house.163.com">�Ϻ�����</a>
                  </li>
                  <li>
                  <a href="http://gz.house.163.com">���ݷ���</a>
                  </li>
                  <li>
                  <a href="http://house.163.com/city">ȫ����վ</a>
                  </li>
                  <li>
                  <a href="http://xf.house.163.com">¥�̿�</a>
                  </li>
                  <li>
                  <a href="http://home.163.com/jiaju/">�Ҿ�</a>
                  </li>
                  <li>
                  <a href="http://home.163.com/weiyu/">��ԡ</a>
                  </li>
                  <li>
                  <a href="http://home.163.com/special/jiajuyigui">�¹�</a>
                  </li>
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-10">
                  <li>
                  <h3><a href="http://travel.163.com">����</a></h3>
                  </li>
                  <li>
                  <a href="http://travel.163.com/outdoor">����</a>
                  </li>
                  <li>
                  <a href="http://guizhou.travel.163.com">����</a>
                  </li>
                  <li>
                  <a href="http://travel.163.com/food">��ʳ</a>
                  </li>
                  <li>
                  <a href="http://jingdian.travel.163.com/domestic/1000066937">�Ĵ�</a>
                  </li>
                  <li>
                  <a href="http://jingdian.travel.163.com">����</a>
                  </li>
                  <li>
                  <a href="http://jingdian.travel.163.com/domestic/1000066944">�½�</a>
                  </li>
                  <li>
                  <a href="http://travel.163.com/special/travellist/#f=endnav">ר��</a>
                  </li>
                  <li>
                  <a href="http://jingdian.travel.163.com/domestic/1000066926/#f=endnav">����</a>
                  </li>
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-11">
                  <li>
                  <h3><a href="http://edu.163.com">����</a></h3>
                  </li>
                  <li>
                  <a href="http://edu.163.com/yimin">����</a>
                  </li>
                  <li>
                  <a href="http://edu.163.com/kaoyan">����</a>
                  </li>
                  <li>
                  <a href="http://edu.163.com/liuxue">��ѧ</a>
                  </li>
                  <li>
                  <a href="http://edu.163.com/special/official">����Ա</a>
                  </li>
                  <li>
                  <a href="http://edu.163.com/en">����</a>
                  </li>
                  <li>
                  <a href="http://kids.163.com">��Сѧ</a>
                  </li>
                  <li>
                  <a href="http://edu.163.com/gaokao">�߿�</a>
                  </li>
                  <li>
                  <a href="http://daxue.163.com">У԰</a>
                  </li>
                </ul>
                <div class="ntes-nav-sitemap"><a href="http://sitemap.163.com/"><i></i>�鿴���׵�ͼ</a></div>
              </div>
            </div>
          </div>
        </div>
        <div class="c-fr">
          <div class="c-fl" id="js_N_navLoginBefore">
            <div id="js_N_navHighlight" class="js_loginframe ntes-nav-login ntes-nav-login-normal">
              <a href="http://reg.163.com/" class="ntes-nav-login-title" id="js_N_nav_login_title">��¼</a>
              <div class="ntes-nav-loginframe-pop" id="js_N_login_wrap">
                <!--���ص�½���-->
              </div>
            </div>
            <div class="js_N_navSelect ntes-nav-select ntes-nav-select-wide  JS_NTES_LOG_FE c-fl">
              <a class="ntes-nav-select-title ntes-nav-select-title-register" href="http://reg.email.163.com/mailregAll/reg0.jsp?from=163navi&regPage=163">ע���������
                <em class="ntes-nav-select-arr"></em>
              </a>
              <div class="ntes-nav-select-pop">
                <ul class="ntes-nav-select-list clearfix" style="width:210px;">
                  <li>
                    <a href="http://reg.vip.163.com/register.m?from=topnav">
                      <span style="width:190px;">ע��VIP���䣨��Ȩ���䣬���ѣ�</span>
                    </a>
                  </li>
                  <li class="last JS_NTES_LOG_FE">
                    <a href="http://mail.163.com/client/dl.html?from=mail46">
                      <span style="width:190px;">����������׹ٷ��ֻ�����Ӧ��</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="c-fl" id="js_N_navLoginAfter" style="display:none">
            <div id="js_N_logined_warp" class="js_N_navSelect ntes-nav-select ntes-nav-logined JS_NTES_LOG_FE">
              <span class="ntes-nav-select-title ntes-nav-logined-userinfo">
                <span id="js_N_navUsername" class="ntes-nav-logined-username"></span>
                <em class="ntes-nav-select-arr"></em>
              </span>
              <div id="js_login_suggest_wrap" class="ntes-nav-select-pop">
                <ul id="js_logined_suggest" class="ntes-nav-select-list clearfix"></ul>
              </div>
            </div>
            <a class="ntes-nav-entry-wide c-fl" target="_self" id="js_N_navLogout">��ȫ�˳�</a>
          </div>
        </div>
        <ul class="ntes-nav-inside">
          <li>
            <div class="js_N_navSelect ntes-nav-select c-fl">
              <a href="http://www.163.com/newsapp/#f=163nav" class="ntes-nav-mobile-title ntes-nav-entry-bgblack">
                <em class="ntes-nav-entry-mobile">�ƶ���</em>
              </a>
              <div class="qrcode-img">
                <a href="http://www.163.com/newsapp/#f=163nav">
                  <img src="//static.ws.126.net/f2e/include/common_nav/images/topapp.jpg">
                </a>
              </div>
            </div>
          </li>
          <li>
            <div class="js_N_navSelect ntes-nav-select c-fl">
              <a id="js_love_url" href="https://open.163.com/" class="ntes-nav-select-title ntes-nav-select-title-huatian ntes-nav-entry-bgblack">
                <em class="ntes-nav-entry-huatian">���׹�����</em>
                <em class="ntes-nav-select-arr"></em>
                <span class="ntes-nav-msg">
                  <em class="ntes-nav-msg-num"></em>
                </span>
              </a>
              <div class="ntes-nav-select-pop ntes-nav-select-pop-huatian">
                <ul class="ntes-nav-select-list clearfix">
                  <li>
                    <a href="https://vip.open.163.com">
                      <span>���Ѿ�Ʒ</span>
                    </a>
                  </li>
                  <li>
                    <a href="https://open.163.com/ted/">
                      <span>TED</span>
                    </a>
                  </li>
                  <li>
                    <a href="https://open.163.com/ocw/">
                      <span>������У������</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://open.163.com/cuvocw/">
                      <span>�й���ѧ��Ƶ������</span>
                    </a>
                  </li>
                  <li>
                    <a href="https://open.163.com/appreciation">
                      <span>�Ϳ�</span>
                    </a>
                  </li>
                  <li>
                    <a href="https://open.163.com/khan/">
                      <span>�ɺ�ѧԺ</span>
                    </a>
                  </li>
                  <li class="last">
                    <a href="http://open.163.com/special/appdownload_pc/">
                      <span>���ع�����</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </li>
          <li>
            <div class="js_N_navSelect ntes-nav-select c-fl">
              <a id="js_kaola_url" href="http://da.kaola.com/redirect?t=5aaebece48792c00&p=c901ea7c&proId=1024&code=d638f275b1755320e845734e53e897ee&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Fjfccri80pages1.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505"
                class="ntes-nav-select-title ntes-nav-select-title-kaola ntes-nav-entry-bgblack">
                <em class="ntes-nav-entry-kaola">���׿���</em>
                <em class="ntes-nav-select-arr"></em>
                <span class="ntes-nav-msg ntes-nav-kaola-msg" id="js_N_navKaolaMsg">
                  <em class="ntes-nav-msg-num"></em>
                </span>
              </a>
              <div class="ntes-nav-select-pop ntes-nav-select-pop-kaola">
                <ul class="ntes-nav-select-list clearfix">
                  <li>
                    <a href="http://da.kaola.com/redirect?t=5aaebece48f92c00&p=c901ea7c&proId=1024&code=b3e224752b2cad85e9831e8c6cf7fbbd&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Fbimaibangdan.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>1000Ԫ���˴����</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://da.kaola.com/redirect?t=5aaebece49392c00&p=c901ea7c&proId=1024&code=fd8e43f4a20a26fbe60f7e7de1f17efe&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Fjfccri80pages1.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>����ר����ںû�</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://da.kaola.com/redirect?t=5aaebece49392c01&p=c901ea7c&proId=1024&code=21bcd5b595fc235cfd11e3e1cff14177&target=https%3A%2F%2Factivity.kaola.com%2Factivity%2FflashSaleIndex%2Fshow.html%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>������ʱ����</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://da.kaola.com/redirect?t=5aaebece49792c00&p=c901ea7c&proId=1024&code=ecc40777cb2d68a3d9fb078b232f081d&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Fjfyrzolcpagerz.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>Ӫ������</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://da.kaola.com/redirect?t=5aaebece49b92c00&p=c901ea7c&proId=1024&code=0cdd5a920c768340ffc12eccd659341d&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Fnewpc.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>����ϴ��</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://da.kaola.com/redirect?t=5aaebece4a392c00&p=c901ea7c&proId=1024&code=ee49a3a793f22e648ac616f5dab061dd&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Fjpwmb9zcpagesl.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>���ݲ�ױ</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://da.kaola.com/redirect?t=5aaebece4a792c00&p=c901ea7c&proId=1024&code=6eb2598fd20963efc203a4e3fe88f4e2&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Fmyxrq.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>ĸӤ��ͯ</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://da.kaola.com/redirect?t=5aaebece4ab92c00&p=c901ea7c&proId=1024&code=3946ce460ba655c11afac69855dfc02b&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Ffoodnewcustomers.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>������ʳ</span>
                    </a>
                  </li>
                  <li class="last">
                    <a href="http://da.kaola.com/redirect?t=5aaebece4af92c00&p=c901ea7c&proId=1024&code=2eee7290051863737a434d44f3c0d46f&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Fnewtalent.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>�Ҿ�����</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </li>
          <li>
            <div class="js_N_navSelect ntes-nav-select c-fl">
              <a id="js_lofter_icon_url" href="http://you.163.com/?from=web_fc_menhu_xinrukou_1" class="ntes-nav-select-title ntes-nav-select-title-lofter ntes-nav-entry-bgblack">
                <em class="ntes-nav-entry-lofter">������ѡ</em>
                <em class="ntes-nav-select-arr"></em>
                <span class="ntes-nav-msg" id="js_N_navLofterMsg">
                  <em class="ntes-nav-msg-num"></em>
                </span>
              </a>
              <div class="ntes-nav-select-pop ntes-nav-select-pop-lofter">
                <ul id="js_lofter_pop_url" class="ntes-nav-select-list clearfix">
                  <li>
                    <a href="http://you.163.com/act/static/Fb2d1OZ714.html?from=web_fc_menhu_xinrukou_1">
                      <span>888Ԫ�ֽ�ȯ</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://you.163.com/manufacturer/list?from=web_fc_menhu_xinrukou_3">
                      <span>Ʒ�������̱���</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://you.163.com/item/recommend?from=web_fc_menhu_xinrukou_4">
                      <span>999+��������Ʒ</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://you.163.com/flashSale/index?from=web_fc_menhu_xinrukou_5">
                      <span>��ʱ�ػ�</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://you.163.com/item/list?categoryId=1005000&from=web_fc_menhu_xinrukou_7">
                      <span>�ӼҴ�Ʒ</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://you.163.com/item/list?categoryId=1005001&from=web_fc_menhu_xinrukou_8">
                      <span>���²ͳ�</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://you.163.com/item/list?categoryId=1008000&from=web_fc_menhu_xinrukou_9">
                      <span>���Ь��</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://you.163.com/item/list?categoryId=1010000&from=web_fc_menhu_xinrukou_10">
                      <span>�������</span>
                    </a>
                  </li>
                  <li class="last">
                    <a href="http://you.163.com/item/list?categoryId=1005002&from=web_fc_menhu_xinrukou_11">
                      <span>������ʳ</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </li>
          <li>
            <div class="js_N_navSelect ntes-nav-select c-fl">
              <a href="http://pay.163.com/" class="ntes-nav-select-title
        ntes-nav-select-title-money ntes-nav-entry-bgblack">
                <em class="ntes-nav-entry-money">֧��</em>
                <em class="ntes-nav-select-arr"></em>
              </a>
              <div class="ntes-nav-select-pop ntes-nav-select-pop-temp">
                <ul class="ntes-nav-select-list clearfix">
                  <li>
                    <a href="http://pay.163.com/#f=topnav">
                      <span>һ��ͨ��ֵ</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://ecard.163.com/script/index#f=topnav">
                      <span>һ��ͨ����</span>
                    </a>
                  </li>
                  <li>
                    <a href="https://k.163.com/?product=163&trackid=01">
                      <span>���װ׽�</span>
                    </a>
                  </li>
                  <li>
                    <a href="https://epay.163.com/">
                      <span>�ҵ�����֧��</span>
                    </a>
                  </li>
                  <li>
                    <a href="https://3c.163.com/?from=wangyimenhu16">
                      <span>��������</span>
                    </a>
                  </li>
                  <li class="last">
                    <a href="http://lq.163.com?from=neteasemoney">
                      <span>������Ǯ-���ֽ�</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </li>
          <li>
            <div class="js_N_navSelect ntes-nav-select c-fl">
              <a href="http://baoxian.163.com/car/?from=mhgwc" class="ntes-nav-select-title
        ntes-nav-select-title-cart ntes-nav-entry-bgblack">
                <em class="ntes-nav-entry-cart">����</em>
                <em class="ntes-nav-select-arr"></em>
              </a>
              <div class="ntes-nav-select-pop ntes-nav-select-pop-temp">
                <ul class="ntes-nav-select-list clearfix">
                  <li>
                    <a href="http://you.163.com?from=web_in_wydaohang">
                      <span>��ѡ</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://lq.163.com?from=neteasebuy">
                      <span>��Ҫ��Ǯ</span>
                    </a>
                  </li>
                  <li class="last">
                    <a href="http://da.kaola.com/redirect?t=5aaebece4b392c00&p=c901ea7c&proId=1024&code=d15f8f9d72ccc507aeefda91b43c0cd2&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Fjfccri80pages1.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>���׿���</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </li>
          <li>
            <div class="js_N_navSelect ntes-nav-select c-fl">
              <a id="js_mail_url" class="ntes-nav-select-title
        ntes-nav-select-title-mail ntes-nav-entry-bgblack">
                <em class="ntes-nav-entry-mail">����</em>
                <em class="ntes-nav-select-arr"></em>
                <span class="ntes-nav-msg" id="js_N_navMailMsg">
                  <em class="ntes-nav-msg-num" id="js_N_navMailMsgNum"></em>
                </span>
              </a>
              <div class="ntes-nav-select-pop ntes-nav-select-pop-mail">
                <ul class="ntes-nav-select-list clearfix">
                  <li>
                    <a href="http://email.163.com/#f=topnav">
                      <span>�������</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://vipmail.163.com/#f=topnav">
                      <span>VIP����</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://qiye.163.com/#f=topnav">
                      <span>��ҵ����</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://reg.email.163.com/mailregAll/reg0.jsp?from=ntes_nav&regPage=163">
                      <span>���ע��</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://reg.email.163.com/unireg/call.do?cmd=register.entrance&flow=mobile&from=ntes_nav">
                      <span>����ע��</span>
                    </a>
                  </li>
                  <li class="last">
                    <a href="http://mail.163.com/dashi/dlpro.html?from=mail46">
                      <span>�ͻ�������</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
<script src="//static.ws.126.net/163/f2e/commonnav2019/js/commonnav_headjs-9af6aeb4ef.js"></script>
    <script src="//static.ws.126.net/163/f2e/libs/bowlder.min.js" ></script>
    <!-- �������� -->
    
<div class="N-nav-channel JS_NTES_LOG_FE" data-module-name="xwwzy_11_headdaohang">
    <a class="first" href="https://news.163.com/">����</a><a href="http://sports.163.com/">����</a><a href="http://sports.163.com/nba/">NBA</a><a href="http://ent.163.com/">����</a><a href="http://money.163.com/">�ƾ�</a><a href="http://money.163.com/stock/">��Ʊ</a><a id="_link_auto" href="http://auto.163.com/">����</a><a href="http://tech.163.com/">�Ƽ�</a><a href="http://mobile.163.com/">�ֻ�</a><a href="http://digi.163.com/">����</a><a href="http://lady.163.com/">Ů��</a><a href="http://v.163.com/">ֱ��</a><a href="http://v.163.com/special/video/#tuijian">��Ƶ</a><a href="http://travel.163.com/">����</a><a id="houseUrl" href="http://house.163.com/">����</a><a href="http://home.163.com/" id="homeUrl">�Ҿ�</a><a href="http://edu.163.com/">����</a><a href="http://book.163.com/">����</a><a id="_link_game" href="https://news.163.com/">����</a><a href="http://jiankang.163.com/">����</a><a href="http://rd.da.netease.com/redirect?t=5802fb18cf033c80&p=e17af55c&proId=1024&target=https%3A%2F%2Fwww.kaola.com%2F%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">����</a><a class="last" href="http://art.163.com/">����</a>
</div>
<!-- ��Ϸ�滻Ϊ���أ������� 0310-->
<!-- ���ö������ -->
<script type="text/javascript" _keep="true">
var HouseNavBendiTxt = {
    "province": [
        {
            "name": "������",
            "shortName": "����",
            "url":"http://bj.news.163.com/"
        },
        {
            "name": "�Ϻ���",
            "shortName": "�Ϻ�",
            "url":"http://sh.news.163.com/"
        },
        {
            "name": "�����",
            "shortName": "���",
            "url":"http://tj.news.163.com/"
        },
        {
            "name": "�㶫ʡ",
            "shortName": "�㶫",
            "url":"http://gd.news.163.com/"
        },
        {
            "name": "����ʡ",
            "shortName": "����",
            "url":"http://js.news.163.com/"
        },
        {
            "name": "�㽭ʡ",
            "shortName": "�㽭",
            "url":"http://zj.news.163.com/"
        },
        {
            "name": "�Ĵ�ʡ",
            "shortName": "�Ĵ�",
            "url":"http://sc.news.163.com/"
        },
        {
            "name": "������ʡ",
            "shortName": "������",
            "url":"http://hlj.news.163.com/"
        },
        {
            "name": "����ʡ",
            "shortName": "����",
            "url":"http://jl.news.163.com/"
        },
        {
            "name": "����ʡ",
            "shortName": "����",
            "url":"http://liaoning.news.163.com/"
        },
        {
            "name": "���ɹ�������",
            "shortName": "���ɹ�",
            "url":"http://hhht.news.163.com/"
        },
        {
            "name": "�ӱ�ʡ",
            "shortName": "�ӱ�",
            "url":"http://hebei.news.163.com/"
        },
        {
            "name": "����ʡ",
            "shortName": "����",
            "url":"http://henan.163.com/"
        },
        {
            "name": "ɽ��ʡ",
            "shortName": "ɽ��",
            "url":"http://sd.news.163.com/"
        },
        {
            "name": "����ʡ",
            "shortName": "����",
            "url":"http://shanxi.news.163.com/"
        },
        {
            "name": "����ʡ",
            "shortName": "����",
            "url":"http://gs.news.163.com/"
        },
        {
            "name": "���Ļ���������",
            "shortName": "����",
            "url":"http://ningxia.news.163.com/"
        },
        {
            "name": "�½�ά���������",
            "shortName": "�½�",
            "url":"http://xj.news.163.com/"
        },
        {
            "name": "����ʡ",
            "shortName": "����",
            "url":"http://ah.news.163.com/"
        },
        {
            "name": "����ʡ",
            "shortName": "����",
            "url":"http://fj.news.163.com/"
        },
        {
            "name": "����׳��������",
            "shortName": "����",
            "url":"http://gx.news.163.com/"
        },
        {
            "name": "������",
            "shortName": "����",
            "url":"http://chongqing.163.com/"
        },
        {
            "name": "����ʡ",
            "shortName": "����",
            "url":"http://hb.news.163.com/"
        },
        {
            "name": "����ʡ",
            "shortName": "����",
            "url":"http://jx.news.163.com/"
        },
        {
            "name": "����ʡ",
            "shortName": "����",
            "url":"http://hn.news.163.com/"
        },
        {
            "name": "����ʡ",
            "shortName": "����",
            "url":"http://gz.news.163.com/"
        },
        {
            "name": "����ʡ",
            "shortName": "����",
            "url":"http://yn.news.163.com/"
        },
        {
            "name": "����ʡ",
            "shortName": "�Ϻ�",
            "url":"http://sh.news.163.com/"
        },
        {
            "name": "ɽ��ʡ",
            "shortName": "ɽ��",
            "url":"http://sx.news.163.com"
        },
        {
            "name": "����������",
            "shortName": "����",
            "url":"http://bj.news.163.com/"
        },
        {
            "name": "����ر�������",
            "shortName": "�㶫",
            "url":"http://gd.news.163.com/"
        },
        {
            "name": "�����ر�������",
            "shortName": "�㶫",
            "url":"http://gd.news.163.com/"
        },
        {
            "name": "̨��ʡ",
            "shortName": "�㶫",
            "url":"http://gd.news.163.com/"
        },
        {
            "name": "�����",
            "shortName": "����",
            "url":"http://bj.news.163.com/"
        },
        {
            "name": "�ຣʡ",
            "shortName": "����",
            "url":"http://bj.news.163.com/"
        }
    ],
    "city": [
        {
            "name": "������",
            "shortName": "����",
            "url":"http://dl.news.163.com"
        },
        {
            "name": "�ൺ��",
            "shortName": "�ൺ",
            "url":"http://qingdao.news.163.com"
        },
        {
            "name": "������",
            "shortName": "����",
            "url":"http://ningbo.news.163.com"
        },
        {
            "name": "������",
            "shortName": "����",
            "url":"http://xiamen.news.163.com"
        },
        {
            "name": "������",
            "shortName": "����",
            "url":"http://shenzhen.news.163.com/"
        }
    ],
    "defalt": {
            "name": "",
            "shortName": "����",
            "url":"http://news.163.com/"
        }
};
</script>
<script type="text/javascript" _keep="true">
    //�������ö���ʡ��
    function setBendiName(){
        var js_nav_bendi = document.getElementById("_link_game");
        var cityname = "";
        var cityurl = "";
        var _loc = window.localAddress;
        if(!js_nav_bendi)
            return;
        if(HouseNavBendiTxt.city && _loc){
            var citylist = HouseNavBendiTxt.city;
            var localcity = _loc.city;
            for(var i=0;i<citylist.length;i++){
                if(citylist[i].name == localcity){
                    cityname = citylist[i].shortName;
                    cityurl = citylist[i].url;
                    break;
                }
            }
        }
        if(cityname == "" && cityurl == "" && HouseNavBendiTxt.province && _loc){
            var provincelist = HouseNavBendiTxt.province;
            var localprovince = _loc.province;
            for(var i=0;i<provincelist.length;i++){
                if(provincelist[i].name == localprovince){
                    cityname = provincelist[i].shortName;
                    cityurl = provincelist[i].url;
                    break;
                }
            }
        }
        if(js_nav_bendi && cityname != "" && cityurl != ""){
            js_nav_bendi.innerHTML = cityname;
            js_nav_bendi.href = cityurl;
        }
        if(js_nav_bendi && cityname == "" && cityurl == ""){
            js_nav_bendi.innerHTML = "����";
            js_nav_bendi.href = "http://news.163.com";
        }
    }
    function BENDI_NAV_CALLBACK(data){
       if(data && data.result){
            if(window.HouseNavBendiTxt){
                window.localAddress = data.result;
                setBendiName();
            } 
       }
    };
    
    if(window.localAddress){
        if(window.HouseNavBendiTxt){
            setBendiName();
        } 
    }else{
        var url = "//ipservice.163.com/locate/api/getLocByIp?key=C6E22B7D480E3312C74EC7EF013E50C5&callback=BENDI_NAV_CALLBACK";
        var script = document.createElement('script');
        script.setAttribute('src', url);
        document.getElementsByTagName('head')[0].appendChild(script);
    }
</script>
    <div class="ne-area" ne-module="/mobile/index2016/index2016.js">
        <!-- AD ����ͨ�� begin -->
        <div class="area topad channel_relative_2016">
            <div class="at_item common_ad_item top_ad_column" adType="topColumnAd" requestUrl="https://nex.163.com/q?app=7BE0FC82&c=mobile&l=11&site=netease&affiliate=mobile&cat=homepage&type=column1200x125_960x100browser&location=1"></div>
			<span class="channel_ad_2016">���</span> 
        </div>
        <!-- �ֻ����� -->
        <div ne-module="">
<div class="channel">
	<div class="clearfix area">
        <h1>
            <a name="top" href="http://mobile.163.com/" class="channel2019_logo channel2019_mobile_logo"></a>
        </h1>
        
        <span ><!-- <iframe
src="http://g.163.com/r?site=netease&affiliate=mobile&cat=homepage&type=logolinshi&location=1" width="380" height="30" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>  -->
<!-- <a style="float:left" target="_blank" href="http://g.163.com/a?CID=29272&Values=4074622746&Redirect=http://c.cn.maysunmedia.com/track/dclk?cid=100014&pid=1000320&rdt=http%3A%2F%2Fwww.189.cn%2F4g%2F%3Fcmpid%3Djt-banner-163-4g"><img src="http://img1.126.net/channel3/017213_38030_140709.jpg" border=0 height=30 width=380 alt="����"></a> -->
<!-- ������濪ʼ -->
<!-- <style type="text/css">
	.mobile_nav {overflow:visible;}
	#ddivtf1 {float:left; width:380px; margin:0 0 0 10px; position: relative;z-index:10;}
	#ddivtf2 {position: absolute; top: 0px; left:0px;visibility:hidden;}
</style>
<div id="ddivtf1"><a style="float:left" target="_blank" href="http://g.163.com/a?CID=46908&Values=2889595107&Redirect=http://www.189.cn/hd/dxgkd/?cmpid=jt-banner-163-SRX-gkd"><img src="http://img1.126.net/channel3/025870_38030_161130.jpg" border=0 height=30 width=380 alt="����"></a>
	<div id="ddivtf2">
	<a style="float:left" target="_blank" href="http://g.163.com/a?CID=46908&Values=2889595107&Redirect=http://www.189.cn/hd/dxgkd/?cmpid=jt-banner-163-SRX-gkd"><img src="http://img1.126.net/channel3/025870_380100_161130.jpg" border=0 height=100 width=380 alt="����"></a>
	</div>
	</div>
	<script type="text/javascript">//<![CDATA[
		var oddivtf1 = document.getElementById('ddivtf1');
		var oddivtf2 = document.getElementById('ddivtf2');
		var userAgent = navigator.userAgent;
		if(userAgent.indexOf('MSIE')>-1 && userAgent.indexOf('Opera')<0){oddivtf2.style.visibility='hidden';}
		oddivtf1.onmouseover  = function(){oddivtf2.style.visibility='visible';}
		oddivtf1.onmouseout  = function(){oddivtf2.style.visibility='hidden';}
//]]></script> -->
<!-- ���������� --> </span>
    </div>
    <div class="nav-channel clearfix">
    	<div class="nav area clearfix">
    		<a href="http://mobile.163.com/">��ҳ</a><em>/</em>
    		<a href="http://tech.163.com/">�Ƽ�</a><em>/</em>
    		<a href="http://digi.163.com/">����</a><em>/</em>
    		<a href="http://tech.163.com/internet/">�ƶ�������</a><em>/</em>
    		<a href="http://mobile.163.com/photo/#Yjkt">�л���ͼ</a>
    	</div>
    </div>
</div></div>
        <!-- �����ֻ�������Ʒ�ơ������Ƽ�  ��Ʒ�����-->
        <!-- modules/product/product.js -->
        <!-- ͷͼ�ֲ� -->
        <div ne-module="/mobile/index2016/modules/topnews/topnews.js">
<!-- 1200�汾 -->
<div class="topnews area clearfix topnews1200">
    <div class="fl topnews_l">
        
        <div class="topnews_focus" ne-module="/modules/slide/slide.js" ne-state="slideMethod:left;events=mouseover;interval=3000;loop:1">
            <div class="topnews_box" ne-role="slide-body">
                <!-- ��Ҫ���� 648*402 20��-->
                <div class="topnews_scroll clearfix" ne-role="slide-scroll">
                    <!-- ��1֡ -->
                                                                                                         <div class="topnews_main" ne-role="slide-page">
                        <a class="topnews_main_img" href="https://mobile.163.com/19/1003/10/EQIAQL3C00119821.html" target="_blank"><img src="http://cms-bucket.ws.126.net/2019/10/03/be619d9a3e164234a158bb05448fa17d.jpeg?imageView&thumbnail=600y400" height="100%" alt="iPhone 11 Pro DeepFusion�Ա��ع�"></a>
                        <h2><a href="https://mobile.163.com/19/1003/10/EQIAQL3C00119821.html" target="_blank">iPhone 11 Pro DeepFusion�Ա��ع�</a></h2>
                    </div>
                                        <!-- ��2֡ -->
                    <!-- ���� ͼ -->
<!--  <div class="topnews_main" ne-role="slide-page">
	<a class="topnews_main_img" href="http://g.163.com/a?CID=68337&Values=1229086896&Redirect=https://item.jd.com/100005274252.html" target="_blank">
	    <img src="https://yt-adp.ws.126.net/channel3/037463_640426_bwty_20190506.jpg" height="100%" alt="���ͼƬ">
	</a>
	<h2>
	    <a href="http://g.163.com/a?CID=68337&Values=1229086896&Redirect=https://item.jd.com/100005274252.html" target="_blank">��棺�������Axon 10 Proȫ������,������!</a>
	</h2>
</div>  -->
                    <!-- ��3-4֡ -->
                                                                                                         <div class="topnews_main" ne-role="slide-page">
                        <a class="topnews_main_img" href="https://mobile.163.com/19/1003/10/EQIAT02M00119821.html" target="_blank"><img src="http://cms-bucket.ws.126.net/2019/10/03/13a24251f2c14088b337a6b7bcb50495.jpeg?imageView&thumbnail=600y400" height="100%" alt="�ȸ�Pixel 4/XL�ٷ������ع�"></a>
                        <h2><a href="https://mobile.163.com/19/1003/10/EQIAT02M00119821.html" target="_blank">�ȸ�Pixel 4/XL�ٷ������ع�</a></h2>
                    </div>
                                    </div>
            </div>
            <div class="topnews_nav">
                <ul class="clearfix" ne-if="state.total">
                    <li ne-repeat="1..state.total">
                        <span ne-role="slide-nav"></span>
                    </li>
                </ul>
            </div>
            <a ne-role="slide-prev" class="topnews_focus_prev">&lt;</a>
            <a ne-role="slide-next" class="topnews_focus_next">&gt;</a>
        </div>
    </div>
    <div class="fr topnews_r clearfix">
                                                         <div class="topnews_r_item">
            <a class="topnews_r_img" href="https://mobile.163.com/19/1002/09/EQFKCGKO00119821.html" target="_blank">
                <img src="http://cms-bucket.ws.126.net/2019/10/02/70266d88e2234310b826035ede4135f9.jpeg?imageView&thumbnail=300y200" height="100%" alt="ƻ����ɱ���������߿�䣿��������">
            </a>
            <h2><a href="https://mobile.163.com/19/1002/09/EQFKCGKO00119821.html" target="_blank">ƻ����ɱ���������߿�䣿��������</a></h2>
        </div>
                                                 <div class="topnews_r_item">
            <a class="topnews_r_img" href="https://mobile.163.com/19/0929/07/EQ7MQPU900119821.html" target="_blank">
                <img src="http://cms-bucket.ws.126.net/2019/09/29/f855db6f932748059cedf50c334983f2.png?imageView&thumbnail=300y200" height="100%" alt="iPhone11 Pro Max���ϳɱ�">
            </a>
            <h2><a href="https://mobile.163.com/19/0929/07/EQ7MQPU900119821.html" target="_blank">iPhone11 Pro Max���ϳɱ�</a></h2>
        </div>
                                                 <div class="topnews_r_item">
            <a class="topnews_r_img" href="https://mobile.163.com/19/0929/07/EQ7MPE3S00119821.html" target="_blank">
                <img src="http://cms-bucket.ws.126.net/2019/09/29/4e6a23b761d44e8a8f3f05017e7a8b28.jpeg?imageView&thumbnail=300y200" height="100%" alt="�����ƣ��¿����ֻ������޹�">
            </a>
            <h2><a href="https://mobile.163.com/19/0929/07/EQ7MPE3S00119821.html" target="_blank">�����ƣ��¿����ֻ������޹�</a></h2>
        </div>
                                                 <div class="topnews_r_item">
            <a class="topnews_r_img" href="https://mobile.163.com/19/0923/07/EPO7U7TB00119821.html" target="_blank">
                <img src="http://cms-bucket.ws.126.net/2019/09/23/e8ab20d866e44d638caf1eed9f1eec8a.jpeg?imageView&thumbnail=300y200" height="100%" alt="��Ϊȷ���޼ƻ���Mate30ϵ��BL��">
            </a>
            <h2><a href="https://mobile.163.com/19/0923/07/EPO7U7TB00119821.html" target="_blank">��Ϊȷ���޼ƻ���Mate30ϵ��BL��</a></h2>
        </div>
            </div>
</div>
<!-- 960�汾 -->
<div class="topnews area clearfix topnews960">
    <div class="fl topnews_l">
        
        <div class="topnews_focus" ne-module="/modules/slide/slide.js" ne-state="slideMethod:left;events=mouseover;interval=3000;loop:1">
            <div class="topnews_box" ne-role="slide-body">
                <!-- ��Ҫ���� 648*402 20��-->
                <div class="topnews_scroll clearfix" ne-role="slide-scroll">
                    <!-- ��1֡ -->
                                                                                                         <div class="topnews_main" ne-role="slide-page">
                        <a class="topnews_main_img" href="https://mobile.163.com/19/1003/10/EQIAQL3C00119821.html" target="_blank"><img src="http://cms-bucket.ws.126.net/2019/10/03/be619d9a3e164234a158bb05448fa17d.jpeg?imageView&thumbnail=640y426" height="100%" alt="iPhone 11 Pro DeepFusion�Ա��ع�"></a>
                        <h2><a href="https://mobile.163.com/19/1003/10/EQIAQL3C00119821.html" target="_blank">iPhone 11 Pro DeepFusion�Ա��ع�</a></h2>
                    </div>
                                        <!-- ��2֡ -->
                    <!-- ���� ͼ -->
<!--  <div class="topnews_main" ne-role="slide-page">
	<a class="topnews_main_img" href="http://g.163.com/a?CID=68337&Values=1229086896&Redirect=https://item.jd.com/100005274252.html" target="_blank">
	    <img src="https://yt-adp.ws.126.net/channel3/037463_640426_bwty_20190506.jpg" height="100%" alt="���ͼƬ">
	</a>
	<h2>
	    <a href="http://g.163.com/a?CID=68337&Values=1229086896&Redirect=https://item.jd.com/100005274252.html" target="_blank">��棺�������Axon 10 Proȫ������,������!</a>
	</h2>
</div>  -->
                    <!-- ��3-5֡ -->
                                                                                                         <div class="topnews_main" ne-role="slide-page">
                        <a class="topnews_main_img" href="https://mobile.163.com/19/1003/10/EQIAT02M00119821.html" target="_blank"><img src="http://cms-bucket.ws.126.net/2019/10/03/13a24251f2c14088b337a6b7bcb50495.jpeg?imageView&thumbnail=640y426" height="100%" alt="�ȸ�Pixel 4/XL�ٷ������ع�"></a>
                        <h2><a href="https://mobile.163.com/19/1003/10/EQIAT02M00119821.html" target="_blank">�ȸ�Pixel 4/XL�ٷ������ع�</a></h2>
                    </div>
                                                                                     <div class="topnews_main" ne-role="slide-page">
                        <a class="topnews_main_img" href="https://mobile.163.com/19/1002/09/EQFKCGKO00119821.html" target="_blank"><img src="http://cms-bucket.ws.126.net/2019/10/02/70266d88e2234310b826035ede4135f9.jpeg?imageView&thumbnail=640y426" height="100%" alt="ƻ����ɱ���������߿�䣿��������"></a>
                        <h2><a href="https://mobile.163.com/19/1002/09/EQFKCGKO00119821.html" target="_blank">ƻ����ɱ���������߿�䣿��������</a></h2>
                    </div>
                                                                                     <div class="topnews_main" ne-role="slide-page">
                        <a class="topnews_main_img" href="https://mobile.163.com/19/0929/07/EQ7MQPU900119821.html" target="_blank"><img src="http://cms-bucket.ws.126.net/2019/09/29/f855db6f932748059cedf50c334983f2.png?imageView&thumbnail=640y426" height="100%" alt="iPhone11 Pro Max���ϳɱ�"></a>
                        <h2><a href="https://mobile.163.com/19/0929/07/EQ7MQPU900119821.html" target="_blank">iPhone11 Pro Max���ϳɱ�</a></h2>
                    </div>
                                    </div>
            </div>
            <div class="topnews_nav">
                <ul class="clearfix" ne-if="state.total">
                    <li ne-repeat="1..state.total">
                        <span ne-role="slide-nav"></span>
                    </li>
                </ul>
            </div>
            <a ne-role="slide-prev" class="topnews_focus_prev">&lt;</a>
            <a ne-role="slide-next" class="topnews_focus_next">&gt;</a>
        </div>
    </div>
    <div class="fr topnews_r clearfix">
                                                         <div class="topnews_r_item">
            <a class="topnews_r_img" href="https://mobile.163.com/19/0929/07/EQ7MPE3S00119821.html" target="_blank">
                <img src="http://cms-bucket.ws.126.net/2019/09/29/4e6a23b761d44e8a8f3f05017e7a8b28.jpeg?imageView&thumbnail=320y214" height="100%" alt="�����ƣ��¿����ֻ������޹�">
            </a>
            <h2><a href="https://mobile.163.com/19/0929/07/EQ7MPE3S00119821.html" target="_blank">�����ƣ��¿����ֻ������޹�</a></h2>
        </div>
                                                 <div class="topnews_r_item">
            <a class="topnews_r_img" href="https://mobile.163.com/19/0923/07/EPO7U7TB00119821.html" target="_blank">
                <img src="http://cms-bucket.ws.126.net/2019/09/23/e8ab20d866e44d638caf1eed9f1eec8a.jpeg?imageView&thumbnail=320y214" height="100%" alt="��Ϊȷ���޼ƻ���Mate30ϵ��BL��">
            </a>
            <h2><a href="https://mobile.163.com/19/0923/07/EPO7U7TB00119821.html" target="_blank">��Ϊȷ���޼ƻ���Mate30ϵ��BL��</a></h2>
        </div>
            </div>
</div></div>
        
        <div class=" area clearfix" style="position:relative;">
            <!-- ������¿�Ѷ -->
            
            <div ne-module="/mobile/index2016/modules/lf_news/lf_news.js">
<div class="left_part">
    <div class="blank" id="base_left"></div>
    <div class="lf-newest" id="lf_viewer">
        <div class="commen_tit">
            <h2>���¿�Ѷ</h2>
        </div>
        <div ne-role="gl_bd">
            <div class="newest-lists">
                <ul>
                                                            <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0701/07/EJ011TL50011819H.html" class="nl_detail">
                            <p class="nl-title">
                                                                ����Ȩ���ͣ�5Gʱ���������� �����ֻ���ҵ��� 
                                <em class="nl-time">07:49</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0630/10/EITMDP9L00119821.html" class="nl_detail">
                            <p class="nl-title">
                                                                ��սһ�꣡75Ԫ���ϻ�����Ѫ���� ׬����
                                <em class="nl-time">10:04</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0630/10/EITM952I00119821.html" class="nl_detail">
                            <p class="nl-title">
                                                                ��ͨ5G�ֻ�����1�¾͹��ˣ������Ȼ����
                                <em class="nl-time">10:02</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0630/09/EITM057P00119821.html" class="nl_detail">
                            <p class="nl-title">
                                                                ���ѽ��ܲ��ܣ�iPhone11�������ݺ󾹷�ת
                                <em class="nl-time">09:57</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0630/00/EISJV3MM00119821.html" class="nl_detail">
                            <p class="nl-title">
                                                                ����Note 10����������ع⣺�߸�������
                                <em class="nl-time">00:02</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="http://digi.163.com/19/0629/16/EIROMN71001680P9.html" class="nl_detail">
                            <p class="nl-title">
                                                                ����OLED����A9G���飺�������� ������ֻ��һ��
                                <em class="nl-time">16:06</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0629/16/EIRQMR800011819H.html" class="nl_detail">
                            <p class="nl-title">
                                                                OPPO reno��а濪�䣺����ƴ�д�ķ�
                                <em class="nl-time">16:41</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0629/12/EIRBCNMS0011819H.html" class="nl_detail">
                            <p class="nl-title">
                                                                һ���ֻ�7���䣺�콢���ÿ���Pro�棬�ָи���
                                <em class="nl-time">12:13</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0629/10/EIR53B2K00119821.html" class="nl_detail">
                            <p class="nl-title">
                                                                ŵ�����ֻ�ȫ���󽵼ۣ�����Ż�500Ԫ/����139 
                                <em class="nl-time">10:23</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0629/10/EIR4QLFA00119821.html" class="nl_detail">
                            <p class="nl-title">
                                                                21������Ӱ�������ʦ��ȥ ƻ��������Ҫ
                                <em class="nl-time">10:18</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0629/10/EIR4O18J00119821.html" class="nl_detail">
                            <p class="nl-title">
                                                                �й��羺�г��˲�ϡȱ δ�������������200����
                                <em class="nl-time">10:17</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0629/10/EIR4D4NR00119821.html" class="nl_detail">
                            <p class="nl-title">
                                                                99%�ֻ�ɥʧѡ��Ȩ ӡ�ȶԹȸ�������
                                <em class="nl-time">10:11</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0629/10/EIR41PH900119821.html" class="nl_detail">
                            <p class="nl-title">
                                                                �����˾��ֻ��������� ���Ϻ�������
                                <em class="nl-time">10:05</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0629/10/EIR3P85500119821.html" class="nl_detail">
                            <p class="nl-title">
                                                                ��iPhoneҪ����˱䶯����ƻ��ŭ�ޣ�
                                <em class="nl-time">10:00</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0628/10/EIOIJ8VA00119821.html" class="nl_detail">
                            <p class="nl-title">
                                                                ƻ��֤ʵApple Music�������û���6000��
                                <em class="nl-time">10:21</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0628/10/EIOI1LT800119821.html" class="nl_detail">
                            <p class="nl-title">
                                                                ��ά��ְ��ƻ��COO�ܷ�����ķ˹������ƹ���
                                <em class="nl-time">10:12</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0628/09/EIOFLD2M00119821.html" class="nl_detail">
                            <p class="nl-title">
                                                                �����ú���K20 Pro������ʽ����ͷ��ơ�Ƹ� ���
                                <em class="nl-time">09:30</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0628/09/EIOF403I00119821.html" class="nl_detail">
                            <p class="nl-title">
                                                                Ħ�������Ŀڣ���Verizon��Z2 Force������
                                <em class="nl-time">09:20</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0628/08/EIOCCLOR00119821.html" class="nl_detail">
                            <p class="nl-title">
                                                                ������LCD����ָ�Ʒ��������������
                                <em class="nl-time">08:33</em>
                            </p>
                        </a>                              
                    </li>
                                        <li class="list_item">
                        <span class="wai_cicle"></span>
                        <div class="animate-dot"></div>
                        <a href="https://mobile.163.com/19/0628/08/EIOBEBS900119821.html" class="nl_detail">
                            <p class="nl-title">
                                                                �й��ƶ��ѽ�������5G��Ʒ�⣺����ʽ��������
                                <em class="nl-time">08:16</em>
                            </p>
                        </a>                              
                    </li>
                                     </ul>
            </div>
            <div class="white_hover"></div>
        </div>
    </div>
</div></div>
            <!-- �����ȵ� -->
            <div ne-module="/mobile/index2016/modules/datalist/datalist.js" ne-extend="/mobile/index2016/modules/datalist/config.js" class="msg_list">
<div class="datalist">
    <div class="commen_tit">
        <h2>�����ȵ�</h2>
    </div>
    <div class="newsdata_wrap">
        <ul class="newsdata_list">
            <li class="newsdata_item">
                <div class="ndi_main">
                    <!-- <div class="row_message" ne-hide="{{myState.message > 0 ? false : true}}" ne-click="refreshList()">
                    С��Ϊ�������{{myState.message}}������ϢӴ~~
                    </div> -->
                    <script type="text/template" ne-repeat="newrow in datalist">
                    <%if(newrow.fixedInc){%>
                        <div></div>
                    <%} else if(newrow.style == "iframe"){%>
                    <div class="at_item info_ad_item news_iframe_ad" adType="infoAd" ne-click="adClickTracker(<%=newrow.infoAdIdx%>,'infoAd')">
                        <iframe src="<%=newrow.iframe[0].link%>" width="<%=newrow.iframe[0].iframewidth || 600 %>" height="<%=newrow.iframe[0].iframeheight || 100 %>" frameborder="0" border="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
                    </div>
                <%} else if(newrow.style == "docAD"){%>
                    <div class="at_item info_ad_item news_article clearfix" adType="infoAd" ne-click="adClickTracker(<%=newrow.infoAdIdx%>,'infoAd')">
                        <a href="<%=newrow.relatedActionLinks[0].url%>" class="na_pic">
                            <img src="<%=newrow.resources[0].urls[0]%>" width="190" height="120">
                        </a>
                        <div class="na_detail clearfix">
                            <div class="news_title">
                                <h3><strong><a href="<%=newrow.relatedActionLinks[0].url%>"><%=newrow.title%></a>
                                </strong></h3>
                            </div>
                        </div>
                        <div class="ad_detail clearfix">
                            <span class="tg_tag"><%=newrow.source%></span>
                            <span class="keywords" ne-html="<%=newrow.content%>"></span>
                        </div>
                    </div>
                <%} else if(newrow.style == "photosetAD"){%>
                    <div class="at_item info_ad_item news_photoview clearfix" adType="infoAd" ne-click="adClickTracker(<%=newrow.infoAdIdx%>,'infoAd')">
                        <div class="news_title">
                            <h3><strong><a href="<%=newrow.relatedActionLinks[0].url%>"><%=newrow.title%></a></strong></h3>
                        </div>
                        <div class="np_pic">
                            <a href="<%=newrow.relatedActionLinks[0].url%>">
                                <span class="p_img3">
                                    <img src="<%=newrow.resources[0].urls[0]%>" width="190" height="120">
                                </span>
                                <span class="p_img3">
                                    <img src="<%=newrow.resources[0].urls[1]%>" width="190" height="120">
                                </span>
                                <span class="p_img3">
                                    <img src="<%=newrow.resources[0].urls[2]%>" width="190" height="120" class="pic_last">
                                </span>
                            </a>
                        </div>
                        <div class="ad_detail clearfix">
                            <span class="tg_tag"><%=newrow.source%></span>
                            <span class="keywords" ne-html="<%=newrow.content%>"></span>
                        </div>
                    </div>
                <%} else if(newrow.style == "columsAD"){%>
                    <div class="at_item info_ad_item news_special clearfix" adType="infoAd" ne-click="adClickTracker(<%=newrow.infoAdIdx%>,'infoAd')">
                        <div class="news_title">
                            <h3><strong><a href="<%=newrow.relatedActionLinks[0].url%>"><%=newrow.title%></a></strong></h3>
                        </div>
                        <a href="<%=newrow.relatedActionLinks[0].url%>" class="ns_pic"><img src="<%=newrow.resources[0].urls[0]%>" width="600" height="200"></a>
                        <div class="ad_detail clearfix">
                            <span class="tg_tag"><%=newrow.source%></span>
                            <span class="keywords" ne-html="<%=newrow.content%>"></span>
                        </div>
                    </div>
                <%} else if(newrow.imgurl && newrow.add1 && newrow.add2){%>
                        <div class="data_row news_photoview clearfix <%if(__i == 0){%>news_first <%}%>">
                            <div class="news_title">
                                <h3><a href="<%=newrow.docurl%>"><%=newrow.title%></a></h3>
                            </div>
                            <div class="np_pic">
                                <a href="<%=newrow.docurl%>">
                                    <img src="<%=newrow.imgurl%>" width="190" height="120" onerror="javascript:this.src='http://static.ws.126.net/f2e/mobile/index2016/images/break_img.jpg';">
                                    <img src="<%=newrow.add1%>" width="190" height="120" onerror="javascript:this.src='http://static.ws.126.net/f2e/mobile/index2016/images/break_img.jpg';">
                                    <img src="<%=newrow.add2%>" width="190" height="120" class="pic_last" onerror="javascript:this.src='http://static.ws.126.net/f2e/mobile/index2016/images/break_img.jpg';">
                                </a>
                            </div>
                            <div class="np_detail clearfix">
                                <div class="news_tag">
                                    <%if(newrow.tlastid != ""){%>
                                    <strong class="barlink"><%=newrow.tlastid%></strong>
                                    <%}else{%>
                                        <a href="<%=newrow.tlink%>" class="link">
                                        <%=newrow.label%></a>
                                    <%}%> 
                                    <div class="keywords">
                                    <%bowlder.each(newrow.keywords,function(k){%>
                                        <a href="<%=k.akey_link%>"><%=k.keyname%></a>
                                    <%})%> 
                                    </div>
                                    <span class="time"><%=formatTime(newrow.time)%></span>
                                </div>
                                <div class="share-join clearfix">
                                    <a href="<%=newrow.commenturl%>" title="����" class="join-count right">
                                        <div class="tie-wrap">
                                            <span class="tie-icon"> <%=newrow.tienum%></span>
                                            <span class="tie-text"><i>����</i> <%=newrow.tienum%></span>
                                        </div>
                                    </a>
                                    <div class="ne-shares-parent right">
                                        <span href="#share" title="����" class="ne-shares-arr"></span>
                                        <div class="share-join-item" ne-module="/modules/shares/shares.js" ne-state="cls.hover:ne-shares-open;title:<%=newrow.title%>;url:<%=newrow.docurl%>;pic:<%=newrow.imgurl%>" >
<div class="ne-shares-pop6x1wrap" ne-role="share-wrap">
<ul class="ne-shares-pop6x1">
    <li>
        <a ne-click="share('yixin')" href="http://yixin.im/#f=www">
            <span class="inner">
                <i class="ep-share-icon ep-share-yixin"></i>
                <span class="ep-share-name">����</span>
            </span>
        </a>
    </li>
    <li>
        <a ne-mouseover="initWeixin()" href="javascript:" target="_self" class="ne-shares-weixin">
            <span class="inner">
                <i class="ep-share-icon ep-share-weixin"></i>
                <span class="ep-share-name">΢��</span>
            </span>
        </a>
    </li>
    <li>
        <a ne-click="share('sina')" href="javascript:">
            <span class="inner">
                <i class="ep-share-icon ep-share-sina"></i>
                <span class="ep-share-name">΢��</span>
            </span>
        </a>
    </li>
    <li class="last">
        <a ne-click="share('qzone')" href="javascript:">
            <span class="inner">
                <i class="ep-share-icon ep-share-qzone"></i>
                <span class="ep-share-name">QQ�ռ�</span>
            </span>
        </a>
    </li>
</ul>
</div>
<div class="ne-shares-qrwrap">
  <div class="ne-shares-qrarr"></div>
  <div ne-role="qrcode" class="ne-shares-qrcode"></div>
  <p>��΢��ɨ���ά��</p><p>���������Ѻ�����Ȧ</p>
</div>
</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <%} else if(newrow.add1){%>
                        <div class="data_row news_special clearfix <%if(__i == 0){%>news_first <%}%>">
                            <div class="news_title">
                                <h3><a href="<%=newrow.docurl%>"><%=newrow.title%></a></h3>
                                <%if(newrow.tlastid != ""){%>
                                <strong class="barlink"><%=newrow.tlastid%></strong>
                                <%}else{%>
                                    <a href="<%=newrow.tlink%>" class="link">
                                    <%=newrow.label%></a>
                                <%}%> 
                            </div>
                            <a href="<%=newrow.docurl%>" class="ns_pic">
                                <img src="<%=newrow.add1%>" alt="<%=newrow.title%>" width="600" height="300" onerror="javascript:this.src='http://static.ws.126.net/f2e/mobile/index2016/images/break_img_big2.jpg';">
                            </a>
                        </div>
                    <%} else if(newrow.newstype){%>
                    <div class="data_row news_article clearfix <%if(__i == 0){%>news_first<%}%>">
                        <%if(newrow.imgurl != ""){%>
                        <a href="<%=newrow.docurl%>" class="na_pic">
                            <img src="<%=newrow.imgurl%>" alt="<%=newrow.title%>" width="190" height="120" onerror="javascript:this.src='http://static.ws.126.net/f2e/mobile/index2016/images/break_img.jpg';">
                        </a>
                        <%}%> 
                        <div class="na_detail clearfix <%if(newrow.imgurl == ""){%>no_pic<%}%>">
                            <div class="news_title">
                                <h3><a href="<%=newrow.docurl%>"><%=newrow.title%></a></h3>
                            </div>
                            <div class="news_tag">
                                <%if(newrow.tlastid != ""){%>
                                    <strong class="barlink"><%=newrow.tlastid%></strong>
                                <%}else{%>
                                    <a href="<%=newrow.tlink%>" class="link">
                                    <%=newrow.label%></a>
                                <%}%> 
                                <div class="keywords">
                                <%bowlder.each(newrow.keywords,function(k){%>
                                    <a href="<%=k.akey_link%>"><%=k.keyname%></a>
                                <%})%> 
                                </div>
                                <span class="time"><%=formatTime(newrow.time)%></span>
                            </div>
                            <div class="share-join clearfix">
                                <a href="<%=newrow.commenturl%>" title="����" class="join-count right">
                                    <div class="tie-wrap">
                                        <span class="tie-icon"> <%=newrow.tienum%></span>
                                        <span class="tie-text"><i>����</i> <%=newrow.tienum%></span>
                                    </div>
                                </a>
                                <div class="ne-shares-parent right">
                                    <span href="#share" title="����" class="ne-shares-arr"></span>
                                    <div class="share-join-item" ne-module="/modules/shares/shares.js" ne-state="cls.hover:ne-shares-open;title:<%=newrow.title%>;url:<%=newrow.docurl%>;pic:<%=newrow.imgurl%>" >
<div class="ne-shares-pop6x1wrap" ne-role="share-wrap">
<ul class="ne-shares-pop6x1">
    <li>
        <a ne-click="share('yixin')" href="http://yixin.im/#f=www">
            <span class="inner">
                <i class="ep-share-icon ep-share-yixin"></i>
                <span class="ep-share-name">����</span>
            </span>
        </a>
    </li>
    <li>
        <a ne-mouseover="initWeixin()" href="javascript:" target="_self" class="ne-shares-weixin">
            <span class="inner">
                <i class="ep-share-icon ep-share-weixin"></i>
                <span class="ep-share-name">΢��</span>
            </span>
        </a>
    </li>
    <li>
        <a ne-click="share('sina')" href="javascript:">
            <span class="inner">
                <i class="ep-share-icon ep-share-sina"></i>
                <span class="ep-share-name">΢��</span>
            </span>
        </a>
    </li>
    <li class="last">
        <a ne-click="share('qzone')" href="javascript:">
            <span class="inner">
                <i class="ep-share-icon ep-share-qzone"></i>
                <span class="ep-share-name">QQ�ռ�</span>
            </span>
        </a>
    </li>
</ul>
</div>
<div class="ne-shares-qrwrap">
  <div class="ne-shares-qrarr"></div>
  <div ne-role="qrcode" class="ne-shares-qrcode"></div>
  <p>��΢��ɨ���ά��</p><p>���������Ѻ�����Ȧ</p>
</div>
</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%}%>
                    </script>
                </div>
            </li>
        </ul>
        <div class="load_more_foot"></div>
        <!-- ���ظ��� -->
        <a class="load_more_btn" target="_self" ne-click="clickLoadMore();" ne-hide="{{myState.counter >=myState.totalPage}}">
           <div class="post_addmore" ne-visible="{{myState.counter < myState.totalPage && !myState.loading}}">
               <i>+</i>
               <span>���ظ���</span>
           </div>
           <div class="post_adding" ne-show="{{myState.loading}}">
               <i>+</i>
               <span>������...</span>
           </div>
       </a>
        <!-- �Ѿ�������� -->
        <a class="load_more_btn" ne-show="{{myState.counter >= myState.totalPage}}" href="http://mobile.163.com/update/">
            <div class="post_addmore">
                <i>+</i>
                <span>�鿴ȫ��</span>
            </div>
        </a>
    </div>
    <div class="blank" id="base_bottom"></div>
</div>
</div>
            
            <!-- �ұ��� -->
            <div class="right_bar">
                <!-- 960���¿�Ѷ -->
                <div ne-module="">
<div class="rf-newest">
    <div class="commen_tit">
        <h2>���¿�Ѷ</h2>
    </div>
    <div  ne-plugin="/modules/plugins/scroller.js" ne-plugin-state="axis:y;autoHide:true;">
    <!-- <div> -->
        <div class="newest-lists" id="scrollbar">
            <ul>
                                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0701/07/EJ011TL50011819H.html" class="nl_detail">
                        <p class="nl-title">
                                                        ����Ȩ���ͣ�5Gʱ���������� �����ֻ���ҵ��� 
                            <em class="nl-time">07:49</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0630/10/EITMDP9L00119821.html" class="nl_detail">
                        <p class="nl-title">
                                                        ��սһ�꣡75Ԫ���ϻ�����Ѫ���� ׬����
                            <em class="nl-time">10:04</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0630/10/EITM952I00119821.html" class="nl_detail">
                        <p class="nl-title">
                                                        ��ͨ5G�ֻ�����1�¾͹��ˣ������Ȼ����
                            <em class="nl-time">10:02</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0630/09/EITM057P00119821.html" class="nl_detail">
                        <p class="nl-title">
                                                        ���ѽ��ܲ��ܣ�iPhone11�������ݺ󾹷�ת
                            <em class="nl-time">09:57</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0630/00/EISJV3MM00119821.html" class="nl_detail">
                        <p class="nl-title">
                                                        ����Note 10����������ع⣺�߸�������
                            <em class="nl-time">00:02</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="http://digi.163.com/19/0629/16/EIROMN71001680P9.html" class="nl_detail">
                        <p class="nl-title">
                                                        ����OLED����A9G���飺�������� ������ֻ��һ��
                            <em class="nl-time">16:06</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0629/16/EIRQMR800011819H.html" class="nl_detail">
                        <p class="nl-title">
                                                        OPPO reno��а濪�䣺����ƴ�д�ķ�
                            <em class="nl-time">16:41</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0629/12/EIRBCNMS0011819H.html" class="nl_detail">
                        <p class="nl-title">
                                                        һ���ֻ�7���䣺�콢���ÿ���Pro�棬�ָи���
                            <em class="nl-time">12:13</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0629/10/EIR53B2K00119821.html" class="nl_detail">
                        <p class="nl-title">
                                                        ŵ�����ֻ�ȫ���󽵼ۣ�����Ż�500Ԫ/����139 
                            <em class="nl-time">10:23</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0629/10/EIR4QLFA00119821.html" class="nl_detail">
                        <p class="nl-title">
                                                        21������Ӱ�������ʦ��ȥ ƻ��������Ҫ
                            <em class="nl-time">10:18</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0629/10/EIR4O18J00119821.html" class="nl_detail">
                        <p class="nl-title">
                                                        �й��羺�г��˲�ϡȱ δ�������������200����
                            <em class="nl-time">10:17</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0629/10/EIR4D4NR00119821.html" class="nl_detail">
                        <p class="nl-title">
                                                        99%�ֻ�ɥʧѡ��Ȩ ӡ�ȶԹȸ�������
                            <em class="nl-time">10:11</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0629/10/EIR41PH900119821.html" class="nl_detail">
                        <p class="nl-title">
                                                        �����˾��ֻ��������� ���Ϻ�������
                            <em class="nl-time">10:05</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0629/10/EIR3P85500119821.html" class="nl_detail">
                        <p class="nl-title">
                                                        ��iPhoneҪ����˱䶯����ƻ��ŭ�ޣ�
                            <em class="nl-time">10:00</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0628/10/EIOIJ8VA00119821.html" class="nl_detail">
                        <p class="nl-title">
                                                        ƻ��֤ʵApple Music�������û���6000��
                            <em class="nl-time">10:21</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0628/10/EIOI1LT800119821.html" class="nl_detail">
                        <p class="nl-title">
                                                        ��ά��ְ��ƻ��COO�ܷ�����ķ˹������ƹ���
                            <em class="nl-time">10:12</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0628/09/EIOFLD2M00119821.html" class="nl_detail">
                        <p class="nl-title">
                                                        �����ú���K20 Pro������ʽ����ͷ��ơ�Ƹ� ���
                            <em class="nl-time">09:30</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0628/09/EIOF403I00119821.html" class="nl_detail">
                        <p class="nl-title">
                                                        Ħ�������Ŀڣ���Verizon��Z2 Force������
                            <em class="nl-time">09:20</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0628/08/EIOCCLOR00119821.html" class="nl_detail">
                        <p class="nl-title">
                                                        ������LCD����ָ�Ʒ��������������
                            <em class="nl-time">08:33</em>
                        </p>
                    </a>                              
                </li>
                                <li class="list_item">
                    <span class="wai_cicle"></span>
                    <div class="animate-dot"></div>
                    <a href="https://mobile.163.com/19/0628/08/EIOBEBS900119821.html" class="nl_detail">
                        <p class="nl-title">
                                                        �й��ƶ��ѽ�������5G��Ʒ�⣺����ʽ��������
                            <em class="nl-time">08:16</em>
                        </p>
                    </a>                              
                </li>
                             </ul>
        </div>
        <div class="white_hover"></div>
    </div>
</div>
<script type="text/javascript" _keep="true">
// (function(){
//  // �Զ��������
//  var scrollbar = document.getElementById('scrollbar');
//  if (!isLoweIE()) {
//      Ps.initialize(scrollbar);
//  }else{
//      scrollbar.css("overflow-y","auto");
//  }
    
// })();
// function isLoweIE() {
//  return NTES.browser.msie && (NTES.browser.version < 9);
// }
</script>
<style _keep="true">
    /*.ps-container>.ps-scrollbar-y-rail>.ps-scrollbar-y{width: 2px;background-color: #999999;}*/
    /*.ne_ua_ie8 #scrollbar ,.ne_ua_ie7 #scrollbar {
      overflow-y: auto;
    }*/
</style></div>
                <!-- �����ֻ�PK̨ -->
                <!-- modules/mobile_pk/mobile_pk.js -->
                <!-- �ұ������1 -->
                <div class="ad300_250 channel_relative_2016">
                    <div class="at_item right_ad_item" adType="rightAd" requestUrl="https://nex.163.com/q?app=7BE0FC82&c=mobile&l=31&site=netease&affiliate=mobile&cat=homepage&type=logo300x250&location=1"></div>
			        <a href="javascript:;" target="_self" class="ad_hover_href"></a>
                </div>
                <!-- �ұ��� ���ֹ�� -->
                <!-- �ұ��� ���ֹ�� -->
	<div class="text_ad">
		<ul class="clearfix">
			<li><a href="http://baoxian.163.com/activity/act1606/index.html?from=mhds1607">�����5000Ԫ�Ϳ�</a></li>
			<li><a href="http://piao.163.com/movie/47201.html?from=tech">90���Ӻ���5w������</a></li>
			<li><a href="http://game.cp.163.com/zjh.html?act=tgnzjhwzl">10Ԫ���������</a></li>
			<li><a href="http://888.163.com/?from=tgnh3">1Ԫ��ƻ��6s�ֻ�</a></li>
		</ul>
	</div>
                
                <!-- ������ -->
                <div ne-module="">
<!-- ������ -->
<div class="commen_tit">
    <h2>������</h2>
    <a href="http://mobile.163.com/special/cpshi_list/" class="more"></a>
</div>
<div class="mod1 mb30">
                                            <a class="mod1_img" href="http://digi.163.com/19/0621/00/EI5EK1KN001680P9.html">
        <img src="http://cms-bucket.ws.126.net/2019/07/01/ac352a1104ef4baca76940bf93f064b4.jpeg?imageView&thumbnail=300y189" width="100%" alt="����Robomaster S1���漼��Ӳ��">
        <h3>����Robomaster S1���漼��Ӳ��</h3>
    </a>
        <ul class="mod1_list">
                        <li class="first">
            <span></span>
            <a href="https://mobile.163.com/19/0624/16/EIEURJVP0011819H.html">��Ϊnova5 Pro���飺������֮ѡ</a>
        </li>
                <li class="">
            <span></span>
            <a href="http://digi.163.com/19/0613/11/EHI44TMI001680P9.html">Redmibook 14���⣺�ᱡ��������</a>
        </li>
                <li class="">
            <span></span>
            <a href="http://digi.163.com/19/0610/16/EHASN0O8001680P9.html">���ƴ�Ѷ������¼����SR701�콢��</a>
        </li>
                <li class="">
            <span></span>
            <a href="https://mobile.163.com/19/0607/00/EH1FUHJU0011819H.html">ƻ����һֱŬ����Ϊ��ǰ��õĲ�Ʒ</a>
        </li>
                <li class="">
            <span></span>
            <a href="https://mobile.163.com/19/0604/22/EGS3M3N80011819H.html">iOS13Ԥ�������飺Bug���� ����������</a>
        </li>
            </ul>
</div></div>
                <!-- һ���״� -->
                <div ne-module="">
<!-- һ���״� -->
<div class="commen_tit">
    <h2>һ���״�</h2>
    <a href="http://mobile.163.com/special/ywyd_list/" class="more"></a>
</div>
<div class="ywyd_con mb38">
    <ul>
                                                            <li>
            <a href="http://mobile.163.com/17/0303/00/CEIGGMCF00118035.html" class="mod2_block clearfix">
                <div class="mod2_img">
                    <img src="http://cms-bucket.nosdn.127.net/91e73f78e6c0414c867557189063bdde20170313175654.jpeg?imageView&thumbnail=110y69" width="100%" alt="һ���״�Ϊʲô�ǲ�˹˵��׿��͵����">
                    <span></span>
                </div>
                <div class="mod2_txt">һ���״�Ϊʲô�ǲ�˹˵��׿��͵����</div>
            </a>
        </li>
                                                    <li>
            <a href="http://mobile.163.com/17/0224/09/CE1HQRDP001180ME.html" class="mod2_block clearfix">
                <div class="mod2_img">
                    <img src="http://cms-bucket.nosdn.127.net/0bd4de5fa72946f084697ffbf28be4b920170313175746.jpeg?imageView&thumbnail=110y69" width="100%" alt="һ���״�һ��α��վ��������ƭǮ��">
                    <span></span>
                </div>
                <div class="mod2_txt">һ���״�һ��α��վ��������ƭǮ��</div>
            </a>
        </li>
                                                    <li>
            <a href="http://mobile.163.com/17/0217/00/CDEEUKDA001180ME.html" class="mod2_block clearfix">
                <div class="mod2_img">
                    <img src="http://cms-bucket.nosdn.127.net/82c6af32e19a43869f06fc9d7dcdb37120170313175853.png?imageView&thumbnail=110y69" width="100%" alt="һ���״𣺳��ʱ��α����������ȣ�">
                    <span></span>
                </div>
                <div class="mod2_txt">һ���״𣺳��ʱ��α����������ȣ�</div>
            </a>
        </li>
            </ul>
</div></div>
                <!-- �л���ͼ -->
                <div ne-module="">
<!-- �л���ͼ -->
<div class="commen_tit">
    <h2>�л���ͼ</h2>
    <a href="http://mobile.163.com/photo/#Yjkt" class="more"></a>
</div>
<div class="yjkt_focus mb38" ne-module="/modules/slide/slide.js" ne-state="slideMethod:left;events=mouseover;interval=3000;loop:1">
    <div class="yjkt_box" ne-role="slide-body">
        <!-- ��Ҫ���� 648*402 20��-->
        <div class="yjkt_scroll clearfix" ne-role="slide-scroll">
                                                                         <div class="yjkt_main" ne-role="slide-page">
                <a class="yjkt_main_img" href="http://mobile.163.com/photoview/5QJ50011/53650.html" target="_blank"><img src="http://cms-bucket.nosdn.127.net/c72ff64fc80f4960896d804bc30dfe4820170928155632.jpeg?imageView&thumbnail=300y189" height="100%" alt="����M7ͼ�ͣ�ȫ�����µİ�ȫ����"></a>
                <h2><a href="http://mobile.163.com/photoview/5QJ50011/53650.html" target="_blank">����M7ͼ�ͣ�ȫ�����µİ�ȫ����</a></h2>
            </div>
                                                             <div class="yjkt_main" ne-role="slide-page">
                <a class="yjkt_main_img" href="http://mobile.163.com/photoview/5QJ50011/53160.html" target="_blank"><img src="http://cms-bucket.nosdn.127.net/4b8c37c195e2427db47059087b2840e020170608113613.jpeg?imageView&thumbnail=300y189" height="100%" alt="��������� ����S10���ͼ��"></a>
                <h2><a href="http://mobile.163.com/photoview/5QJ50011/53160.html" target="_blank">��������� ����S10���ͼ��</a></h2>
            </div>
                                                             <div class="yjkt_main" ne-role="slide-page">
                <a class="yjkt_main_img" href="http://mobile.163.com/photoview/52KG0011/52521.html#p=C99V1LR752KG0011" target="_blank"><img src="http://cms-bucket.nosdn.127.net/3a5e554e78504db1bb090dea66b446ef20170119165826.jpeg?imageView&thumbnail=300y189" height="100%" alt="˫������ vivo X9 Plusͼ��"></a>
                <h2><a href="http://mobile.163.com/photoview/52KG0011/52521.html#p=C99V1LR752KG0011" target="_blank">˫������ vivo X9 Plusͼ��</a></h2>
            </div>
                    </div>
    </div>
    <div class="yjkt_nav">
        <ul class="clearfix">
                                    <li ne-role="slide-nav">
            </li>
                        <li ne-role="slide-nav">
            </li>
                        <li ne-role="slide-nav">
            </li>
                    </ul>
    </div>
    <a ne-role="slide-prev" class="yjkt_focus_prev">&lt;</a>
    <a ne-role="slide-next" class="yjkt_focus_next">&gt;</a>
</div></div>
                
                <!-- ר��߻� -->
                <!-- modules/zhtch/zhtch.js -->
                <!-- �ع�̨ -->
                <!-- modules/mod2/bgt.html -->
                <!-- ���Ŀ� -->
                <!-- modules/mod1/paike.html -->
                <!-- ١�ƹ���·��� -->
                <!-- modules/mod1/tzhg.html -->
                <div class="blank" id="base_right"></div>
                <!-- �ұ������2 -->
                <div class="ad300_250 channel_relative_2016" id="fixed_ad">
                    <div class="at_item right_ad_item" adType="rightAd" requestUrl="https://nex.163.com/q?app=7BE0FC82&c=mobile&l=32&site=netease&affiliate=mobile&cat=homepage&type=logo300x250&location=2"></div>
			        <a href="javascript:;" target="_self" class="ad_hover_href"></a> 
                </div>
            </div>
            <!-- �ұ������� -->
        </div>
        <!-- �ײ��ֲ� -->
        <div ne-module="">
<div class="bottomnews_focus_box mt60">
    <div class="bottomnews_focus" ne-module="/modules/slide/slide.js" ne-state="slideMethod:left;events=mouseover;interval=3000;loop:1">
        <div class="bottomnews_box" ne-role="slide-body">
            <!-- ��Ҫ���� 648*402 20��-->
            <div class="bottomnews_scroll clearfix" ne-role="slide-scroll">
                <!-- һҳ -->
                <div class="bottomnews_main clearfix" ne-role="slide-page">
                    <!-- �� -->
                                                            <div class="bottomnews_main_bimg bottomnews_main_img fl">
                        <a href="http://mobile.163.com/photoview/52KG0011/53889.html" target="_blank">
                            <img src="http://pic-bucket.ws.126.net/photo/0011/2019-09-16/EP7N7ADP52KG0011NOS.jpg" width="100%" height="100%" >
                        </a>
                        <h2><a href="http://mobile.163.com/photoview/52KG0011/53889.html" target="_blank">5Gȫ���콢vivo NEX 3���ͼ�ͣ������ռ��</a></h2>
                    </div>
                                        <!-- �� -->
                    <div class="fl bottomnews_main_r">
                        <div class="bottomnews_main_simgs clearfix">
                                                                                    <div class="bottomnews_main_simg bottomnews_main_img">
                                <a href="http://mobile.163.com/photoview/52KG0011/53888.html" target="_blank">
                                    <img src="http://pic-bucket.ws.126.net/photo/0011/2019-09-14/EP2LHMCJ52KG0011NOS.jpg" width="100%" height="100%" >
                                </a>
                                <h2><a href="http://mobile.163.com/photoview/52KG0011/53888.html" target="_blank">����16s Proĺ��ɭ�ְ����ͼ��:�ÿ�������</a></h2>
                            </div>
                                                        <div class="bottomnews_main_simg bottomnews_main_img">
                                <a href="http://mobile.163.com/photoview/52KG0011/53870.html" target="_blank">
                                    <img src="http://pic-bucket.ws.126.net/photo/0011/2019-07-04/EJ8ONLTA52KG0011NOS.jpg" width="100%" height="100%" >
                                </a>
                                <h2><a href="http://mobile.163.com/photoview/52KG0011/53870.html" target="_blank">1899Ԫrealme X��ʦ�����ͼ�ͣ��Լ۱�����</a></h2>
                            </div>
                                                        <div class="bottomnews_main_simg bottomnews_main_img">
                                <a href="http://mobile.163.com/photoview/52KG0011/53867.html" target="_blank">
                                    <img src="http://pic-bucket.ws.126.net/photo/0011/2019-06-14/EHL7P9EN52KG0011NOS.jpg" width="100%" height="100%" >
                                </a>
                                <h2><a href="http://mobile.163.com/photoview/52KG0011/53867.html" target="_blank">4499Ԫһ��7 Pro۬�½��ͼ�ͣ����ɺܳ�ɫ</a></h2>
                            </div>
                                                        <div class="bottomnews_main_simg bottomnews_main_img">
                                <a href="http://mobile.163.com/photoview/52KG0011/53862.html" target="_blank">
                                    <img src="http://pic-bucket.ws.126.net/photo/0011/2019-05-21/EFO135P252KG0011NOS.jpg" width="100%" height="100%" >
                                </a>
                                <h2><a href="http://mobile.163.com/photoview/52KG0011/53862.html" target="_blank">ǿ���������������980 ��ҫ20 Pro���ͼ��</a></h2>
                            </div>
                                                    </div>
                    </div>
                </div>
                <!-- һҳ -->
                <div class="bottomnews_main clearfix" ne-role="slide-page">
                    <!-- �� -->
                                                            <div class="bottomnews_main_bimg bottomnews_main_img fl">
                        <a href="http://mobile.163.com/photoview/52KG0011/53861.html" target="_blank">
                            <img src="http://pic-bucket.ws.126.net/photo/0011/2019-05-09/EEOIJMA252KG0011NOS.jpg" width="100%" height="100%" >
                        </a>
                        <h2><a href="http://mobile.163.com/photoview/52KG0011/53861.html" target="_blank">����16s��Ӱ������ͼ�ͣ�������ɫ��ɧ��</a></h2>
                    </div>
                                        <!-- �� -->
                    <div class="fl bottomnews_main_r">
                        <div class="bottomnews_main_simgs clearfix">
                                                                                    <div class="bottomnews_main_simg bottomnews_main_img">
                                <a href="http://mobile.163.com/photoview/52KG0011/53811.html" target="_blank">
                                    <img src="http://pic-bucket.ws.126.net/photo/0011/2018-12-20/E3F5Q0GI52KG0011NOS.jpg" width="100%" height="100%" >
                                </a>
                                <h2><a href="http://mobile.163.com/photoview/52KG0011/53811.html" target="_blank">����С��ϲ OPPO R17/R17 Pro������ͼ��</a></h2>
                            </div>
                                                        <div class="bottomnews_main_simg bottomnews_main_img">
                                <a href="http://mobile.163.com/photoview/52KG0011/53809.html" target="_blank">
                                    <img src="http://pic-bucket.ws.126.net/photo/0011/2018-12-17/E38DU85152KG0011NOS.jpg" width="100%" height="100%" >
                                </a>
                                <h2><a href="http://mobile.163.com/photoview/52KG0011/53809.html" target="_blank">��Ϊnova 4����ͼ�ͣ�ʱ����ɫ ����ȫ����</a></h2>
                            </div>
                                                        <div class="bottomnews_main_simg bottomnews_main_img">
                                <a href="http://mobile.163.com/photoview/52KG0011/53800.html" target="_blank">
                                    <img src="http://pic-bucket.ws.126.net/photo/0011/2018-11-02/DVKVEF0B52KG0011NOS.jpg" width="100%" height="100%" >
                                </a>
                                <h2><a href="http://mobile.163.com/photoview/52KG0011/53800.html" target="_blank">����ȫ�������ֵ�ͼ�ͣ�С����ҫ������ѡ˭</a></h2>
                            </div>
                                                        <div class="bottomnews_main_simg bottomnews_main_img">
                                <a href="http://mobile.163.com/photoview/52KG0011/53799.html" target="_blank">
                                    <img src="http://pic-bucket.ws.126.net/photo/0011/2018-11-01/DVI4MJ5L52KG0011NOS.jpg" width="100%" height="100%" >
                                </a>
                                <h2><a href="http://mobile.163.com/photoview/52KG0011/53799.html" target="_blank">˫��ȫ�����콢nubia X���ͼ�ͣ���������</a></h2>
                            </div>
                                                    </div>
                    </div>
                </div>
                <!-- һҳ -->
                <div class="bottomnews_main clearfix" ne-role="slide-page">
                    <!-- �� -->
                                                            <div class="bottomnews_main_bimg bottomnews_main_img fl">
                        <a href="http://mobile.163.com/photoview/52KG0011/53794.html" target="_blank">
                            <img src="http://pic-bucket.ws.126.net/photo/0011/2018-10-24/DUSLRB5752KG0011NOS.jpg" width="100%" height="100%" >
                        </a>
                        <h2><a href="http://mobile.163.com/photoview/52KG0011/53794.html" target="_blank">С��MIX 3���ͼ�ͣ�������ƴ���ȫ�½���</a></h2>
                    </div>
                                        <!-- �� -->
                    <div class="fl bottomnews_main_r">
                        <div class="bottomnews_main_simgs clearfix">
                                                                                    <div class="bottomnews_main_simg bottomnews_main_img">
                                <a href="http://mobile.163.com/photoview/52KG0011/53766.html" target="_blank">
                                    <img src="http://pic-bucket.ws.126.net/photo/0011/2018-08-12/DP1S6QOD52KG0011NOS.jpg" width="100%" height="100%" >
                                </a>
                                <h2><a href="http://mobile.163.com/photoview/52KG0011/53766.html" target="_blank">ȫ�մ�Ҳ���ɫ С��MIX 2S���������ͼ��</a></h2>
                            </div>
                                                        <div class="bottomnews_main_simg bottomnews_main_img">
                                <a href="http://mobile.163.com/photoview/52KG0011/53763.html" target="_blank">
                                    <img src="http://pic-bucket.ws.126.net/photo/0011/2018-08-07/DOL46SDT52KG0011NOS.jpg" width="100%" height="100%" >
                                </a>
                                <h2><a href="http://mobile.163.com/photoview/52KG0011/53763.html" target="_blank">����845+����ָ�� ȫ�����콢����16thͼ��</a></h2>
                            </div>
                                                        <div class="bottomnews_main_simg bottomnews_main_img">
                                <a href="http://mobile.163.com/photoview/52KG0011/53762.html" target="_blank">
                                    <img src="http://pic-bucket.ws.126.net/photo/0011/2018-07-31/DO2E397C52KG0011NOS.jpg" width="100%" height="100%" >
                                </a>
                                <h2><a href="http://mobile.163.com/photoview/52KG0011/53762.html" target="_blank">3699ԪС��8͸��̽���濪�䣺���ṻ��ֵ</a></h2>
                            </div>
                                                        <div class="bottomnews_main_simg bottomnews_main_img">
                                <a href="http://mobile.163.com/photoview/52KG0011/53756.html" target="_blank">
                                    <img src="http://pic-bucket.ws.126.net/photo/0011/2018-07-05/DLVHOC2952KG0011NOS.jpg" width="100%" height="100%" >
                                </a>
                                <h2><a href="http://mobile.163.com/photoview/52KG0011/53756.html" target="_blank">��ֵ�ٴ��¸� ȫ��һ��6������������ͼ��</a></h2>
                            </div>
                                                    </div>
                    </div>
                </div>
            </div>
        </div>
        <a ne-role="slide-prev" class="bottomnews_focus_prev">&lt;</a>
        <a ne-role="slide-next" class="bottomnews_focus_next">&gt;</a>
        <div class="bottomnews_mask bottomnews_mask_l"></div>
        <div class="bottomnews_mask bottomnews_mask_r"></div>
    </div>
</div></div>
        <div class="foot_execute_leader area">ִ�����ࣺ�Ⲩ_NT3514</div>
        <div class="h66"></div>
        <!-- �ײ����� -->
        <div ne-module="">
<div class="footer_bg">
	<div class="footer area clearfix">
		<div class="footer-channel">
			<a href="http://mobile.163.com/" class="footer-channel_pic"></a>
		</div>
		<div class="footer-content">
			<div class="footer-module-content">
				<h3><a href="http://mobile.163.com/">�ֻ�</a></h3>
				<p class="clearfix">
                    <a href="http://mobile.163.com/newmobile/">�»���Ѷ</a>
                    <a href="http://mobile.163.com/special/00111SJN/ycpc.html">ԭ������</a>
                    <a href="http://mobile.163.com/mobileshow/">�л���ͼ</a>
                    <a href="http://mobile.163.com/special/">ר�ⱨ��</a>
                </p>
                <h3><a href="http://product.mobile.163.com/">�����ֻ���</a></h3>
                <p class="clearfix">
                    <a href="http://product.mobile.163.com/">ѡ������</a>
                    <a href="http://product.mobile.163.com/search/#!os=&amp;price=0000t0000&amp;pmsize=0.0t0.0&amp;brand=&amp;design=&amp;network=&amp;advance=&amp;sequence=hd&amp;view=infolist&amp;pageNo=1&amp;type=ajax">�����ֻ�</a>
                    <a href="http://product.mobile.163.com/search/#!os=&amp;price=0000t0000&amp;pmsize=0.0t0.0&amp;brand=&amp;design=&amp;network=&amp;advance=&amp;sequence=hd&amp;view=infolist&amp;pageNo=1&amp;type=ajax">�����ֻ�</a>
                    <a href="http://product.mobile.163.com/brand/">�����ֻ�Ʒ��</a>
                </p>
			</div>
			<div class="footer-module-content">
				<h3><a href="http://mobile.163.com/mi/">�ƶ�������</a></h3>
				<p class="clearfix">
                    <a href="http://mobile.163.com/special/view/">�ƶ�������</a>
                    <a href="http://mobile.163.com/special/salon/">��ǻ�ɳ��</a>
                    <a href="http://mobile.163.com/tongzhanggui/">١�ƹ���·���</a>
                    <a href="http://mobile.163.com/special/appstory/">APP�ɳ���</a>
                </p>
			</div>
		</div>
		<div class="other-info">
			<div class="passport-entry">
				<div class="lofter"><a href="http://www.lofter.com/?act=qb163rk_20141031_03"></a></div>
				<div class="mail"><a href="http://email.163.com/"></a></div>
				<div class="rss"><a rel="nofollow" href="http://www.163.com/rss"></a></div>
				<a href="http://study.163.com/?utm_source=163.com&amp;utm_medium=web_bottomlogo&amp;utm_campaign=business" class="ic_cloudapp_ft"></a>
				<div class="ic_newsapp_ft"><a href="http://www.163.com/newsapp/#f=down"></a></div>
			</div>
			<div class="top_search" style="float:left;">
                    <form target="_blank" id="formtop" name="nisearch_top" method="get" action="http://news.yodao.com/search">
                        <input type="hidden" value="mobile.163" name="keyfrom">
                        <input type="hidden" value="user163" name="suser">
                        <input type="hidden" value="gbk" name="ue">
                        <div class="search-input-area">
                            <span class="hidden">����</span>
                            <input type="text" class="textBox " value="������ؼ���" onfocus="this.value=''" id="searchInput_top" name="q">
                            <input type="submit" id="sb_form_go" class="search-logo" title="����" tabindex="0" value="" name="Submit">
                        </div>
                        <noscript>&amp;amp;amp;lt;select name="site" class="left"&amp;amp;amp;gt;
                            &amp;amp;amp;lt;option value="����" selected="selected"&amp;amp;amp;gt;����&amp;amp;amp;lt;/option&amp;amp;amp;gt;
                            &amp;amp;amp;lt;option value=""&amp;amp;amp;gt;��ҳ&amp;amp;amp;lt;/option&amp;amp;amp;gt;
                            &amp;amp;amp;lt;/select&amp;amp;amp;gt;</noscript>
                        <div id="divSelect" class="left">
                            <input type="hidden" id="siteName" value="����" name="site">
                        </div>
                        <input type="hidden" value="page" id="in" name="in">
                    </form>
                </div>
		</div>
	</div>
</div></div>
        <!-- ���ض��� -->
        <!-- ��ά�� ��ʼ-->
<div class="ns-sidebar none">
    <a href="http://mobile.163.com/16/0808/18/BTVF2BK3001117AJ.html" target="_blank" class="ic_guide">�°�<br/>����</a>
    <div class="ns-side-qrcode"><i class="ic_qrcode"></i></div>
    <div class="ns-side-tolid"><i class="ic_totop"></i></div>
</div>
<style type="text/css" _keep="true">
.ns-sidebar {width: 60px;height:128px;position:fixed;left: 50%; margin-left: 620px;bottom:200px;z-index: 299;_display:none}
.ns9 .ns-sidebar{ margin-left: 500px;}
.ns-side-qrcode {width: 60px;height:76px;margin-bottom: 8px;background: #fff;}
.ns-sidebar .ic_qrcode, .ns-sidebar .ic_totop{background: url(http://static.ws.126.net/f2e/www/index2014/images/sprite_dw2.png);}
.ns-sidebar .ic_qrcode {width: 60px;height: 76px;background-position: 0 -43px;}
.ns-sidebar .ic_totop {width: 46px;height: 25px;background-position: 0 0px;}
.ns-side-qrcode i {float: left;}
.ns-side-tolid {width: 60px;height:60px;background: #ddd;cursor:pointer;}
.ns-side-tolid:hover {background: #e9e9e9;}
.ns-side-tolid i {float: left;margin: 15px 0 0 7px;}
.gameapp_download{background: url(http://static.ws.126.net/f2e/www/index2014/images/app.png) no-repeat;padding-left: 17px;height: 20px;display: inline-block;}
.ic_guide{width: 58px;height: 46px;display: block;border: 1px solid #e5e5e5;margin-bottom: 8px;text-align: center;font: 14px/18px '΢���ź�';color: #888888;padding-top: 12px;text-decoration: none;background-color: #fff;}
.ic_guide:hover{border-color: #ff3333;color: #ff3333;text-decoration: none;}
</style>
<script _keep="true">
(function($){
	initSidebar();
	function initSidebar(){
        
        if(!!window.ActiveXObject && !window.XMLHttpRequest) return;
               
    	var timer,sidebar = $('.ns-sidebar'),sideTolid = $('.ns-side-tolid', sidebar),sideQrcode = $('.ns-side-qrcode', sidebar);
    	var popupQrcode = $('.ns-popup-qrcode', sidebar);
        sideTolid.addEvent("click",function() {
            var top = document.body.scrollTop || document.documentElement.scrollTop;
            var left = document.body.scrollLeft || document.documentElement.scrollLeft;
            if(top > 0) {
                top -= (top/3) + 10;
                window.scrollTo(left, top);
                setTimeout(arguments.callee, 10);
            } else {
                window.scrollTo(left, 0);
                sidebar.addCss("none");
            }
        });  
       
            
        $(window).addEvent("scroll", function() {
            var top = document.body.scrollTop || document.documentElement.scrollTop;
            if(top > 600) {
                sidebar[0].style.display = 'block';
            } else {
                sidebar[0].style.display = 'none';
            }
        });    
    }
})(NTES);
</script>
<!-- ��ά�� ����-->
    </div>
    <!-- �ײ������� -->
    <div class="N-nav-bottom">
    <div class="N-nav-bottom-main">
        <div class="ntes_foot_link">
            <span class="N-nav-bottom-copyright"><span class="N-nav-bottom-copyright-icon">&copy;</span> 1997-2019 ���׹�˾��Ȩ����</span>
            <a href="http://corp.163.com/">About NetEase</a> |
            <a href="http://gb.corp.163.com/gb/about/overview.html">��˾���</a> |
            <a href="http://gb.corp.163.com/gb/contactus.html">��ϵ����</a> |
            <a href="http://corp.163.com/gb/job/job.html">��Ƹ��Ϣ</a> |
            <a href="http://help.163.com/ ">�ͻ�����</a> |
            <a href="http://gb.corp.163.com/gb/legal.html">��˽����</a> |
            <a href="http://emarketing.163.com/">������</a> |
            <a href="http://sitemap.163.com/">��վ��ͼ</a> |
           <!--  <a ne-role="feedBackLink" ne-click="handleFeedBackLinkClick()" href="http://www.163.com/special/0077450P/feedback_window.html" class="ne_foot_feedback_link">�������</a> | -->
            <a href="http://jubao.aq.163.com/">������Ϣ�ٱ�</a> |
            <a href="https://jubao.163.com/">�����ٱ�</a>
        </div>
    </div>
</div>
</div>
<!--!include collector="foot"-->
<!-- ����β������ -->

<!--  -->
<!-- ��ǰƵ������ͳ�� -->

<!-- STAT WRating v1.0 -->
<!-- STAT NetEase Devilfish 2006 -->
<script type="text/javascript" src="//analytics.163.com/ntes.js"></script>
<script type="text/javascript">
    _ntes_nacc = "mobile"; //վ��ID��
    neteaseTracker();
</script>
<!-- big data statistics -->

<!-- big data analysis 0628 -->
<script src="https://static.ws.126.net/f2e/products/analysis/js/analysis0628.350ctAoOoFtN.1.js"></script>
<!-- �ж��豸 -->
<script type="text/javascript" _keep="true">
(function() {
    if(/s=noRedirect/i.test(location.search)) return; 
    if(/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent))) {
        try {
            if(/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
            } else if(/iPad/i.test(navigator.userAgent)) {
                bowlder('body').addClass('pad');
            }
        } catch(e) {}
    }   
})();
</script>
<script>!function(i){function t(){}function n(){var i=Math.round((+new Date-k)/1e3);return i<0?0:i}function e(i){var t=i.className,n=_(i),e={script:1,style:1,link:1,img:1,hr:1,br:1},a=!0;return e[n]?a=!1:/blank\d/.test(t)&&(a=!1),a}function a(t){w||(p&&window._ntes_sendInfo?(i.each(g,function(i,t){c(i)}),w=!0):g.push(t)),w&&c(t)}function o(i){return i<10?i.toString():i>62?"z":String.fromCharCode(i+(i<36?55:61))}function s(i,t){if(!t)return i;var n=i.length-1,e=i.charCodeAt(n);return e<58?e-=48:e<91?e-=55:e<123&&(e-=61),i.substr(0,n)+o(e+t)}function f(i,t,n){t&&t.setAttribute((n?"_":"")+"jcid",i)}function r(i){if(i){var t=this.getAttribute("href")||"";b++;var e="/ntes_p?"+A+"&_nct="+n()+"&_nah="+escape(t)+"&_nat={id}_"+i;a(e)}}function c(i){_ntes_sendInfo("jc",_ntes_src_addr+i.replace("{id}",p))}function l(i,t,n){for(var e={a:1,area:1},a=i,o=null;i.tagName&&i!=C;){if(e[_(i)]){o=i;break}i=i.parentNode}if(o)for(;i&&i!=t&&!(n=i.getAttribute("jcid"));)i=i.parentNode;for(;!n&&!(n=a.getAttribute("_jcid"));)if(a=a.parentNode,!a||!a.tagName||a==C)return;n&&r.call(o||i,n)}function _(i){return i.tagName.toLowerCase()}function u(i){return(i.innerHTML.match(/jcid=".*?"/g)||[]).join("")}function d(t,n){var e,a;i(t).bind("mouseover touchstart",function(){var i=u(t),o=t.innerHTML.replace(/<.*?>/g,"").length;!t.children.length||i==e&&o==a||(n(),e=u(t),a=o)})}function m(i,t){var n=i[0],e=i.level;return n&&e&&v(n,e,t),n}function v(t,n,e){if(i.isArray(t))i.each(t,function(i,t){v(i,n,e)});else if("object"==typeof t)if(t.i)t.k=s(t.i.substr(0,n+1),e)+t.i.substr(n+1);else for(var a in t)v(t[a],n,e)}var p,h,A="_nacc=siteclick&_npurl="+escape(document.URL),b=0,w=!1,g=[],C=document.body,k=window.performance&&window.performance.timing?window.performance.timing.connectStart:+new Date,j=[function(t,n,e){t+=o(e.start||1),e.bind?i(n).bind("click",function(i){r.call(n,t)}):f(t,n,e.all)},function(t,n,e){var a,s=e.start||1,r=e.query||"a";/(.*?)\|(.*)/.test(r)?(a=RegExp.$1,r=RegExp.$2,i(a,n).each(function(n,a){s=e.start||1,i(r,n).each(function(i,n){f(t+o(s++),i,e.all)})})):i(r,n).each(function(i,n){f(t+o(s++),i,e.all)})},function(t,n,a){for(var s=1,r=a.level||1,c=[n],l=0;l<r;l++){var u=[];i.each(c,function(t,n){var a=0;"a"==_(t)||/ntes-nav-select/.test(t.className)||i.each(t.children,function(i,t){e(i)&&(u.push(i),a++)}),a||u.push(t)}),c=u}i.each(c,function(i,n){f(t+o(s++),i,a.all)})},function(t,n,e){var a=i(">form",n);a[0]&&a.bind("submit",function(){r.call(this,t+"1")})},function(t,n,e){var a=i(e.h,n),s=i(e.b,n);if(a&&s){var r=e.step||10,c=2;f(t+"1",n),a.each(function(i,n){f(t+o(c+n*r),i)}),s.each(function(i,n){f(t+o(c+n*r+1),i)})}},function(t,n,a){var s=a.union||"",r={};if(/^[\s\d,]+$/.test(s)){var c=0;i.each(s.split(/\s*,\s*/),function(i,t){if(i=parseInt(i))for(var n=0;n<i;n++)r[c++]=t})}var l=2;f(t+"1",n);var _=parseInt(a.step)||10,u=i(a.h,n);if(u&&d){i.each(u,function(i,n){f(t+o(n*_+l),i)});var d=i(a.b,n);i.each(d,function(n,a){var s=a*_+l+1,c=n.children;if(0==c.length)c=[n];else for(;1==c.length;)c=c[0].children;var u=0;i.each(c,function(i,n){e(i)&&("undefined"!=typeof r[n]&&(u=r[n]),f(t+o(s+u),i),u++)})})}}];t.prototype={init:function(t,e){t&&5==t.length&&(p=t),h||(h=location.href.indexOf("_aCM")>-1||Math.random()<(e||.1),h&&(i("body").bind("click",function(i){l(i.target,C)}),i(function(){function t(){o&&(a("/ntes_u?"+o+"&_nct="+n()+"&_mcn="+b+s),o=0)}var e=i(window),o=A+"&_nch={id}",s="",f="&_msl="+n();e.bind("load",function(){s="&_msl="+n()}),a("/ntes_u?"+o+f),e.bind("beforeunload",t);var r=navigator.userAgent.toLowerCase();!/compatible/.test(r)&&/firefox/.test(r)&&e.bind("unload",t)}),this.retain&&this.area(C,this.retain)))},area:function(i,t,n){for(var e in t){var a=!1,o=t[e];o.level=n||0,/(.*?)=$/.test(e)&&(e=RegExp.$1,a=!0),this.procA(i,e,o,a)}},procA:function(t,n,e,a){var o=this,s=e.level+1;if(a)return void d(t,function(){o.procA(t,n,e)});var f=function(i,t){o.area(i,t,s)},r=0,c=0,l=0;/(.*?)!$/.test(n)&&(n=RegExp.$1,c=1),/(.*?)\*$/.test(n)?(n=RegExp.$1,r=1):/(.*?)\+$/.test(n)&&(n=RegExp.$1,l=1);var _,u=n?i(n,t):[t],v=0,p=u.length;for(_=0;_<p;_++){var h=u[_];if(!c||!h.id){var A=r?e[0]:e[v];if(l&&1==e.length&&(A=m(e,v)),A&&h)if(A.i)for(var b=A.s||1,w=0;w<b;w++)A.j=w,this.zone(u[_+w],A);else f(h,A);v++}}},zone:function(i,t){var n=s(t.k||t.i,t.j),e=j[t.f||0],a=t.p||{};i&&e&&(a.dyn?d(i,function(){e(n,i,a)}):e(n,i,a))},batch:function(i){h?this.area(C,i):this.retain=i}},window._aCM=new t}(window.bowlder),function(){_aCM.init(window._aCMID||"sja01"),setTimeout(function(){_aCM.batch({".ntes-nav-main":[{".ntes-nav-index-title":[{"":[{i:"111"}]}],".ntes-nav-app":[{"":[{i:"121",f:1}]}],".ntes-nav-quick-navigation-btn":[{"":[{i:"131"}]}],".ntes-quicknav-list":[{".ntes-quicknav-column":[{i:"141",f:1,s:11}],".ntes-nav-sitemap":[{i:"14C"}]}],".c-fl":[0,0,0,{".ntes-nav-login-title":[{i:"151"}],">.ntes-nav-select":[{i:"152",f:1}]},0,{"*#js_login_suggest_wrap":[{i:"161",f:1}],"#js_N_navLogout":[{i:"162"}]}],".ntes-nav-inside>li":[{">.ntes-nav-select":[{i:"171",f:1}]},{">.ntes-nav-select":[{i:"181",f:1}]},{">.ntes-nav-select":[{i:"191",f:1}]},{">.ntes-nav-select":[{i:"1A1",f:1}]},{">.ntes-nav-select":[{i:"1B1",f:1}]},{">.ntes-nav-select":[{i:"1C1",f:1}]},{">.ntes-nav-select":[{i:"1D1",f:1}]},{">.ntes-nav-select":[{i:"1E1",f:1}]},{">.ntes-nav-select":[{i:"1F1",f:1}]}]}],".N-nav-channel":[{"":[{"":[{i:"211",f:1}]}]}],".topad":[{"":[{"":[{i:"311"}]}]}],".channel":[{h1:[{"":[{i:"411"}]}],".top-search":[{"":[{i:"421",f:3}]}],".nav":[{"":[{i:"431",f:1}]}]}],".product":[{ul:[{">.first":[{i:"511"}],">li":[0,{i:"512"},{i:"513"},{i:"514"},{i:"515"},{i:"516"},{i:"517"},{i:"518"},{i:"519"},{i:"51A"},{i:"51B"},{i:"51C"}]}],".more_block":[{"":[{i:"521"}]}],".hot_mobile_nav":[{".first":[{i:"531"}],dd:[0,{i:"532"},{i:"533"},{i:"534"},{i:"535"}],">.more_block":[{i:"536"}]}],".hot_mobile_main":[{"div.hot_mobile_item":[{i:"541",s:35}]}],".more":[0,0,{"":[{i:"551"}]}],".today_product_pic":[{"":[{i:"561"}]}],".today_product_intro":[{">h3":[{i:"571"}],">.today_product_links":[{i:"572",f:1}]}]}],".topnews1200":[{".topnews_scroll":[{">.topnews_main":[{i:"611",f:2,s:2}]}],".topnews_nav":[{"":[{i:"621"}]}],".topnews_focus_prev":[{"":[{i:"631"}]}],".topnews_focus_next":[{"":[{i:"641"}]}],".topnews_r_item":[{"":[{i:"651",f:2}]},{"":[{i:"661",f:2}]},{"":[{i:"671",f:2}]},{"":[{i:"681",f:2}]}]}],".topnews960":[{".topnews_main":[{"":[{i:"711",f:2}]},{"":[{i:"721",f:2}]},{"":[{i:"731",f:2}]},{"":[{i:"741",f:2}]}],".topnews_nav":[{"":[{i:"751"}]}],".topnews_focus_prev":[{"":[{i:"761"}]}],".topnews_focus_next":[{"":[{i:"771"}]}],".topnews_r_item":[{"":[{i:"781",f:2}]},{"":[{i:"791",f:2}]}]}],".left_part":[{".list_item":[{">.nl_detail":[{i:"811"}]},{">.nl_detail":[{i:"821"}]},{">.nl_detail":[{i:"831"}]},{">.nl_detail":[{i:"841"}]},{">.nl_detail":[{i:"851"}]},{">.nl_detail":[{i:"861"}]},{">.nl_detail":[{i:"871"}]},{">.nl_detail":[{i:"881"}]},{">.nl_detail":[{i:"891"}]},{">.nl_detail":[{i:"8A1"}]},{">.nl_detail":[{i:"8B1"}]},{">.nl_detail":[{i:"8C1"}]},{">.nl_detail":[{i:"8D1"}]},{">.nl_detail":[{i:"8E1"}]},{">.nl_detail":[{i:"8F1"}]},{">.nl_detail":[{i:"8G1"}]},{">.nl_detail":[{i:"8H1"}]},{">.nl_detail":[{i:"8I1"}]},{">.nl_detail":[{i:"8J1"}]},{">.nl_detail":[{i:"8K1"}]}],".ne-scrl-ct":[{"":[{i:"8L1"}]}]}],".datalist":[{">.newsdata_wrap":[{"":[{i:"911",f:2,p:{level:4}}]}]}],".right_bar":[{".rf-newest":[{".list_item":[{i:"A11",s:20}],".ne-scrl-ct":[{i:"A1L"}]}],".mobile_pk":[{".pk_item_intro_l":[{i:"A21",f:1},{i:"A24",f:1},{i:"A27",f:1},{i:"A2A",f:1},{i:"A2D",f:1}],".pk_item_intro_m":[{i:"A22"},{i:"A25"},{i:"A28"},{i:"A2B"},{i:"A2E"}],".pk_item_intro_r":[{i:"A23",f:1},{i:"A26",f:1},{i:"A29",f:1},{i:"A2C",f:1},{i:"A2F",f:1}]}],">div>div!":[0,0,{"":[{i:"A31"}]},0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,{"":[{i:"AC1"}]}],".text_ad":[{li:[{i:"A41",s:4}]}],">div!":[0,0,0,0,{">.commen_tit":[{i:"A51"}],">.mod1":[{i:"A52",f:1}]},{">.commen_tit":[{i:"A61"}],li:[{i:"A62",s:3}]},{">.commen_tit":[{i:"A71"}],".yjkt_main":[{i:"A72",f:1,s:3}],".yjkt_nav":[{i:"A75"}],".yjkt_focus_prev":[{i:"A76"}],".yjkt_focus_next":[{i:"A77"}]},{">.commen_tit":[{i:"A81"}],a:[0,{i:"A82"},{i:"A83"},{i:"A84"},{i:"A85"}]},{">.commen_tit":[{i:"A91"}],">.bgt_big":[{i:"A92"}],li:[{i:"A93",s:3}]},{">.commen_tit":[{i:"AA1"}],">.mod1":[{i:"AA2",f:1}]},{">.commen_tit":[{i:"AB1"}],">.mod1":[{i:"AB2",f:1}]}]}],".bottomnews_focus":[{".bottomnews_main_bimg":[{"":[{i:"B11",f:2}]},{"":[{i:"B31",f:2}]},{"":[{i:"B51",f:2}]}],".bottomnews_main_simgs":[{">.bottomnews_main_simg":[{i:"B21",f:2,s:4}]},{">.bottomnews_main_simg":[{i:"B41",f:2,s:4}]},{">.bottomnews_main_simg":[{i:"B61",f:2,s:4}]}],">.bottomnews_focus_prev":[{"":[{i:"B71"}]}],">.bottomnews_focus_next":[{"":[{i:"B81"}]}]}],".footer":[{">.footer-channel":[{"":[{i:"C11"}]}],h3:[{"":[{i:"C21"}]},{"":[{i:"C41"}]},{"":[{i:"C61"}]}],p:[{"":[{i:"C31",f:1}]},{"":[{i:"C51",f:1}]},{"":[{i:"C71",f:1}]}],".lofter":[{"":[{i:"C81"}]}],".mail":[{"":[{i:"C91"}]}],".rss":[{"":[{i:"CA1"}]}],".ic_cloudapp_ft":[{"":[{i:"CB1"}]}],".ic_newsapp_ft":[{"":[{i:"CC1"}]}],".top_search":[{"":[{i:"CD1",f:3}]}]}],".ic_guide":[{"":[{"":[{i:"D11"}]}]}],".ntes_foot_link":[{"":[{"":[{i:"E11",f:1}]}]}],".ne_foot_feedback_box":[{">.feedback_close":[{"":[{i:"F11"}]}]}]})},1e3)}();</script>
<!-- ���λ���������½��Ӵ� -->
<div id="ssp_6502161"></div>
<script>
(function() {
	(window.slotbydup=window.slotbydup || []).push({
		id: '6502161',
		container: 'ssp_6502161',
		size: '320,240',
		display: 'inlay-fix',
		async:true
	});
})();
</script>
<script async defer src="https://dup.baidustatic.com/js/os.js"></script>
<div id="ssid1"></div>
<!-- ����� -->
<SCRIPT LANGUAGE="JavaScript1.1" SRC="https://g.163.com/jr?site=netease&affiliate=mobile&cat=homepage&type=popup&location=1"></SCRIPT>
<!--��ý��-->
<script type="text/javascript">
// �ߴ�����
(function() {
    var isNs9 = false;
    if(window.innerWidth <1366) { 
        isNs9 = true;
    }
    window.isNs9 = isNs9;
})();
</script>
<!--��ý��-->
<!-- ����ý�� -->
<SCRIPT LANGUAGE="JavaScript1.1" SRC="https://g.163.com/r?site=netease&affiliate=mobile&cat=homepage&type=richmedia&location=1"></SCRIPT>
<!--JS��Ҫɾ�����ڸ�����������-->
<script language="javascript" src="https://img3.126.net/ntesrich/auto/adbox/adbox-v1.1.2-120705.js"></script>
<script language="javascript" src="https://img3.126.net/ntesrich/2013/1210/adControl-indexx-v1.0.2-131210.js"></script>
<!--JS��Ҫɾ�����ڸ�����������-->
<!-- �Ǳ���ʽ ��ɾ-->
<style type="text/css">
 .ad_hover_href {
  width: 30px;
  height: 17px;
  position:absolute;
  left:0;
  bottom:0;
  z-index:10;
  background:url(https://yt-adp.ws.126.net/channel4/ad_3017_ajgf_20190221.png) no-repeat;
 }
</style>
<!-- �Ǳ���ʽ ��ɾ-->
<script src="//static.ws.126.net/163/f2e/mobile/index2016/js/foot~6176a87790c20.js"></script>
  <!--360���ͳ��-->
  <script src="//static.ws.126.net/163/f2e/modules/netsposter/js/netsposter2019_main-f075db76bd.js"></script>
<!--360���ͳ�ƽ���-->
</body>
</html>
