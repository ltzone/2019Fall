<!DOCTYPE HTML>
<!--[if IE 6 ]> <html class="ne_ua_ie6 ne_ua_ielte8"> <![endif]-->
<!--[if IE 7 ]> <html class="ne_ua_ie7 ne_ua_ielte8"> <![endif]-->
<!--[if IE 8 ]> <html class="ne_ua_ie8 ne_ua_ielte8"> <![endif]-->
<!--[if IE 9 ]> <html class="ne_ua_ie9"> <![endif]-->
<!--[if (gte IE 10)|!(IE)]><!--> <html> <!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<meta name="model_url" content="http://news.163.com/special/military_n/" />
<meta name="keywords" content="���£����׾��£�����Ƶ������ž����������й����ӣ�־Ը��������������������Զ�������й��վ����й��������й�½��������ѵ�������ӽ��裬������ӣ�������ӣ�������ӣ��������վ������ʣ�������Խ�ϣ����ɱ����Ϻ���ӡ�ȣ����㵺����ɳȺ������ɳȺ��" />
<meta name="description" content="���׾���Ƶ���ṩ��ף��ʱ�ľ�����Ѷ��ӵ����רҵ�Ķ��Ҿ������ۡ�" />
<meta name="author" content="����" />
<meta name="Copyright" content="���װ�Ȩ����" />
<base target="_blank" />
<title>���׾���</title>
  <script type="text/javascript" _keep="true">
    var matchStr =window.location.href;
    var reURL = /^(https):\/\/.+$/;
    if(!reURL.test(matchStr)){
        window.location.href = "https://war.163.com/";
    }
</script>
<!-- ����3g -->
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

<link href="https://static.ws.126.net/f2e/war/common2015/css/sitehead.EEskuzjUiYFt.13.css" rel="stylesheet" type="text/css" />
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
	<link rel="stylesheet" href="https://static.ws.126.net/163/f2e/war/index2016/css/head~6939caff08d5b.css">
</head>
<body class="ns9">
<div class="second2016_wrap war_second_wrap" ne-module="/war/index2016/modules/index2016.js">
    <!-- Ƶ������ -->
    <link rel="stylesheet" href="//static.ws.126.net/163/f2e/commonnav2019/css/commonnav_headcss-0f01013b0e.css"/>
<!-- urs -->
<script _keep="true" src="https://urswebzj.nosdn.127.net/webzj_cdn101/message.js" type="text/javascript"></script>
<div class="ntes_nav_wrap" id="js_N_NTES_wrap">
  <div class="ntes-nav" id="js_N_nav">
    <div class="ntes-nav-main clearfix">
       <a class="ntes-nav-channel-logo c-fl" href="https://war.163.com/"><img src="//static.ws.126.net/f2e/news/res/channel_logo_new/war.png"></a>       <div class="c-fl">
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
<script src="//static.ws.126.net/163/f2e/commonnav2019/js/commonnav_headjs-9af6aeb4ef.js"></script><style>
    .ntes-nav-channel-logo img{vertical-align: top;}
</style>
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
    <div class="second2016_content">
		<!-- ͷ����� ��ʼ-->
    	<div class="ns_area second2016_top_ad channel_relative_2016 channel_relative_2016_lh">
            <div class="at_item common_ad_item top_ad_column" adType="topColumnAd" requestUrl="https://nex.163.com/q?app=7BE0FC82&c=newswar&l=11&site=netease&affiliate=news&cat=war&type=column960x100&location=10"></div>
            <span class="channel_ad_2016">���</span>
        </div>
    	<!-- ͷ����� ����-->
    	<!-- ͷ������ ��ʼ-->
    	<div class="index_head">
    		<div class="ns_area hd">
			    <h1>
			    	<a href="http://news.163.com/"><span class="channel2019_logo channel2019_war_logo">��������</span></a>
			        <strong>����</strong>
			    </h1>
                <span class="breadcrumbs">
                  <a href="http://www.163.com">������ҳ</a>
                  &gt;
                  <a href="http://news.163.com">��������</a>
                  &gt;
                  <span>���׾���</span>
                </span>
			</div>
            
            <div class="bd">
                <div class="ns_area list">
                	<ul>
     <li class="first"><a href="http://www.163.com/">��ҳ</a></li>
     <li><a href="http://news.163.com/rank/">����</a></li>
     <li><a href="http://news.163.com/photo/#Current">ͼƬ</a></li>
     <li class="menu_guonei"><a href="http://news.163.com/domestic/">����</a></li>
     <li class="menu_guoji"><a href="http://news.163.com/world/">����</a></li>
     <!--<li class="menu_shehui"><a href="http://news.163.com/shehui/">���</a></li>-->
     <li><a href="http://data.163.com/special/datablog/">����</a></li>
     <li class="menu_war"><a href="http://war.163.com/">����</a></li>
     <li class="menu_hangkong"><a href="http://news.163.com/air/">����</a></li>
     <li class="menu_wurenji"><a href="http://news.163.com/uav/">���˻�</a></li>
     <li><a href="http://news.163.com/college">����ѧԺ</a></li>
     <li><a href="http://gov.163.com/">����</a></li>
     <li><a href="http://gongyi.163.com/">����</a></li>
     <li><a href="http://media.163.com/">ý��</a></li>
     <li class="last"><a href="http://news.163.com/special/wangsansanhome/">������</a></li>
 </ul>
                </div>
            </div>
        </div>
    	<!-- ͷ������ ����-->
    	<!-- ��������ͼ -->
    	<div class="ns_area top_news clearfix">
			<!-- ����ͼ -->
			<div ne-module="" class="top_news_focus">
<div ne-module="/modules/slide/slide.js" class="mod_idx_focus" ne-state="slideMethod:left;events=mouseover;interval=4000">
    <div ne-role="slide-body" class="focus_body">
        <ul ne-role="slide-scroll">
                                                                                                                     <!-- ����֡��� -->
                        <li class="current" ne-role="slide-page">
                <a href="http://war.163.com/photoview/4T8E0001/2304485.html" title="�����վ�����硱ս�������ӷ���" class="photo"><img src="http://cms-bucket.ws.126.net/2019/10/06/b17d0246498d4e899f6321cf521f65bb.jpeg?imageView&thumbnail=600y300" width="600" height="300" alt="�����վ�����硱ս�������ӷ���" /></a>
                <span class="bg"></span>
                <h3>
                    <a href="http://war.163.com/photoview/4T8E0001/2304485.html">�����վ�����硱ս�������ӷ���</a>
                </h3>
            </li>
                                                                                                         <!-- ����֡��� -->
                        <li  ne-role="slide-page">
                <a href="http://war.163.com/photoview/4T8E0001/2304484.html" title="�߷�10�����Ƿ���ɹ� ������������" class="photo"><img src="http://cms-bucket.ws.126.net/2019/10/06/9ffe241ed556444784655d38e6229412.jpeg?imageView&thumbnail=600y300" width="600" height="300" alt="�߷�10�����Ƿ���ɹ� ������������" /></a>
                <span class="bg"></span>
                <h3>
                    <a href="http://war.163.com/photoview/4T8E0001/2304484.html">�߷�10�����Ƿ���ɹ� ������������</a>
                </h3>
            </li>
                                                                                                         <!-- ����֡��� -->
                        <li  ne-role="slide-page">
                <a href="http://war.163.com/photoview/4T8E0001/2304483.html" title="�վ���-10ս�����ж���η���ѵ��" class="photo"><img src="http://cms-bucket.ws.126.net/2019/10/06/baad2640c1f244b080de55443a555a8c.jpeg?imageView&thumbnail=600y300" width="600" height="300" alt="�վ���-10ս�����ж���η���ѵ��" /></a>
                <span class="bg"></span>
                <h3>
                    <a href="http://war.163.com/photoview/4T8E0001/2304483.html">�վ���-10ս�����ж���η���ѵ��</a>
                </h3>
            </li>
                                                                                                         <!-- ����֡��� -->
                                    <li ne-role="slide-page">
               <!-- �޹����� -->
                                                                                                             <a href="http://war.163.com/photoview/4T8E0001/2304482.html" title="��-20ѵ���� �ı���ʵս��������" class="photo"><img src="http://cms-bucket.ws.126.net/2019/10/06/1858d54cc8ea42d69c0004e8449ddfec.jpeg?imageView&thumbnail=600y300" width="600" height="300" alt="��-20ѵ���� �ı���ʵս��������" /></a>
                <span class="bg"></span>
                <h3>
                    <a href="http://war.163.com/photoview/4T8E0001/2304482.html">��-20ѵ���� �ı���ʵս��������</a>
                </h3>
<!-- �й�����  -->
<!-- <a href="http://g.163.com/a?CID=49399&Values=822599512&Redirect=http://auto.163.com/special/shanghai-chezhan/" title="" class="photo"><img src="http://img1.126.net/channel14/cz_600300_0417.jpg" width="600" height="300" alt="" /></a>
                <span class="bg"></span>
                <h3>
                    <a href="http://g.163.com/a?CID=49399&Values=822599512&Redirect=http://auto.163.com/special/shanghai-chezhan/">��棺�Ϻ���չ �ذ��³�ȫ������</a>
                </h3> -->
            </li>
        </ul>
    </div>
    <div class="focus_ctrl">
        <span ne-role="slide-nav" ne-repeat="1..state.total"></span>
    </div>
    <a ne-role="slide-prev" class="focus_prev"></a>
    <a ne-role="slide-next" class="focus_next"></a>
</div>
</div>
			<!-- �����Ƽ� -->
			<div ne-module="" class="today_news">
<h2 class="sec_icon">�����Ƽ�<em>HOT</em></h2>
<ul>
	    	<li>
		<a href="http://war.163.com/photoview/4T8E0001/2304485.html" title="�����վ�����硱ս�������ӷ���">�����վ�����硱ս�������ӷ���</a>
	</li>
		<li>
		<a href="https://war.163.com/19/1006/19/EQR0P7CC000181KT.html" title="�ж�Ͻ�����Ԥ��ϵͳ,�����ż���ֻ�������ܸ�?">�ж�Ͻ�����Ԥ��ϵͳ,�����ż���ֻ�������ܸ�?</a>
	</li>
		<li>
		<a href="http://war.163.com/photoview/4T8E0001/2304486.html" title="�����б��ݶ����� F-22�룢Ұ�����">�����б��ݶ����� F-22��"Ұ��"���</a>
	</li>
		<li>
		<a href="http://war.163.com/photoview/4T8E0001/2304484.html" title="�߷�10�����Ƿ���ɹ� ������������">�߷�10�����Ƿ���ɹ� ������������</a>
	</li>
		<li>
		<a href="http://war.163.com/photoview/4T8E0001/2304483.html" title="�վ���-10ս�����ж���η���ѵ��">�վ���-10ս�����ж���η���ѵ��</a>
	</li>
		<li>
		<a href="http://war.163.com/photoview/4T8E0001/2304482.html" title="��-20ѵ���� �ı���ʵս��������">��-20ѵ���� �ı���ʵս��������</a>
	</li>
		<li>
		<a href="https://war.163.com/19/1006/15/EQQJEDPI000181KT.html" title="���辯���ܲ�Ϯ����Ϯ���߻��ܵ�����˼��Ӱ��">���辯���ܲ�Ϯ����Ϯ���߻��ܵ�����˼��Ӱ��</a>
	</li>
	</ul></div>
		</div>
    	<div class="ns_area second2016_main clearfix">
    		<!-- ��� -->
    		<div class="second_left">
    			<!-- ��Ϣ�� -->
    			<div ne-module="/war/index2016/modules/datalist2016/datalist2016.js" ne-extend="/war/index2016/modules/datalist2016/config.js">
<div class="newsdata_wrap" ne-on="showed:changepanel" ne-module="/modules/tabs/tabs.js" ne-state="showhide:true;delay:400;">
    <div class="newsdata_nav" ne-class="{{myState.fixedTop ? 'fixed_top':''}}">
        <ul class="clearfix">
            <script type="text/template" ne-repeat="nav in navList">
                <li class="nav_item nav_item_<%=nav.type%>">
                    <a class="nav_name no_cursor" ne-role="tab-nav" href="javascript:;" target="_self">
                        <%=nav.name%>
                        <span class="nav_item_ink"></span>
                    </a>
                </li>
            </script>
        </ul>
    </div>
    <ul class="newsdata_list" ne-class="{{myState.fixedTop ? 'fixed_bar_padding': ''}} {{myState.bgLoading ? 'bgloading': 'noloading'}}">
        <li class="newsdata_item" ne-role="tab-body" ne-repeat="body in navList">
            <div class="ndi_main" ne-class="{{myState.message > 0 ? 'show_message':''}}">
                <script type="text/template" ne-repeat="newrow in datalist[__i]">
                 <%if(newrow.style == "iframe"){%>
                    <div class="at_item info_ad_item news_iframe_ad" adType="infoAd" ne-click="adClickTracker(<%=newrow.infoAdIdx%>,'infoAd')">
                        <iframe src="<%=newrow.iframe[0].link%>" width="<%=newrow.iframe[0].iframewidth || 600 %>" height="<%=newrow.iframe[0].iframeheight || 100 %>" frameborder="0" border="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
                    </div>
                <%}else if(newrow.style == "docAD"){%>
                    <div class="at_item info_ad_item news_article clearfix" adType="infoAd" ne-click="adClickTracker(<%=newrow.infoAdIdx%>,'infoAd')">
                        <a href="<%=newrow.relatedActionLinks[0].url%>" class="na_pic">
                            <img src="<%=newrow.resources[0].urls[0]%>" width="140" height="88">
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
                    <div class="at_item info_ad_item news_photoview clearfix news_ad_photoview" adType="infoAd" ne-click="adClickTracker(<%=newrow.infoAdIdx%>,'infoAd')">
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
                    <div class="at_item info_ad_item news_special clearfix news_ad_special" adType="infoAd" ne-click="adClickTracker(<%=newrow.infoAdIdx%>,'infoAd')">
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
                                <span class="p_img3">
                                <%if(newrow.imgurl.indexOf('gif') != -1){%>
                                <img src="<%=newrow.imgurl%>" width="190" height="120" onerror="javascript:this.src='http://static.ws.126.net/f2e/news/index2016_rmd/images/pic3_error0106.jpg';">
                                <%} else {%> 
                                <img src="<%=newrow.imgurl%>?imageView&thumbnail=190y120&quality=85" width="190" height="120" onerror="javascript:this.src='http://static.ws.126.net/f2e/news/index2016_rmd/images/pic3_error0106.jpg';">
                                <%}%> 
                                </span>
                                <span class="p_img3">
                                <%if(newrow.add1.indexOf('gif') != -1){%>
                                <img src="<%=newrow.add1%>" width="190" height="120" onerror="javascript:this.src='http://static.ws.126.net/f2e/news/index2016_rmd/images/pic3_error0106.jpg';">
                                <%} else {%> 
                                <img src="<%=newrow.add1%>?imageView&thumbnail=190y120&quality=85" width="190" height="120" onerror="javascript:this.src='http://static.ws.126.net/f2e/news/index2016_rmd/images/pic3_error0106.jpg';">
                                <%}%> 
                                </span>
                                <span class="p_img3">
                                <%if(newrow.add2.indexOf('gif') != -1){%>
                                <img src="<%=newrow.add2%>" width="190" height="120" class="pic_last" onerror="javascript:this.src='http://static.ws.126.net/f2e/news/index2016_rmd/images/pic3_error0106.jpg';">
                                <%} else {%> 
                                <img src="<%=newrow.add2%>?imageView&thumbnail=190y120&quality=85" width="190" height="120" class="pic_last" onerror="javascript:this.src='http://static.ws.126.net/f2e/news/index2016_rmd/images/pic3_error0106.jpg';">
                                <%}%> 
                                </span>
                            </a>
                        </div>
                        <div class="np_detail clearfix">
                            <div class="news_tag">
                                <%if(newrow.channelname && newrow.channelname != "shehui" && newrow.channelname != "guonei" && newrow.channelname != "guoji" && newrow.channelname != "dada" && newrow.channelname != "war" && newrow.channelname != "hangkong"){%>
                                    <%if(newrow.tlastid != ""){%>
                                        <strong class="barlink"><%=newrow.tlastid%></strong>
                                    <%}else if(newrow.label != ""){%>
                                        <a href="<%=newrow.tlink%>" class="link link_more">
                                        <em><%=newrow.label%></em></a>
                                    <%}%> 
                                <%}%>
                                <%if(newrow.keywords.length > 0){%>
                                    <div class="keywords">
                                    <%bowlder.each(newrow.keywords,function(k){%>
                                        <a href="<%=k.akey_link%>"><%=k.keyname%></a>
                                    <%})%> 
                                    </div>
                                <%}%> 
                                <%if(newrow.time){%>
                                    <span class="time"><%=formatTime(newrow.time)%></span>
                                <%}%> 
                            </div>
                            <div class="share-join clearfix">
                                <%if(newrow.tienum != ""){%>
                                <a class="post_recommend_tie right" href="<%=newrow.commenturl%>" >
                                    <div class="post_recommend_tie_wrap">
                                        <span class="post_recommend_tie_icon icons"><%=newrow.tienum%></span> 
                                        <span class="post_recommend_tie_text"><i>����</i><%=newrow.tienum%></span>
                                    </div>
                                </a>
                                <%}%>
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
                            <%if(newrow.channelname && newrow.channelname != "shehui" && newrow.channelname != "guonei" && newrow.channelname != "guoji" && newrow.channelname != "dada" && newrow.channelname != "war" && newrow.channelname != "hangkong"){%>
                                <%if(newrow.tlastid != ""){%>
                                    <strong class="barlink"><%=newrow.tlastid%></strong>
                                <%}else if(newrow.label != ""){%>
                                    <a href="<%=newrow.tlink%>" class="link link_more">
                                    <em><%=newrow.label%></em></a>
                                <%}%> 
                            <%}%>
                        </div>
                        <a href="<%=newrow.docurl%>" class="ns_pic">
                            <%if(newrow.add1.indexOf('gif') != -1){%>
                            <img src="<%=newrow.add1%>" alt="<%=newrow.title%>" width="600" height="300" onerror="javascript:this.src='http://static.ws.126.net/f2e/news/index2016_rmd/images/special_error0106.jpg';">
                            <%} else {%> 
                            <img src="<%=newrow.add1%>?imageView&thumbnail=600y300&quality=85" width="600" height="300" onerror="javascript:this.src='http://static.ws.126.net/f2e/news/index2016_rmd/images/special_error0106.jpg';">
                            <%}%> 
                        </a>
                    </div>
                <%} else if(newrow.imgurl != ""){%>
                    <div class="data_row news_article clearfix <%if(__i == 0){%>news_first<%}%>" i={{__i}}>
                        <%if(newrow.imgurl != ""){%>
                        <a href="<%=newrow.docurl%>" class="na_pic">
                            <%if(newrow.imgurl.indexOf('gif') != -1){%>
                            <img src="<%=newrow.imgurl%>" alt="<%=newrow.title%>" width="140" height="88" onerror="imgError(this)">
                            <%} else {%> 
                            <img src="<%=newrow.imgurl%>?imageView&thumbnail=140y88&quality=85" alt="<%=newrow.title%>" width="140" height="88" onerror="imgError(this)">
                            <%}%> 
                        </a>
                        <%}%> 
                        <div class="na_detail clearfix <%if(newrow.imgurl == ""){%>no_pic<%}%>">
                            <div class="news_title">
                                <h3><a href="<%=newrow.docurl%>"><%=newrow.title%></a></h3>
                            </div>
                            <div class="news_tag">
                                <%if(newrow.channelname && newrow.channelname != "shehui" && newrow.channelname != "guonei" && newrow.channelname != "guoji" && newrow.channelname != "dada" && newrow.channelname != "war" && newrow.channelname != "hangkong"){%>
                                    <%if(newrow.tlastid != ""){%>
                                        <strong class="barlink"><%=newrow.tlastid%></strong>
                                    <%}else if(newrow.label != ""){%>
                                        <a href="<%=newrow.tlink%>" class="link link_more">
                                        <em><%=newrow.label%></em></a>
                                    <%}%> 
                                <%}%>
                                <%if(newrow.keywords.length > 0){%>
                                    <div class="keywords">
                                    <%bowlder.each(newrow.keywords,function(k){%>
                                        <a href="<%=k.akey_link%>"><%=k.keyname%></a>
                                    <%})%> 
                                    </div>
                                <%}%> 
                                <%if(newrow.time){%>
                                    <span class="time"><%=formatTime(newrow.time)%></span>
                                <%}%> 
                            </div>
                            <div class="share-join clearfix">
                                <a class="post_recommend_tie right" href="<%=newrow.commenturl%>" >
                                    <div class="post_recommend_tie_wrap">
                                        <span class="post_recommend_tie_icon icons"><%=newrow.tienum ? newrow.tienum : 0%></span> 
                                        <span class="post_recommend_tie_text"><i>����</i><%=newrow.tienum%></span>
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
                <%} else if(newrow.pics3 && newrow.pics3.length >= 3){%>
                    <div class="data_row news_photoview clearfix <%if(__i == 0){%>news_first <%}%>">
                        <div class="news_title">
                            <h3><a href="<%=newrow.docurl%>"><%=newrow.title%></a></h3>
                        </div>
                        <div class="np_pic">
                            <a href="<%=newrow.docurl%>">
                                <%bowlder.each(newrow.pics3,function(n){%>
                                    <span class="p_img3">
                                    <img src="<%=n.pic%>" width="190" height="120" onerror="javascript:this.src='http://static.ws.126.net/f2e/news/index2016_rmd/images/pic3_error0106.jpg';">
                                    </span>
                                <%})%> 
                            </a>
                        </div>
                        <div class="np_detail clearfix">
                            <div class="news_tag">
                                <%if(newrow.channelname && newrow.channelname != "shehui" && newrow.channelname != "guonei" && newrow.channelname != "guoji" && newrow.channelname != "dada" && newrow.channelname != "war" && newrow.channelname != "hangkong"){%>
                                    <%if(newrow.tlastid != ""){%>
                                        <strong class="barlink"><%=newrow.tlastid%></strong>
                                    <%}else if(newrow.label != ""){%>
                                        <a href="<%=newrow.tlink%>" class="link link_more">
                                        <em><%=newrow.label%></em></a>
                                    <%}%> 
                                <%}%>
                                <%if(newrow.keywords.length > 0){%>
                                    <div class="keywords">
                                    <%bowlder.each(newrow.keywords,function(k){%>
                                        <a href="<%=k.akey_link%>"><%=k.keyname%></a>
                                    <%})%> 
                                    </div>
                                <%}%> 
                                <%if(newrow.time){%>
                                    <span class="time"><%=formatTime(newrow.time)%></span>
                                <%}%> 
                            </div>
                            <div class="share-join clearfix">
                                <a class="post_recommend_tie right" href="<%=newrow.commenturl%>" >
                                    <div class="post_recommend_tie_wrap">
                                        <span class="post_recommend_tie_icon icons"><%=newrow.tienum%></span> 
                                        <span class="post_recommend_tie_text"><i>����</i><%=newrow.tienum%></span>
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
                <%} else {%>
                    <div class="data_row news_article clearfix <%if(__i == 0){%>news_first<%}%>" i={{__i}}>
                        <div class="na_detail clearfix <%if(newrow.imgurl == ""){%>no_pic<%}%>">
                            <div class="news_title">
                                <h3><a href="<%=newrow.docurl%>"><%=newrow.title%></a></h3>
                            </div>
                            <div class="news_tag">
                                <%if(newrow.channelname && newrow.channelname != "shehui" && newrow.channelname != "guonei" && newrow.channelname != "guoji" && newrow.channelname != "dada" && newrow.channelname != "war" && newrow.channelname != "hangkong"){%>
                                    <%if(newrow.tlastid != ""){%>
                                        <strong class="barlink"><%=newrow.tlastid%></strong>
                                    <%}else if(newrow.label != ""){%>
                                        <a href="<%=newrow.tlink%>" class="link link_more">
                                        <em><%=newrow.label%></em></a>
                                    <%}%> 
                                <%}%>
                                <%if(newrow.keywords.length > 0){%>
                                    <div class="keywords">
                                    <%bowlder.each(newrow.keywords,function(k){%>
                                        <a href="<%=k.akey_link%>"><%=k.keyname%></a>
                                    <%})%> 
                                    </div>
                                <%}%> 
                                <%if(newrow.time){%>
                                    <span class="time"><%=formatTime(newrow.time)%></span>
                                <%}%> 
                            </div>
                            <div class="share-join clearfix">
                                <a class="post_recommend_tie right" href="<%=newrow.commenturl%>" >
                                    <div class="post_recommend_tie_wrap">
                                        <span class="post_recommend_tie_icon icons"><%=newrow.tienum ? newrow.tienum : 0%></span> 
                                        <span class="post_recommend_tie_text"><i>����</i><%=newrow.tienum%></span>
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
    <div class="load_more_foot" id="load_more_foot"></div>
    <a class="load_more_btn" target="_self" ne-click="clickLoadMore();" ne-hide="{{myState.counter >= navList[myState.ndNavIndex].totalPage || myState.counter == 0}}">
       <div class="post_addmore" ne-visible="{{myState.counter < navList[myState.ndNavIndex].totalPage && !myState.loading}}">
           <i>+</i>
           <span>���ظ���</span>
       </div>
       <div class="post_adding" ne-show="{{myState.loading}}">
           <i>+</i>
           <span>������...</span>
       </div>
    </a>
    <div class="load_more_tip" ne-show="{{myState.counter >= navList[myState.ndNavIndex].totalPage}}">:-)�Ѿ��������~</div>
</div>
</div>
    		</div>
    		<!-- �Ҳ� -->
    		<div class="second_right">
    			<!-- ̸��  ��ʼ -->
                <div class="mt23 mod_tanbin">
                    <div class="idx_cm_title">
                        <h2 class="title">
                            ̸��
                        </h2>
                    </div>
                    <div ne-module="">                                                         <div class="idx_cm_img">
    <a href="https://war.163.com/19/0823/17/EN9FRQM3000181KT.html">
        <img src="http://cms-bucket.ws.126.net/2019/08/23/7e14335c7ed041dcb157f2c23102a5b7.png?imageView&thumbnail=300y150" width="300" height="150" alt="����Сƽ��¶���ݣ��򼴽���ˮ">
        <div class="bg">
            <h3>����Сƽ��¶���ݣ��򼴽���ˮ</h3>
        </div>
    </a>
</div>
<ul class="mt12 idx_cm_list idx_cm_list_h">
            <li>
        <a href="https://war.163.com/19/0428/16/EDS57LS9000181KT.html">�������˻�Ϊ����������������ĸ</a>
    </li>
        <li>
        <a href="https://war.163.com/19/0409/17/ECBCR4NL000181KT.html">"���"�����ʸ��������ж�������</a>
    </li>
    </ul></div>
                </div>
                <!-- ̸��  ���� -->
                <!-- �㽫  ��ʼ -->
                <div class="mt25 mod_dianjiang">
                    <div class="idx_cm_title">
                        <h2 class="title">
                            �㽫
                        </h2>
                    </div>
                    <div ne-module="">                         <div class="idx_cm_img">
    <a href="http://war.163.com/photoview/4T8E0001/2294095.html">
        <img src="http://cms-bucket.nosdn.127.net/2018/06/11/3c1b0eda1a7944339e1e106b3c507a1a.jpeg?imageView&thumbnail=300y150" width="300" height="150" alt="��ս��˿�ι۷���̹����">
        <div class="bg">
            <h3>��ս��˿�ι۷���̹����</h3>
        </div>
    </a>
</div>
<ul class="mt12 idx_cm_list idx_cm_list_h">
            <li>
        <a href="http://war.163.com/18/0528/09/DISPE314000181KT.html">�����ȿ��ձ����ѻ�ʢ��Ϲָ��</a>
    </li>
        <li>
        <a href="http://dy.163.com/v2/article/detail/DI20QDVD0523QLS6.html">�ɽ������֮���Ǳ���С�ˣ�</a>
    </li>
    </ul></div>
                </div>
                <!-- �㽫  ���� -->
                <div class="mt25 mod_ad_r">
        			<div class="mod_ad">
                        <div class="at_item right_ad_item" adType="rightAd" requestUrl="https://nex.163.com/q?app=7BE0FC82&c=newswar&l=31&site=netease&affiliate=news&cat=war&type=logo300x250&location=1"></div>
                        <a href="javascript:;" target="_self" class="ad_hover_href"></a>
                    </div>
        		</div>
        		<!-- �߻�ͼ�� ��ʼ-->
        		<div class="mt35 mod_chtj">
        			<div class="idx_cm_title">
                        <h2 class="title">
                            �߻�ͼ��
                        </h2>
                    </div>
                    <div ne-module="" class="mod_right_focus">
<div class="mod_focus" ne-module="/modules/slide/slide.js" ne-state="slideMethod:left;events=mouseover;interval=4000;loop=true;">
    <div class="f_body" ne-role="slide-body">
        <ul class="f_main clearfix" ne-role="slide-scroll">
                                                                         <li ne-role="slide-page">
                <a href="http://dy.163.com/v2/article/detail/DJKMFT610515D1P9.html">
                    <img src="http://cms-bucket.nosdn.127.net/2018/06/11/3797298daa0b4ac98df2c2efa0a3ce17.jpeg?imageView&thumbnail=300y180" width="300" height="180">
                    <span class="bg"></span>
                    <em class="tag"></em>
                    <h3>�й���20�Ľ��ͳ�ʲô��</h3>
                </a>
            </li>
                                                             <li ne-role="slide-page">
                <a href="http://war.163.com/photoview/4T8E0001/2293784.html">
                    <img src="http://cms-bucket.nosdn.127.net/c352c159299645ca841cd331c8af05e620180531104438.jpeg?imageView&thumbnail=300y180" width="300" height="180">
                    <span class="bg"></span>
                    <em class="tag"></em>
                    <h3>�й�093BǱͧ�к��ص�</h3>
                </a>
            </li>
                                                             <li ne-role="slide-page">
                <a href="http://war.163.com/photoview/4T8E0001/2293665.html">
                    <img src="http://cms-bucket.nosdn.127.net/f8db9f63afe443f78ca535a6a078d24d20180522181843.jpeg?imageView&thumbnail=300y180" width="300" height="180">
                    <span class="bg"></span>
                    <em class="tag"></em>
                    <h3>�����޼ƻ����й�����Ľ������</h3>
                </a>
            </li>
                                                             <li ne-role="slide-page">
                <a href="http://war.163.com/photoview/4T8E0001/2293065.html">
                    <img src="http://cms-bucket.nosdn.127.net/5208e764ffcc4874aeb02f14a875ba0420180522181943.png?imageView&thumbnail=300y180" width="300" height="180">
                    <span class="bg"></span>
                    <em class="tag"></em>
                    <h3>������һ���˶�����ĸ���˷�Ʒ</h3>
                </a>
            </li>
                    </ul>
    </div>
    <div class="f_title">
                        <span ne-role="slide-nav" class="current  ">1</span>
                <span ne-role="slide-nav" class=" ">2</span>
                <span ne-role="slide-nav" class=" ">3</span>
                <span ne-role="slide-nav" class=" ">4</span>
            </div>
    <a ne-role="slide-prev" class="f_prev">&lt;</a>
    <a ne-role="slide-next" class="f_next">&gt;</a>
</div>
</div>
        		</div>
        		<!-- �߻�ͼ�� ����-->
        		<!-- ������Ƶ ��ʼ-->
                <div class="mt35 mod_wonderful_video">
                    <div class="idx_cm_title">
                        <h2 class="title">������Ƶ</h2>
                    </div>
                                                            <a href="http://v.news.163.com/video/2019/2/H/A/VE6ARP8HA.html" class="big_video">
                        <img src="http://vimg3.ws.126.net/image/snapshot/2019/2/H/B/VE6ARP8HB.jpg" alt="�й�������սӥ���ű����ɡ�MV:����̨��101��¥" title="�й�������սӥ���ű����ɡ�MV:����̨��101��¥" width="300" height="190">
                        <span class="bg"></span>
                        <em></em>
                        <span class="title">�й�������սӥ���ű����ɡ�MV:����̨��101��¥</span>
                    </a>
                                        <div class="video_text">
                        <ul>
                                                                        <li><a href="http://v.news.163.com/video/2019/2/Q/G/VE66SUOQG.html" title="��ս��˿�ι۷���̹����">�´� ��Բ | �����ᱼ������Ǿ��˵��꣡</a></li>
                                                <li><a href="http://v.news.163.com/video/2019/2/V/9/VE60JKOV9.html" title="��ս��˿�ι۷���̹����">�������ǧ�ٴΣ�����һ����װ�飡</a></li>
                                                <li><a href="http://v.news.163.com/video/2018/12/6/C/VE2CEK66C.html" title="��ս��˿�ι۷���̹����">����˹ MiG-35 ս�������</a></li>
                                                <li><a href="http://v.news.163.com/video/2018/12/6/T/VE1GTU46T.html" title="��ս��˿�ι۷���̹����">�й�Ϊ�α���ʵʩ�϶�̽�¼ƻ���</a></li>
                                                </ul>
                    </div>                       
                </div>
                <!-- ������Ƶ ����-->
                <span id="js_rfix_baseline"></span>
        		<div class="mt35 mod_ad_r" id="js_right_last">
        			<div class="mod_ad">
                        <div class="at_item right_ad_item" adType="rightAd" requestUrl="https://nex.163.com/q?app=7BE0FC82&c=newswar&l=32&site=netease&affiliate=news&cat=war&type=logo300x250&location=2"></div>
                        <a href="javascript:;" target="_self" class="ad_hover_href"></a>
                    </div>
        		</div>
    		</div>
    	</div>
        <div id="js_bfix_line"></div>
    	<!-- �������� ��ʼ-->
    	<div class="ns_area second_friendship">
    		<h2>
    			��������
    		</h2>
    		<div class="friend_links">
	    		<ul class="clearfix">
			        			                                                     			        <li ><a href="http://mil.iqiyi.com/"><img src="http://img6.cache.netease.com/news/2017/1/13/20170113182613cae4c.jpg" height="36" width="118" alt=""/></a><p><a href="http://mil.iqiyi.com/">�����վ���</a></p></li>
			                                                     			        <li ><a href="http://lt.cjdby.net/"><img src="http://img1.cache.netease.com/cnews/2009/10/21/20091021173129385b2.gif" height="36" width="118" alt=""/></a><p><a href="http://lt.cjdby.net/">������Ӫ</a></p></li>
			                                                     			        <li ><a href="http://www.knowfar.org.cn/"><img src="http://img2.cache.netease.com/cnews/2010/4/2/20100402171952338f6.jpg" height="36" width="118" alt=""/></a><p><a href="http://www.knowfar.org.cn/">֪Զս��������о���</a></p></li>
			                                                     			        <li ><a href="http://mil.cnr.cn/"><img src="http://img2.cache.netease.com/cnews/2011/3/10/20110310141818a3648.jpg" height="36" width="118" alt=""/></a><p><a href="http://mil.cnr.cn/">�й�������Ƶ��</a></p></li>
			                                                     			        <li ><a href="http://www.js7tv.cn/"><img src="http://img3.cache.netease.com/cnews/2015/3/26/2015032614053025879.png" height="36" width="118" alt=""/></a><p><a href="http://www.js7tv.cn/">�й�������</a></p></li>
			                                                     			        <li  class="margin0" ><a href="http://youth.chinamil.com.cn/"><img src="http://img5.cache.netease.com/cnews/2013/8/27/20130827161156fcba4.jpg" height="36" width="118" alt=""/></a><p><a href="http://youth.chinamil.com.cn/">�������</a></p></li>
			                                                     			        <li ><a href="http://navy.81.cn/"><img src="http://img6.cache.netease.com/cnews/2012/11/2/201211021721442d4bd.jpg" height="36" width="118" alt=""/></a><p><a href="http://navy.81.cn/">�й�������</a></p></li>
			                                                     			        <li ><a href="http://www.casic.com.cn/"><img src="http://img5.cache.netease.com/cnews/2012/11/2/201211021719041c113.jpg" height="36" width="118" alt=""/></a><p><a href="http://www.casic.com.cn/">�й�����ƹ�����</a></p></li>
			        			    </ul>
		    </div>
		    <div class="footer_links">
		    	<a href="http://www.chinamil.com.cn/">�й�����</a><span>|</span><a href="http://www.dsti.net/">�й������Ƽ���Ϣ��</a><span>|</span><a href="http://mil.huanqiu.com/">����������</a><span>|</span><a href="http://news.ifeng.com/mil/">��˾���</a><span>|</span><a href="http://lt.cjdby.net/">������Ӫ</a><span>|</span><a href="http://mil.tiexue.net/">��Ѫ����</a><span>|</span><a href="http://mil.chinanews.com/">����������</a><br />
			 <br />
			</div>
    	</div>
    	<!-- �������� ���� -->
    	<!-- ִ������ -->
    	<div class="ns_area foot_execute_leader">ִ�����ࣺ�ƻ�_NN1650</div>
		<!-- �ײ� ��ʼ -->
		<style type="text/css" _keep="true">
        /* footer */
        .ft_icons{background-image:url(http://static.ws.126.net/f2e/news/index2016_rmd/images/sprite_foot20181010.png);}
        .index_footer{border-top:1px solid #ddd;height:270px;background:#f8f8f8;margin-top:20px;}
        .ns_pot_bar {width:240px;padding-top:50px;float:right;margin-right: 35px;}
        .ns_pot_logo {width:220px;height:270px;border-right:1px solid #ddd;float:left;}
        .ns_pot_news {width:240px;height:270px;border-right:1px solid #ddd;float:left;}
        .ns_pot_site {width:420px;height:270px;border-right:1px solid #ddd;float:left;}
        .ic_news_ft{display:block;margin-top: 20px;width: 142px;height: 65px;background-position: 0px -200px;}
        .ns_pot_news h4,.ns_pot_site h4{padding:30px 0 10px 30px;color:#808080;font-weight:bold}
        .ns_pot_news li,.ns_pot_site li{float:left;width:70px;padding:0 0 10px 30px;}
        .ns_pot_news p,.ns_pot_site p{padding-left:30px;}
        .ns_pot_news a,.ns_pot_site a{color: #888;}
        .ns_pot_news a:hover,.ns_pot_site a:hover{color: #ba2636;}
        .ns-pot-share a{float:left;margin-right:10px;}
        .ns-pot-history {position: relative;height: 27px; width: 110px;margin: 30px 0 0 25px;color: #888;cursor:pointer;}
        .ns-pot-history .ns-calendar {position: absolute;bottom:36px;left:0;z-index:99;}
        .ns-pot-tri {height: 25px; width: 100px; line-height: 26px;border:1px solid #ddd;padding-left: 8px;background:#fff;position:relative;}
        .ns-pot-tri i{position:absolute;right:10px;top:9px;z-index:3;overflow:hidden;}
        .ns-pot-tri:hover i{background-position: 0 -859px;}
        .ns_pot_search {height: 28px; width: 225px; line-height: 26px;border:1px solid #ddd;padding-left: 8px;background:#fff;position:relative;margin: 30px 0 0 0px;overflow:hidden;}
        .ns_pot_search .search_texh {height:28px;width:200px;border:0;margin:0;color: #888;line-height:28px;}
        .ns_pot_search .search_btn{border:0;padding:0;position: absolute;right:10px;top:6px;text-indent:100px;overflow:hidden;z-index:3;width:24px;height:24px;background-position:-117px -4px;background-color:#fff;}
        .ic_lofter_ft,.ic_mail_ft,.ic_rss_ft {width:33px;height:33px;transition: background 0.3s cubic-bezier(.17, .67, .88, 1.25);}
        .ic_lofter_ft{background-position: 0 -1px;}
        .ic_lofter_ft:hover{background-position: 0 -34px;}
        .ic_mail_ft{background-position: 0 -67px;}
        .ic_mail_ft:hover{background-position: 0 -100px;}
        .ic_rss_ft{background-position: 0 -133px;}
        .ic_rss_ft:hover{background-position: 0 -166px;}
        .ic_newsapp_ft{float:left;_display:inline;width: 26px;height: 30px;border-left: 1px solid #cbcbcb;padding-left: 16px;margin-left: 10px;}
        .ic_newsapp_ft a{margin-right:0;display: block;width: 26px;height: 30px;background:url(http://static.ws.126.net/f2e/news/index2015/img/newsapp.png) no-repeat;_background:url(http://img1.cache.netease.com/f2e/news/index2015/img/newsapp_8.png) no-repeat;background-position: 0 0;-webkit-transition:background 0.3s cubic-bezier(.17, .67, .88, 1.25);-moz-transition:background 0.3s cubic-bezier(.17, .67, .88, 1.25);-o-transition:background 0.3s cubic-bezier(.17, .67, .88, 1.25);transition:background 0.3s cubic-bezier(.17, .67, .88, 1.25);}
        .ic_newsapp_ft a:hover{background-position: 0 -31px;}
        .ic_cloudapp_ft{float:left;width: 33px;height: 33px;margin-right: 10px;background:url(http://static.ws.126.net/f2e/news/res/img/cloudapp.png) no-repeat;_background:url(http://static.ws.126.net/f2e/news/res/img/cloudapp_8.png) no-repeat;background-position: 0 0;-webkit-transition:background 0.3s cubic-bezier(.17, .67, .88, 1.25);-moz-transition:background 0.3s cubic-bezier(.17, .67, .88, 1.25);-o-transition:background 0.3s cubic-bezier(.17, .67, .88, 1.25);transition:background 0.3s cubic-bezier(.17, .67, .88, 1.25);}
        .ic_cloudapp_ft:hover{background-position: 0 -34px;}
        .ns9 .ns_pot_logo {width:150px;}
        .ns9 .ns_pot_news {width:190px;}
        .ns9 .ns_pot_site {width:300px;}
        .ns9 .ns_pot_news li,.ns9 .ns_pot_site li{width:50px;padding-left: 30px;}
        .ns9 .ns_pot_news h4,.ns9 .ns_pot_site h4{padding-left: 30px;}
        .ns9 .ns_pot_news p{padding-left:30px;}
        .ns9 .ns_pot_site{width: 360px;}
        .ns9 .ns_pot_bar{margin-right: 0;}
        </style>
	    <div class="index_footer">
		    <div class="ns_area clearfix">
		        <div class="ns_pot_logo"><a href="http://3g.163.com/links/6691"><i class="ft_icons ic_news_ft"></i></a></div>    
		            
		        <div class="ns_pot_news">
		            <h4>����</h4>
		            <ul class="clearfix">
		                <li><a href="http://news.163.com/domestic/">����</a></li>
		                <li><a href="http://news.163.com/world/">����</a></li>
		                <li><a href="http://news.163.com/photo/">ͼƬ</a></li>
		                <li><a href="http://news.163.com/air/">����</a></li>
		                <li><a href="http://war.163.com/">����</a></li>
		                <li><a href="http://news.163.com/rank/">����</a></li>
		            </ul>
		            <p><a href="http://news.163.com/review/">���ŵ�ͼ&gt;&gt;</a></p>
		        </div> 
		               
		        <div class="ns_pot_site">
		            <h4>����Ƶ��</h4>
		            <ul class="clearfix">
		                <li><a href="http://sports.163.com/">����</a></li>
		                <li><a href="http://tech.163.com/">�Ƽ�</a></li>
		                <li><a href="http://v.163.com/">��Ƶ</a></li>
		                <li><a href="http://edu.163.com/">����</a></li>
		                <li><a href="http://ent.163.com/">����</a></li>
		                <li><a href="http://mobile.163.com/">�ֻ�</a></li>
		                <li><a href="http://www.lofter.com/?act=qb163rk_20141031_03">LOFTER</a></li>
		                <li><a href="http://book.163.com/">����</a></li>
		                <li><a href="http://money.163.com/">�ƾ�</a></li>
		                <li><a href="http://digi.163.com/">����</a></li>
		                <li><a href="http://book.163.com/art">����</a></li>
		                <li><a href="http://money.163.com/stock/">��Ʊ</a></li>
		                <li><a href="http://auto.163.com/">����</a></li>
		                <li><a href="http://play.163.com/">��Ϸ</a></li>
		                <li><a href="http://lady.163.com/">Ů��</a></li>
		                <li><a href="http://house.163.com/">����</a></li>
		                <li><a href="http://travel.163.com/">����</a></li>
		                <li><a href="http://m.163.com/">Ӧ��</a></li>
		                <li><a href="http://gov.163.com/">����</a></li>
		                <li><a href="http://study.163.com/?utm_source=news.163.com&utm_medium=web_bottomnav&utm_campaign=business">�ƿ���</a></li>
		                <li><a href=" http://jiankang.163.com">����</a></li>
		            </ul>
		        </div>   
		             
		        <div class="ns_pot_bar">
		            <div class="ns-pot-share clearfix">
		                <a class="ft_icons ic_lofter_ft" href="http://www.lofter.com/?act=qb163rk_20141031_03"></a>
		                <a class="ft_icons ic_mail_ft" href="http://email.163.com/"></a>
		                <a class="ft_icons ic_rss_ft" rel="nofollow" href="http://www.163.com/rss"></a>
						<a href="http://study.163.com/?utm_source=163.com&utm_medium=web_bottomlogo&utm_campaign=business" class="ic_cloudapp_ft"></a>
						<div class="ic_newsapp_ft">
						    <a href="http://www.163.com/newsapp/#f=down" class="ft_icons"></a>
						</div>
				    </div>
		            
		            <div class="ns_pot_search">
		                <form action="http://news.yodao.com/search" method="get">         
		                    <input class="search_texh" type="text" name="q" autocomplete="off" value="����ؼ���">
		                    <input class="ft_icons search_btn" type="submit" value="����">
		                    <input type="hidden" name="keyfrom" value="news.163">
		                    <input type="hidden" name="suser" value="user163">
		                    <input type="hidden" name="ue" value="gbk">
		                    <input type="hidden" name="site" value="����">
		                    <input type="hidden" name="in" value="page">
		                </form>
		            </div>        
		        </div>
		    </div>      
		</div>
		<!-- �ײ� ���� -->
    </div>
    <!-- ��ά�� -->
    <div ne-module="/news/second2016/modules/qrcode/qrcode.js"><!-- ��ά�� -->
<div class="ns_sidebar none">
    <div class="ns_side_qrcode"><i class="ft_icons ic_qrcode"></i></div>
    <div class="ns_side_tolid"><i class="ft_icons ic_totop"></i></div>
</div></div>
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

<!--  -->

<!-- STAT WRating v1.0 -->

<!-- STAT NetEase Devilfish 2006 -->
<script type="text/javascript" src="//analytics.163.com/ntes.js"></script>
<script type="text/javascript">
    _ntes_nacc = "war"; //վ��ID��
    neteaseTracker();
</script>
<!-- big data statistics -->

<!-- big data analysis 0628 -->
<script src="https://static.ws.126.net/f2e/products/analysis/js/analysis0628.350ctAoOoFtN.1.js"></script>
  <!-- 360��� -->
<script src="//static.ws.126.net/163/f2e/modules/netsposter/js/netsposter2019_main-7c71d0aff8.js"></script>

<!-- ���¸�ý���� -->
<!-- ���λ���������½��Ӵ���ʼ -->
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
<!-- ���λ���������½��Ӵ����� -->
<SCRIPT LANGUAGE="JavaScript1.1" SRC="https://g.163.com/jr?site=netease&affiliate=news&cat=war&type=richmedia&location=1"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript1.1" SRC="https://g.163.com/jr?site=netease&affiliate=news&cat=war&type=popup&location=1"></SCRIPT>
<!-- �������� -->
<!--2013����� ���� -->
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
<script src="https://static.ws.126.net/163/f2e/war/index2016/js/foot~7b373597786a7.js"></script>
</body>
</html>
