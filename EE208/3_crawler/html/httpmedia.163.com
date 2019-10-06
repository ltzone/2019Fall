<!DOCTYPE HTML>
<!--[if IE 6 ]> <html id="ne_wrap" class="ne_ua_ie6 ne_ua_ielte8"> <![endif]-->
<!--[if IE 7 ]> <html id="ne_wrap" class="ne_ua_ie7 ne_ua_ielte8"> <![endif]-->
<!--[if IE 8 ]> <html id="ne_wrap" class="ne_ua_ie8 ne_ua_ielte8"> <![endif]-->
<!--[if IE 9 ]> <html id="ne_wrap" class="ne_ua_ie9"> <![endif]-->
<!--[if (gte IE 10)|!(IE)]><!--> <html id="ne_wrap"> <!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<meta name="model_url" content="http://media.163.com/special/0076rt/index.html" />
<title>网易传媒_关注传媒,关心传媒人</title>
<meta name="keywords" content="网易传媒,传媒频道,传媒,传媒业,传媒网,网易传媒,媒体,报纸,报刊,杂志,平面媒体,电视,电视剧,电影,广播,影视,央视,CNN,传媒招聘,媒体招聘,传媒人才,传媒人,传媒人物,传媒领袖,传媒大学,传媒学院,新闻学院,传播,媒介,广告,新媒体,户外媒体,分众,分众传媒,网络媒体,流媒体,新闻集团,默多克,邓文迪,传媒板块,传媒产业,出版传媒,记者,编辑,总编,社长,编剧,主持人,主播,直播,台长,节目,收视率,点击率,新闻联播,新闻频道,外媒" />
<meta name="description" content="网易传媒频道提供最权威的传媒资讯，打造最具影响力的媒体沟通交流平台。致力于成为中国传媒行业进程、全球媒体变化格局的记录者；成为媒体同行及关注传媒行业的网友获取信息、表达思想的平台；成为媒体品牌的传播者和宣传者。" />
<!-- 适配3g -->
<script type="text/javascript" data-type="touch/index">!function e(t,n,r){function o(c,a){if(!n[c]){if(!t[c]){var u="function"==typeof require&&require;if(!a&&u)return u(c,!0);if(i)return i(c,!0);var s=new Error("Cannot find module '"+c+"'");throw s.code="MODULE_NOT_FOUND",s}var f=n[c]={exports:{}};t[c][0].call(f.exports,function(e){var n=t[c][1][e];return o(n||e)},f,f.exports,e,t,n,r)}return n[c].exports}for(var i="function"==typeof require&&require,c=0;c<r.length;c++)o(r[c]);return o}({1:[function(e,t,n){var r=["play.163.com"];t.exports=r},{}],2:[function(e,t,n){var r=e("./pc2wap"),o={news:{c3g:"news",child:{shehui:{c3g:"society"},domestic:{c3g:"domestic"},world:{c3g:"international"},history:{c3g:"history"},air:{c3g:"air",up:1},photo:{surl:"https://3g.163.com/touch/photo/subchannel/news/#adaptation=pc",c3g:"photo"}}},ent:{c3g:"ent",child:{tv:{c3g:"television"},movie:{c3g:"movie"},star_news:{c3g:"star"},music:{c3g:"music"}}},sports:{c3g:"sports",child:{nba:{surl:"https://3g.163.com/touch/sport_sub.html?cid=nba&adaptation=pc",c3g:"nba"},cba:{surl:"https://3g.163.com/touch/sport_sub.html?cid=cba&adaptation=pc",c3g:"cba"}}},money:{c3g:"money",child:{stock:{c3g:"shares"},fund:{c3g:"fund"}}},biz:{under:"money",c3g:"commercial"},auto:{c3g:"auto"},war:{c3g:"war"},v:{c3g:"liveshow",child:{video:{c3g:"video"},zongyi:{c3g:"video",up:1}}},fashion:{c3g:"lady"},lady:{c3g:"lady"},dy:{c3g:"dy"},mobile:{c3g:"mobile",child:{Apple:{c3g:"ios"}}},tech:{c3g:"tech",child:{vr:{c3g:"vr"},techcolumn:{c3g:"nejudge"}}},digi:{c3g:"digi"},edu:{c3g:"edu",child:{liuxue:{c3g:"aboard"},yimin:{c3g:"migrant"},en:{c3g:"foreign"}}},jiankang:{c3g:"jiankang"},travel:{c3g:"travel"},baby:{c3g:"baby"},art:{c3g:"art"},blog:{c3g:"blog"},jiu:{c3g:"jiu"}};r(function(e,t,n,r){var i=/https?:\/\/(?:.*\.)?([a-z0-9]*)\.163\.com(\/\w+)?(\/$|\/\?.*|$|\?.*|#.*|\/#.*)/.exec(t);if(i){var c=i[1],a=i[2]?i[2].substring(1):void 0;if(o.hasOwnProperty(c)){var u=o[c],s=u.c3g,f=s;if(a&&u.hasOwnProperty("child")&&"object"==typeof u.child[a]){var l=u.child[a];if(l.surl)return l.surl;var h=l.c3g;f=s+"/subchannel/"+h,l.up&&(f=h)}return u.hasOwnProperty("under")&&(f=u.under+"/subchannel/"+s),"https://3g.163.com/touch/"+f+"/#adaptation=pc"+n+e}}return!1})},{"./pc2wap":3}],3:[function(e,t,n){var r=e("./utils"),o=function(e){if(!/noredirect/i.test(location.search)){var t=window.location.href,n=new r.URL(t),o=n.hostname;if(!r.blockedDomain(o)&&r.isMobile()){var i=n.search.length>0?n.search.substring(1):"",c=n.hash;i.length>0&&"&"!==i[0]&&(i="&"+i);var a=function(){var e=document.referrer;return e?"&refer="+encodeURIComponent(e):""}(),u=e&&e(a,t,i,c);u&&(window.location.href=u)}}};t.exports=o},{"./utils":4}],4:[function(e,t,n){var r=e("./domainBlocked.config"),o={URL:function(){var e,t=self.URL;try{t&&("href"in(e=new self.URL("http://3g.163.com"))||(e=void 0))}catch(e){console.log(e)}return function(n){if(e)return new t(n);var r=document.createElement("a");return r.href=n,r}}(),isMobile:function(e){return/android.*?mobile|ipod|blackberry|bb\d+|phone|WindowsWechat/i.test(e||navigator.userAgent)},isPAD:function(e){return/iPad/i.test(e||navigator.userAgent)},blockedDomain:function(e){return-1!=r.indexOf(e)}};t.exports=o},{"./domainBlocked.config":1}]},{},[2]);</script>
<!-- 广告样式 -->
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

<script>if((/_touchall=1/.test(location.search)||!/auto|house|home|bbs|blog/.test(location.host))&&!/\/dy.163.com\/v2/.test(location.href)&&!(document.documentElement&&document.documentElement.getAttribute("phone"))&&!/163.com\/keywords\//.test(location.href)&&/163\.com/.test(location.host)&&!/_pc=1/.test(location.search)&&/android.*?mobile|ipod|blackberry|bb\d+|phone/i.test(navigator.userAgent))document.write('<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"/><div style="position:fixed;width:100%;height:100%;background:#fff"><div style="position:absolute;top:50%;left:0;width:100%;height:40px;margin-top:-40px;text-align:center;background:url(//static.ws.126.net/utf8/endpage/image/loading.gif) no-repeat top center;padding-top:40px;color:#666">页面加载中 ...</div></div><script src="//static.ws.126.net/f2e/system/touchall/collect/foot~M2Tn9VR49xqt.js"'+' defer><'+'/script><plaintext style="display:none">');</script>
<script>
if(/https:.*\.163.com\/keywords\//.test(window.location.href)){
	window.location.href = window.location.href.replace("https://","http://")
}
</script>
<link href="http://static.ws.126.net/f2e/media/common/css/media.ekPfqrQfnvIe.32.css" rel="stylesheet" type="text/css" />
<script src="http://static.ws.126.net/cnews/js/ntes_jslib_1.x.js" type="text/javascript" charset="gb2312"></script>
<script src="http://static.ws.126.net/f2e/lib/js/ne.js"></script>
<link rel="stylesheet" href="http://img2.cache.netease.com/f2e/media/media2016/media2016.1073711.css" />
<link href="http://img2.cache.netease.com/f2e/media/media2016/collect/head~QhHKeoscAXsr.css" rel="stylesheet" />
<base target="_blank"></base>
</head>
<body>
<div class="media2016_wrap" id="media2016_wrap">
    <!-- 公共导航头 -->
    <link rel="stylesheet" href="//static.ws.126.net/163/f2e/commonnav2019/css/commonnav_headcss-0f01013b0e.css"/>
<!-- urs -->
<script _keep="true" src="https://urswebzj.nosdn.127.net/webzj_cdn101/message.js" type="text/javascript"></script>
<div class="ntes_nav_wrap" id="js_N_NTES_wrap">
  <div class="ntes-nav" id="js_N_nav">
    <div class="ntes-nav-main clearfix">
            <div class="c-fl">
        <a class="ntes-nav-index-title ntes-nav-entry-wide c-fl" href="http://www.163.com/" title="网易首页">网易首页</a>
        <!-- 应用 -->
        <div class="js_N_navSelect ntes-nav-select ntes-nav-select-wide ntes-nav-app  c-fl">
          <a href="http://www.163.com/#f=topnav" class="ntes-nav-select-title ntes-nav-entry-bgblack JS_NTES_LOG_FE">应用
            <em class="ntes-nav-select-arr"></em>
          </a>
          <div class="ntes-nav-select-pop">
            <ul class="ntes-nav-select-list clearfix">
              <li>
                <a href="http://m.163.com/newsapp/#f=topnav">
                  <span>
                    <em class="ntes-nav-app-newsapp">网易新闻</em>
                  </span>
                </a>
              </li>
              <li>
                <a href="http://open.163.com/#f=topnav">
                  <span>
                    <em class="ntes-nav-app-open">网易公开课</em>
                  </span>
                </a>
              </li>
              <li>
                <a href="https://hongcai.163.com/?from=pcsy-button">
                  <span>
                    <em class="ntes-nav-app-hongcai">网易红彩</em>
                  </span>
                </a>
              </li>              
              <li>
                <a href="https://gulu.163.com">
                  <span>
                    <em class="ntes-nav-app-gulu-video">咕噜短视频</em>
                  </span>
                </a>
              </li>
              <li>
                <a href="http://u.163.com/aosoutbdbd8">
                  <span>
                    <em class="ntes-nav-app-yanxuan">网易严选</em>
                  </span>
                </a>
              </li>
              <li>
                <a href="http://mail.163.com/client/dl.html?from=mail46">
                  <span>
                    <em class="ntes-nav-app-mail">邮箱大师</em>
                  </span>
                </a>
              </li>
              <li>
                <a href="http://study.163.com/client/download.htm?from=163app&utm_source=163.com&utm_medium=web_app&utm_campaign=business">
                  <span>
                    <em class="ntes-nav-app-study">网易云课堂</em>
                  </span>
                </a>
              </li>
              <li class="last">
                <a href="http://da.kaola.com/redirect?t=5aaebece47f92c00&p=c901ea7c&proId=1024&code=6b69bfbfac0db5f335232faa957a27bb&target=https%3A%2F%2Fapp.kaola.com%2F%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                  <span>
                    <em class="ntes-nav-app-kaola-hg">网易考拉</em>
                  </span>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="c-fr">
        <!-- 片段开始 -->
        <div class="ntes-nav-quick-navigation">
          <a href="javascript:void(0);" class="ntes-nav-quick-navigation-btn" id="js_N_ntes_nav_quick_navigation_btn" target="_self">
            <em>快速导航
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
                  <h3><a href="https://news.163.com">新闻</a></h3>
                  </li>
                  <li>
                  <a href="http://news.163.com/domestic">国内</a>
                  </li>
                  <li>
                  <a href="http://news.163.com/world">国际</a>
                  </li>
                  <li>
                  <a href="http://news.163.com/photo">图片</a>
                  </li>
                  <li>
                  <a href="http://view.163.com">评论</a>
                  </li>
                  <li>
                  <a href="http://discovery.163.com">探索</a>
                  </li>
                  <li>
                  <a href="http://war.163.com">军事</a>
                  </li>
                  <li>
                  <a href="http://news.163.com/localnews/">本地新闻</a>
                  </li>
                  <li>
                  <a href="http://news.163.com/special/wangsansanhome/">王三三</a>
                  </li>
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-2">
                  <li>
                  <h3><a href="http://sports.163.com">体育</a></h3>
                  </li>
                  <li>
                  <a href="http://sports.163.com/nba">NBA</a>
                  </li>
                  <li>
                  <a href="http://sports.163.com/cba">CBA</a>
                  </li>
                  <li>
                  <a href="http://sports.163.com/allsports">综合</a>
                  </li>
                  <li>
                  <a href="http://sports.163.com/zc">中超</a>
                  </li>
                  <li>
                  <a href="http://sports.163.com/world">国际足球</a>
                  </li>
                  <li>
                  <a href="http://sports.163.com/yc">英超</a>
                  </li>
                  <li>
                  <a href="http://sports.163.com/xj">西甲</a>
                  </li>
                  <li>
                  <a href="http://sports.163.com/yj">意甲</a>
                  </li>
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-3">
                  <li>
                  <h3><a href="http://ent.163.com">娱乐</a></h3>
                  </li>
                  <li>
                  <a href="http://ent.163.com/star">明星</a>
                  </li>
                  <li>
                  <a href="http://ent.163.com/photo">图片</a>
                  </li>
                  <li>
                  <a href="http://ent.163.com/movie">电影</a>
                  </li>
                  <li>
                  <a href="http://ent.163.com/tv">电视</a>
                  </li>
                  <li>
                  <a href="http://ent.163.com/music">音乐</a>
                  </li>
                  <li>
                  <a href="http://ent.163.com/special/gsbjb/">稿事编辑部</a>
                  </li>
                  <li>
                  <a href="http://ent.163.com/special/focus_ent/">娱乐FOCUS</a>
                  </li>
                  <li><a href="http://ent.163.com/special/xbkhz/">星捕快</a></li> 
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-4">
                  <li>
                  <h3><a href="http://money.163.com">财经</a></h3>
                  </li>
                  <li>
                  <a href="http://money.163.com/stock">股票</a>
                  </li>
                  <li>
                  <a href="http://quotes.money.163.com/stock">行情</a>
                  </li>
                  <li>
                  <a href="http://money.163.com/chanjing">产经</a>
                  </li>
                  <li>
                  <a href="http://money.163.com/ipo">新股</a>
                  </li>
                  <li>
                  <a href="http://money.163.com/finance">金融</a>
                  </li>
                  <li>
                  <a href="http://money.163.com/fund">基金</a>
                  </li>
                  <li>
                  <a href="http://biz.163.com">商业</a>
                  </li>
                  <li>
                  <a href="http://money.163.com/licai">理财</a>
                  </li>
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-5">
                  <li>
                  <h3><a href="http://auto.163.com">汽车</a></h3>
                  </li>
                  <li>
                  <a href="http://auto.163.com/buy">购车</a>
                  </li>
                  <li>
                  <a href="http://auto.163.com/depreciate">行情</a>
                  </li>
                  <li>
                  <a href="http://product.auto.163.com/finder">选车</a>
                  </li>
                  <li>
                  <a href="http://product.auto.163.com">车型库</a>
                  </li>
                  <li>
                  <a href="http://auto.163.com/news">行业</a>
                  </li>
                  <li>
                  <a href="http://auto.163.com/chezhu">用车</a>
                  </li>
                  <li>
                  <a href="http://auto.163.com/photo">汽车图片</a>
                  </li>
                  <li>
                  &nbsp;
                  </li>
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-6">
                  <li>
                  <h3><a href="http://tech.163.com">科技</a></h3>
                  </li>
                  <li>
                  <a href="http://tech.163.com/telecom/">通信</a>
                  </li>
                  <li>
                  <a href="http://tech.163.com/it">IT</a>
                  </li>
                  <li>
                  <a href="http://tech.163.com/internet">互联网</a>
                  </li>
                  <li>
                  <a href="http://tech.163.com/special/ydhlw">移动互联网</a>
                  </li>
                  <li>
                  <a href="http://tech.163.com/special/chzt">特别策划</a>
                  </li>
                  <li>
                  <a href="http://tech.163.com/special/wudaokou">五道口沙龙</a>
                  </li>
                  <li>
                  <a href="http://tech.163.com/special/yyzd">易语中的</a>
                  </li>
                  <li>
                  <a href="http://tech.163.com/special">专题</a>
                  </li>
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-7">
                  <li>
                  <h3><a href="http://lady.163.com">女人</a></h3>
                  </li>
                  <li>
                  <a href="http://baby.163.com">亲子</a>
                  </li>
                  <li>
                  <a href="http://fashion.163.com/art">艺术</a>
                  </li>
                  <li>
                  <a href="http://fashion.163.com">时尚</a>
                  </li>
                  <li>
                  <a href="http://shoucang.163.com">收藏</a>
                  </li>
                  <li>
                  <a href="http://lady.163.com/sense">情感</a>
                  </li>
                  <li>
                  <a href="http://lady.163.com/astro">星座</a>
                  </li>
                  <li>
                  <a href="http://lady.163.com/beauty">美容</a>
                  </li>
                  <li>
                  <a href="http://cosmetic.lady.163.com/trial">免费试用</a>
                  </li>
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-8">
                  <li>
                  <h3><a href="http://mobile.163.com">手机</a><span>/</span><a href="http://digi.163.com/">数码</a></h3>
                  </li>
                  <li>
                  <a href="http://mobile.163.com/mi">移动</a>
                  </li>
                  <li>
                  <a href="http://digi.163.com/pc">电脑</a>
                  </li>
                  <li>
                  <a href="http://product.mobile.163.com">手机库</a>
                  </li>
                  <li>
                  <a href="http://hea.163.com/">家电</a>
                  </li>
                  <li>
                  <a href="http://digi.163.com/smart">智能硬件</a>
                  </li>
                  <li>
                  <a href="http://digi.163.com/dc">相机</a>
                  </li>
                  <li>
                  <a href="http://v.mobile.163.com">手机视频</a>
                  </li>
                  <li>
                  &nbsp;
                  </li>
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-9">
                  <li>
                  <h3><a href="http://house.163.com">房产</a><span>/</span><a href="http://home.163.com">家居</a></h3>
                  </li>
                  <li>
                  <a href="http://bj.house.163.com">北京房产</a>
                  </li>
                  <li>
                  <a href="http://sh.house.163.com">上海房产</a>
                  </li>
                  <li>
                  <a href="http://gz.house.163.com">广州房产</a>
                  </li>
                  <li>
                  <a href="http://house.163.com/city">全部分站</a>
                  </li>
                  <li>
                  <a href="http://xf.house.163.com">楼盘库</a>
                  </li>
                  <li>
                  <a href="http://home.163.com/jiaju/">家具</a>
                  </li>
                  <li>
                  <a href="http://home.163.com/weiyu/">卫浴</a>
                  </li>
                  <li>
                  <a href="http://home.163.com/special/jiajuyigui">衣柜</a>
                  </li>
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-10">
                  <li>
                  <h3><a href="http://travel.163.com">旅游</a></h3>
                  </li>
                  <li>
                  <a href="http://travel.163.com/outdoor">户外</a>
                  </li>
                  <li>
                  <a href="http://guizhou.travel.163.com">贵州</a>
                  </li>
                  <li>
                  <a href="http://travel.163.com/food">美食</a>
                  </li>
                  <li>
                  <a href="http://jingdian.travel.163.com/domestic/1000066937">四川</a>
                  </li>
                  <li>
                  <a href="http://jingdian.travel.163.com">景点</a>
                  </li>
                  <li>
                  <a href="http://jingdian.travel.163.com/domestic/1000066944">新疆</a>
                  </li>
                  <li>
                  <a href="http://travel.163.com/special/travellist/#f=endnav">专题</a>
                  </li>
                  <li>
                  <a href="http://jingdian.travel.163.com/domestic/1000066926/#f=endnav">西藏</a>
                  </li>
                </ul>
                <ul class="ntes-quicknav-column ntes-quicknav-column-11">
                  <li>
                  <h3><a href="http://edu.163.com">教育</a></h3>
                  </li>
                  <li>
                  <a href="http://edu.163.com/yimin">移民</a>
                  </li>
                  <li>
                  <a href="http://edu.163.com/kaoyan">考研</a>
                  </li>
                  <li>
                  <a href="http://edu.163.com/liuxue">留学</a>
                  </li>
                  <li>
                  <a href="http://edu.163.com/special/official">公务员</a>
                  </li>
                  <li>
                  <a href="http://edu.163.com/en">外语</a>
                  </li>
                  <li>
                  <a href="http://kids.163.com">中小学</a>
                  </li>
                  <li>
                  <a href="http://edu.163.com/gaokao">高考</a>
                  </li>
                  <li>
                  <a href="http://daxue.163.com">校园</a>
                  </li>
                </ul>
                <div class="ntes-nav-sitemap"><a href="http://sitemap.163.com/"><i></i>查看网易地图</a></div>
              </div>
            </div>
          </div>
        </div>
        <div class="c-fr">
          <div class="c-fl" id="js_N_navLoginBefore">
            <div id="js_N_navHighlight" class="js_loginframe ntes-nav-login ntes-nav-login-normal">
              <a href="http://reg.163.com/" class="ntes-nav-login-title" id="js_N_nav_login_title">登录</a>
              <div class="ntes-nav-loginframe-pop" id="js_N_login_wrap">
                <!--加载登陆组件-->
              </div>
            </div>
            <div class="js_N_navSelect ntes-nav-select ntes-nav-select-wide  JS_NTES_LOG_FE c-fl">
              <a class="ntes-nav-select-title ntes-nav-select-title-register" href="http://reg.email.163.com/mailregAll/reg0.jsp?from=163navi&regPage=163">注册免费邮箱
                <em class="ntes-nav-select-arr"></em>
              </a>
              <div class="ntes-nav-select-pop">
                <ul class="ntes-nav-select-list clearfix" style="width:210px;">
                  <li>
                    <a href="http://reg.vip.163.com/register.m?from=topnav">
                      <span style="width:190px;">注册VIP邮箱（特权邮箱，付费）</span>
                    </a>
                  </li>
                  <li class="last JS_NTES_LOG_FE">
                    <a href="http://mail.163.com/client/dl.html?from=mail46">
                      <span style="width:190px;">免费下载网易官方手机邮箱应用</span>
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
            <a class="ntes-nav-entry-wide c-fl" target="_self" id="js_N_navLogout">安全退出</a>
          </div>
        </div>
        <ul class="ntes-nav-inside">
          <li>
            <div class="js_N_navSelect ntes-nav-select c-fl">
              <a href="http://www.163.com/newsapp/#f=163nav" class="ntes-nav-mobile-title ntes-nav-entry-bgblack">
                <em class="ntes-nav-entry-mobile">移动端</em>
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
                <em class="ntes-nav-entry-huatian">网易公开课</em>
                <em class="ntes-nav-select-arr"></em>
                <span class="ntes-nav-msg">
                  <em class="ntes-nav-msg-num"></em>
                </span>
              </a>
              <div class="ntes-nav-select-pop ntes-nav-select-pop-huatian">
                <ul class="ntes-nav-select-list clearfix">
                  <li>
                    <a href="https://vip.open.163.com">
                      <span>付费精品</span>
                    </a>
                  </li>
                  <li>
                    <a href="https://open.163.com/ted/">
                      <span>TED</span>
                    </a>
                  </li>
                  <li>
                    <a href="https://open.163.com/ocw/">
                      <span>国际名校公开课</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://open.163.com/cuvocw/">
                      <span>中国大学视频公开课</span>
                    </a>
                  </li>
                  <li>
                    <a href="https://open.163.com/appreciation">
                      <span>赏课</span>
                    </a>
                  </li>
                  <li>
                    <a href="https://open.163.com/khan/">
                      <span>可汗学院</span>
                    </a>
                  </li>
                  <li class="last">
                    <a href="http://open.163.com/special/appdownload_pc/">
                      <span>下载公开课</span>
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
                <em class="ntes-nav-entry-kaola">网易考拉</em>
                <em class="ntes-nav-select-arr"></em>
                <span class="ntes-nav-msg ntes-nav-kaola-msg" id="js_N_navKaolaMsg">
                  <em class="ntes-nav-msg-num"></em>
                </span>
              </a>
              <div class="ntes-nav-select-pop ntes-nav-select-pop-kaola">
                <ul class="ntes-nav-select-list clearfix">
                  <li>
                    <a href="http://da.kaola.com/redirect?t=5aaebece48f92c00&p=c901ea7c&proId=1024&code=b3e224752b2cad85e9831e8c6cf7fbbd&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Fbimaibangdan.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>1000元新人大礼包</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://da.kaola.com/redirect?t=5aaebece49392c00&p=c901ea7c&proId=1024&code=fd8e43f4a20a26fbe60f7e7de1f17efe&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Fjfccri80pages1.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>新人专享进口好货</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://da.kaola.com/redirect?t=5aaebece49392c01&p=c901ea7c&proId=1024&code=21bcd5b595fc235cfd11e3e1cff14177&target=https%3A%2F%2Factivity.kaola.com%2Factivity%2FflashSaleIndex%2Fshow.html%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>今日限时抢购</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://da.kaola.com/redirect?t=5aaebece49792c00&p=c901ea7c&proId=1024&code=ecc40777cb2d68a3d9fb078b232f081d&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Fjfyrzolcpagerz.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>营养保健</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://da.kaola.com/redirect?t=5aaebece49b92c00&p=c901ea7c&proId=1024&code=0cdd5a920c768340ffc12eccd659341d&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Fnewpc.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>个人洗护</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://da.kaola.com/redirect?t=5aaebece4a392c00&p=c901ea7c&proId=1024&code=ee49a3a793f22e648ac616f5dab061dd&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Fjpwmb9zcpagesl.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>美容彩妆</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://da.kaola.com/redirect?t=5aaebece4a792c00&p=c901ea7c&proId=1024&code=6eb2598fd20963efc203a4e3fe88f4e2&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Fmyxrq.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>母婴儿童</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://da.kaola.com/redirect?t=5aaebece4ab92c00&p=c901ea7c&proId=1024&code=3946ce460ba655c11afac69855dfc02b&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Ffoodnewcustomers.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>环球美食</span>
                    </a>
                  </li>
                  <li class="last">
                    <a href="http://da.kaola.com/redirect?t=5aaebece4af92c00&p=c901ea7c&proId=1024&code=2eee7290051863737a434d44f3c0d46f&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Fnewtalent.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>家居生活</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </li>
          <li>
            <div class="js_N_navSelect ntes-nav-select c-fl">
              <a id="js_lofter_icon_url" href="http://you.163.com/?from=web_fc_menhu_xinrukou_1" class="ntes-nav-select-title ntes-nav-select-title-lofter ntes-nav-entry-bgblack">
                <em class="ntes-nav-entry-lofter">网易严选</em>
                <em class="ntes-nav-select-arr"></em>
                <span class="ntes-nav-msg" id="js_N_navLofterMsg">
                  <em class="ntes-nav-msg-num"></em>
                </span>
              </a>
              <div class="ntes-nav-select-pop ntes-nav-select-pop-lofter">
                <ul id="js_lofter_pop_url" class="ntes-nav-select-list clearfix">
                  <li>
                    <a href="http://you.163.com/act/static/Fb2d1OZ714.html?from=web_fc_menhu_xinrukou_1">
                      <span>888元现金券</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://you.163.com/manufacturer/list?from=web_fc_menhu_xinrukou_3">
                      <span>品牌制造商爆款</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://you.163.com/item/recommend?from=web_fc_menhu_xinrukou_4">
                      <span>999+人气好评品</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://you.163.com/flashSale/index?from=web_fc_menhu_xinrukou_5">
                      <span>限时特惠</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://you.163.com/item/list?categoryId=1005000&from=web_fc_menhu_xinrukou_7">
                      <span>居家床品</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://you.163.com/item/list?categoryId=1005001&from=web_fc_menhu_xinrukou_8">
                      <span>精致餐厨</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://you.163.com/item/list?categoryId=1008000&from=web_fc_menhu_xinrukou_9">
                      <span>箱包鞋类</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://you.163.com/item/list?categoryId=1010000&from=web_fc_menhu_xinrukou_10">
                      <span>经典服饰</span>
                    </a>
                  </li>
                  <li class="last">
                    <a href="http://you.163.com/item/list?categoryId=1005002&from=web_fc_menhu_xinrukou_11">
                      <span>健康美食</span>
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
                <em class="ntes-nav-entry-money">支付</em>
                <em class="ntes-nav-select-arr"></em>
              </a>
              <div class="ntes-nav-select-pop ntes-nav-select-pop-temp">
                <ul class="ntes-nav-select-list clearfix">
                  <li>
                    <a href="http://pay.163.com/#f=topnav">
                      <span>一卡通充值</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://ecard.163.com/script/index#f=topnav">
                      <span>一卡通购买</span>
                    </a>
                  </li>
                  <li>
                    <a href="https://k.163.com/?product=163&trackid=01">
                      <span>网易白金卡</span>
                    </a>
                  </li>
                  <li>
                    <a href="https://epay.163.com/">
                      <span>我的网易支付</span>
                    </a>
                  </li>
                  <li>
                    <a href="https://3c.163.com/?from=wangyimenhu16">
                      <span>网易智造</span>
                    </a>
                  </li>
                  <li class="last">
                    <a href="http://lq.163.com?from=neteasemoney">
                      <span>网易来钱-借现金</span>
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
                <em class="ntes-nav-entry-cart">电商</em>
                <em class="ntes-nav-select-arr"></em>
              </a>
              <div class="ntes-nav-select-pop ntes-nav-select-pop-temp">
                <ul class="ntes-nav-select-list clearfix">
                  <li>
                    <a href="http://you.163.com?from=web_in_wydaohang">
                      <span>严选</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://lq.163.com?from=neteasebuy">
                      <span>我要借钱</span>
                    </a>
                  </li>
                  <li class="last">
                    <a href="http://da.kaola.com/redirect?t=5aaebece4b392c00&p=c901ea7c&proId=1024&code=d15f8f9d72ccc507aeefda91b43c0cd2&target=https%3A%2F%2Fpages.kaola.com%2Fpages%2Factivity%2Fjfccri80pages1.shtml%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">
                      <span>网易考拉</span>
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
                <em class="ntes-nav-entry-mail">邮箱</em>
                <em class="ntes-nav-select-arr"></em>
                <span class="ntes-nav-msg" id="js_N_navMailMsg">
                  <em class="ntes-nav-msg-num" id="js_N_navMailMsgNum"></em>
                </span>
              </a>
              <div class="ntes-nav-select-pop ntes-nav-select-pop-mail">
                <ul class="ntes-nav-select-list clearfix">
                  <li>
                    <a href="http://email.163.com/#f=topnav">
                      <span>免费邮箱</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://vipmail.163.com/#f=topnav">
                      <span>VIP邮箱</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://qiye.163.com/#f=topnav">
                      <span>企业邮箱</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://reg.email.163.com/mailregAll/reg0.jsp?from=ntes_nav&regPage=163">
                      <span>免费注册</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://reg.email.163.com/unireg/call.do?cmd=register.entrance&flow=mobile&from=ntes_nav">
                      <span>快速注册</span>
                    </a>
                  </li>
                  <li class="last">
                    <a href="http://mail.163.com/dashi/dlpro.html?from=mail46">
                      <span>客户端下载</span>
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
    <!-- 二级导航 -->
    
<div class="N-nav-channel JS_NTES_LOG_FE" data-module-name="xwwzy_11_headdaohang">
    <a class="first" href="https://news.163.com/">新闻</a><a href="http://sports.163.com/">体育</a><a href="http://sports.163.com/nba/">NBA</a><a href="http://ent.163.com/">娱乐</a><a href="http://money.163.com/">财经</a><a href="http://money.163.com/stock/">股票</a><a id="_link_auto" href="http://auto.163.com/">汽车</a><a href="http://tech.163.com/">科技</a><a href="http://mobile.163.com/">手机</a><a href="http://digi.163.com/">数码</a><a href="http://lady.163.com/">女人</a><a href="http://v.163.com/">直播</a><a href="http://v.163.com/special/video/#tuijian">视频</a><a href="http://travel.163.com/">旅游</a><a id="houseUrl" href="http://house.163.com/">房产</a><a href="http://home.163.com/" id="homeUrl">家居</a><a href="http://edu.163.com/">教育</a><a href="http://book.163.com/">读书</a><a id="_link_game" href="https://news.163.com/">本地</a><a href="http://jiankang.163.com/">健康</a><a href="http://rd.da.netease.com/redirect?t=5802fb18cf033c80&p=e17af55c&proId=1024&target=https%3A%2F%2Fwww.kaola.com%2F%3Ftag%3Dbe3d8d027a530881037ef01d304eb505">海淘</a><a class="last" href="http://art.163.com/">艺术</a>
</div>
<!-- 游戏替换为本地，并定向 0310-->
<!-- 配置定向城市 -->
<script type="text/javascript" _keep="true">
var HouseNavBendiTxt = {
    "province": [
        {
            "name": "北京市",
            "shortName": "北京",
            "url":"http://bj.news.163.com/"
        },
        {
            "name": "上海市",
            "shortName": "上海",
            "url":"http://sh.news.163.com/"
        },
        {
            "name": "天津市",
            "shortName": "天津",
            "url":"http://tj.news.163.com/"
        },
        {
            "name": "广东省",
            "shortName": "广东",
            "url":"http://gd.news.163.com/"
        },
        {
            "name": "江苏省",
            "shortName": "江苏",
            "url":"http://js.news.163.com/"
        },
        {
            "name": "浙江省",
            "shortName": "浙江",
            "url":"http://zj.news.163.com/"
        },
        {
            "name": "四川省",
            "shortName": "四川",
            "url":"http://sc.news.163.com/"
        },
        {
            "name": "黑龙江省",
            "shortName": "黑龙江",
            "url":"http://hlj.news.163.com/"
        },
        {
            "name": "吉林省",
            "shortName": "吉林",
            "url":"http://jl.news.163.com/"
        },
        {
            "name": "辽宁省",
            "shortName": "辽宁",
            "url":"http://liaoning.news.163.com/"
        },
        {
            "name": "内蒙古自治区",
            "shortName": "内蒙古",
            "url":"http://hhht.news.163.com/"
        },
        {
            "name": "河北省",
            "shortName": "河北",
            "url":"http://hebei.news.163.com/"
        },
        {
            "name": "河南省",
            "shortName": "河南",
            "url":"http://henan.163.com/"
        },
        {
            "name": "山东省",
            "shortName": "山东",
            "url":"http://sd.news.163.com/"
        },
        {
            "name": "陕西省",
            "shortName": "陕西",
            "url":"http://shanxi.news.163.com/"
        },
        {
            "name": "甘肃省",
            "shortName": "甘肃",
            "url":"http://gs.news.163.com/"
        },
        {
            "name": "宁夏回族自治区",
            "shortName": "宁夏",
            "url":"http://ningxia.news.163.com/"
        },
        {
            "name": "新疆维吾尔自治区",
            "shortName": "新疆",
            "url":"http://xj.news.163.com/"
        },
        {
            "name": "安徽省",
            "shortName": "安徽",
            "url":"http://ah.news.163.com/"
        },
        {
            "name": "福建省",
            "shortName": "福建",
            "url":"http://fj.news.163.com/"
        },
        {
            "name": "广西壮族自治区",
            "shortName": "广西",
            "url":"http://gx.news.163.com/"
        },
        {
            "name": "重庆市",
            "shortName": "重庆",
            "url":"http://chongqing.163.com/"
        },
        {
            "name": "湖北省",
            "shortName": "湖北",
            "url":"http://hb.news.163.com/"
        },
        {
            "name": "江西省",
            "shortName": "江西",
            "url":"http://jx.news.163.com/"
        },
        {
            "name": "海南省",
            "shortName": "海南",
            "url":"http://hn.news.163.com/"
        },
        {
            "name": "贵州省",
            "shortName": "贵州",
            "url":"http://gz.news.163.com/"
        },
        {
            "name": "云南省",
            "shortName": "云南",
            "url":"http://yn.news.163.com/"
        },
        {
            "name": "湖南省",
            "shortName": "上海",
            "url":"http://sh.news.163.com/"
        },
        {
            "name": "山西省",
            "shortName": "山西",
            "url":"http://sx.news.163.com"
        },
        {
            "name": "西藏自治区",
            "shortName": "北京",
            "url":"http://bj.news.163.com/"
        },
        {
            "name": "香港特别行政区",
            "shortName": "广东",
            "url":"http://gd.news.163.com/"
        },
        {
            "name": "澳门特别行政区",
            "shortName": "广东",
            "url":"http://gd.news.163.com/"
        },
        {
            "name": "台湾省",
            "shortName": "广东",
            "url":"http://gd.news.163.com/"
        },
        {
            "name": "天津市",
            "shortName": "北京",
            "url":"http://bj.news.163.com/"
        },
        {
            "name": "青海省",
            "shortName": "北京",
            "url":"http://bj.news.163.com/"
        }
    ],
    "city": [
        {
            "name": "大连市",
            "shortName": "大连",
            "url":"http://dl.news.163.com"
        },
        {
            "name": "青岛市",
            "shortName": "青岛",
            "url":"http://qingdao.news.163.com"
        },
        {
            "name": "宁波市",
            "shortName": "宁波",
            "url":"http://ningbo.news.163.com"
        },
        {
            "name": "厦门市",
            "shortName": "厦门",
            "url":"http://xiamen.news.163.com"
        },
        {
            "name": "深圳市",
            "shortName": "深圳",
            "url":"http://shenzhen.news.163.com/"
        }
    ],
    "defalt": {
            "name": "",
            "shortName": "本地",
            "url":"http://news.163.com/"
        }
};
</script>
<script type="text/javascript" _keep="true">
    //本地设置定向省份
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
            js_nav_bendi.innerHTML = "本地";
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
    <div class="media2016_content" ne-module="/media/media2016/main.js">
        <!-- 项目内容 -->
        <!--红色底边上边的内容开始-->
        <div class="redBox">
            <div class="top-head">
                <div class="top-head-pic channel_relative_2016">
                    <a href="http://news.163.com/18/0426/19/DGBF31TK000194VU.html"><img src="http://img4.cache.netease.com/media/2018/4/23/201804231752550247a.jpg" alt=""/></a>
                   <span class="channel_ad_2016">广告</span>
                </div>
                <!--搜索框开始-->
                <div class="top-head-logoSearch">
                    <h1><a href=""><span></span></a></h1>
                    
                </div>
                <!--搜索框结束-->
            </div>
        </div>
        <!--红色底边上面的内容结束-->
        <!--导航栏开始-->
                <div class="greyBox">
            <div class="top-nav">
                <ul>
                    <li  class="current"  id="first"><a class="hovSelected1" href="http://media.163.com/special/media2016/">首页</a></li>
                    <li ><a class="hovSelected2" href="http://media.163.com/special/cmjujiao/">传媒聚焦</a></li>
                    <li ><a class="hovSelected3" href="http://media.163.com/special/cmyanjiu/">传媒研究</a></li>
                    <li ><a class="hovSelected4" href="http://media.163.com/special/cmrenwu/">传媒人物</a></li>
                    <li ><a class="hovSelected5" href="http://media.163.com/special/yjjiaodian/">业界焦点</a></li>
                    <li ><a class="hovSelected6" href="http://media.163.com/special/zxnashi/">招贤纳士</a></li>
                </ul>
            </div>
        </div>        <!--导航栏结束-->
        <div class="content">
            <!--左边大块部分开始-->
            <div class="content-left">
                <!--轮播图部分开始-->
                <div ne-module="" class="mediafocus">
<div ne-module="/modules/slide/slide.js" ne-state="events=mouseover;interval=4000" class="ne-focus">
    <a ne-role="slide-prev" class="ne-focus-prev"></a>
    <a ne-role="slide-next" class="ne-focus-next"></a>
            <div ne-role="slide-body" class="ne-focus-body">
        <ul ne-role="slide-scroll">
                        <li ne-role="slide-page">
                <a href="http://media.163.com/19/0812/11/EMCHR6R2007663HH.html" title="丁磊:融媒关键在有效推进信息消费升级"><img src="http://cms-bucket.ws.126.net/2019/08/12/4c5fc3ec5edb402caa7508e315056a17.jpeg" alt="丁磊:融媒关键在有效推进信息消费升级"  width="870" height="360"/></a>
                <h3><a href="http://media.163.com/19/0812/11/EMCHR6R2007663HH.html">丁磊:融媒关键在有效推进信息消费升级</a></h3>
            </li>
                        <li ne-role="slide-page">
                <a href="http://news.163.com/18/1012/00/DTSJ3D7H000194VU.html" title="网易传媒: 赋能激发用户助力内容消费升级"><img src="http://cms-bucket.nosdn.127.net/2018/10/16/89ecc84d549c4e32a1656a9a8f81bbe1.jpeg" alt="网易传媒: 赋能激发用户助力内容消费升级"  width="870" height="360"/></a>
                <h3><a href="http://news.163.com/18/1012/00/DTSJ3D7H000194VU.html">网易传媒: 赋能激发用户助力内容消费升级</a></h3>
            </li>
                        <li ne-role="slide-page">
                <a href="http://media.163.com/18/1016/15/DU8I4URU00763NKJ.html" title="网易传媒与复旦大学共建“内容创新实验室”"><img src="http://cms-bucket.nosdn.127.net/2018/10/16/72b950b91afd4e0bb9a883d01ea2cedb.jpeg" alt="网易传媒与复旦大学共建“内容创新实验室”"  width="870" height="360"/></a>
                <h3><a href="http://media.163.com/18/1016/15/DU8I4URU00763NKJ.html">网易传媒与复旦大学共建“内容创新实验室”</a></h3>
            </li>
                    </ul>
    </div>
    <div class="ne-focus-ctrl">
                <span ne-role="slide-nav"></span>
                <span ne-role="slide-nav"></span>
                <span ne-role="slide-nav"></span>
            </div>
    </div>
</div>
                <!--轮播图部分结束-->
                <!--信息流所在部分开始-->
                <div class="left-middle" id="left-middle">
                    <div class="mediaFocus">
                        <h3><span></span>传媒聚焦</h3>
                    </div>
                    <!--信息流开始-->
                                                                                                                                                                                    <div class="list_message">
                        <div class="one cur_one">
                            <!-- 第 $thisPageNo 页 -->
                                                                                                                                                                                                                                                                                        <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/19/0905/17/EOB0AE90007663HH.html"><img src="http://cms-bucket.ws.126.net/2019/09/18/5fab6277afdc4ceb8ca5bd15ed1e850e.jpeg?imageView&thumbnail=190y120" alt="2019年当我们聊品牌增长时，我们在聊什么？"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/19/0905/17/EOB0AE90007663HH.html">2019年当我们聊品牌增长时，我们在聊什么？</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            单一、古板的品牌形象已无法吸引年轻人的注意，传统品牌若想突围就必须改变。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:2019年当我们聊品牌增长时，我们在聊什么？;summary:单一、古板的品牌形象已无法吸引年轻人的注意，传统品牌若想突围就必须改变。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/EOB0AE90007663HH.html" class="count_logo">0</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/19/0917/18/EP9VBNGH00763NKJ.html"><img src="http://cms-bucket.ws.126.net/2019/09/17/7a25b6ee4ac44066acaa7a9bd85bb9bb.jpeg?imageView&thumbnail=190y120" alt="倒计时4天！仅10个名额，解答你的所有创新迷茫"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/19/0917/18/EP9VBNGH00763NKJ.html">倒计时4天！仅10个名额，解答你的所有创新迷茫</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      不增长，就出局！&hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:倒计时4天！仅10个名额，解答你的所有创新迷茫;summary:不增长，就出局！经济“寒冬”重压下，大小企业均面临着巨大的生存考验，创新增长已成为2020年企业的核心命题。在新商业、新文化、新营销生态中，过往的方法论不再奏效，经典理论不断受到挑战，诸多企业陷入了战略迷"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/EP9VBNGH00763NKJ.html" class="count_logo">4</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/19/0912/17/EOT29AHJ007647KA.html"><img src="http://cms-bucket.ws.126.net/2019/09/18/9b884e565fb4496e9734b590e1b17c00.jpeg?imageView&thumbnail=190y120" alt="250+位新锐营销人出席的大会都发生了啥？"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/19/0912/17/EOT29AHJ007647KA.html">250+位新锐营销人出席的大会都发生了啥？</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            2019年度「8周8城，案内人来了！」已圆满结束。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:250+位新锐营销人出席的大会都发生了啥？;summary:2019年度「8周8城，案内人来了！」已圆满结束。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/EOT29AHJ007647KA.html" class="count_logo">0</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/19/0902/15/EO3406JG007647KA.html"><img src="http://cms-bucket.ws.126.net/2019/09/18/5fbf9b5ff3a8454293d17359e31ebe91.jpeg?imageView&thumbnail=190y120" alt="邀请函 | 8周8城收官之战，胖鲸约你杭州见！"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/19/0902/15/EO3406JG007647KA.html">邀请函 | 8周8城收官之战，胖鲸约你杭州见！</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            希望通过顶级营销商业思维，真正进入下沉市场，帮助品牌回归商业本质，重构品牌营销，促进商业增长。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:邀请函 | 8周8城收官之战，胖鲸约你杭州见！;summary:希望通过顶级营销商业思维，真正进入下沉市场，帮助品牌回归商业本质，重构品牌营销，促进商业增长。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/EO3406JG007647KA.html" class="count_logo">0</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="https://tech.163.com/19/0730/20/ELC0L05A00097U7R.html"><img src="http://cms-bucket.ws.126.net/2019/08/12/bea3b62837f3445c89b88071c4f230d3.png?imageView&thumbnail=190y120" alt="2019网络媒体论坛技术分论坛成功举行"></a>                                    <div class="describe">
                                        <h2><a href="https://tech.163.com/19/0730/20/ELC0L05A00097U7R.html">2019网络媒体论坛技术分论坛成功举行</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            网易新闻以用户为中心，打造有生命力的内容，从而突破流量的边界。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易科技报道</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:2019网络媒体论坛技术分论坛成功举行;summary:网易新闻以用户为中心，打造有生命力的内容，从而突破流量的边界。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/tech_bbs/ELC0L05A00097U7R.html" class="count_logo">7</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/19/0809/18/EM5IIG38007663HH.html"><img src="http://cms-bucket.ws.126.net/2019/08/09/ad54236c64364367bb4597c6fe655466.jpeg?imageView&thumbnail=190y120" alt="8周8城，成都站圆满结束！下一站，重庆！"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/19/0809/18/EM5IIG38007663HH.html">8周8城，成都站圆满结束！下一站，重庆！</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      伴随北上的发展趋于饱和及沉重的生活住房压力，越来越多企业及机构将发展投资目标瞄准其他一二线城市及下沉地区。「成都」作为西部地区重要的中心城市，集国家重要高新技术产业基地、 集商贸物流中心和综合交通枢纽 &hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:8周8城，成都站圆满结束！下一站，重庆！;summary:伴随北上的发展趋于饱和及沉重的生活住房压力，越来越多企业及机构将发展投资目标瞄准其他一二线城市及下沉地区。「成都」作为西部地区重要的中心城市，集国家重要高新技术产业基地、 集商贸物流中心和综合交通枢纽 "></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/EM5IIG38007663HH.html" class="count_logo">3</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="sem hidden">
                                <div class="top_text">
                                    <h2><a href="">高德发布北京便利指数报告：一小时一座城</a></h2>
                                    <span>推广</span>
                                </div>
                                <div class="bottom_img">
                                    <a href=""><img src="http://img2.126.net/xoimages/paopao/20160301/xxx/960x130.jpg" alt="" width="870" height="180"/></a>
                                </div>
</div>
                                                        <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/19/0726/16/EL1AP8FP007663HH.html"><img src="http://cms-bucket.ws.126.net/2019/07/26/70a8ca4643f24c149dea0fd0b03071af.jpeg?imageView&thumbnail=190y120" alt="胖鲸开放日报名 | 8周8城，周六深圳见！"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/19/0726/16/EL1AP8FP007663HH.html">胖鲸开放日报名 | 8周8城，周六深圳见！</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            带你探寻「深圳」如何凭借独特的开放与包容特征赋予企业新颖的营销玩法。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:胖鲸开放日报名 | 8周8城，周六深圳见！;summary:带你探寻「深圳」如何凭借独特的开放与包容特征赋予企业新颖的营销玩法。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/EL1AP8FP007663HH.html" class="count_logo">0</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/19/0718/10/EKC4DA15007663HH.html"><img src="http://cms-bucket.ws.126.net/2019/07/18/2444e9e797ec4ba89d6894fa20b5a67a.jpeg?imageView&thumbnail=190y120" alt="8周8城 | 7月20日，胖鲸约你广州面基"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/19/0718/10/EKC4DA15007663HH.html">8周8城 | 7月20日，胖鲸约你广州面基</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            汇聚营销商业思维
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:8周8城 | 7月20日，胖鲸约你广州面基;summary:汇聚营销商业思维"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/EKC4DA15007663HH.html" class="count_logo">0</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/19/0621/13/EI6SQO8O007663HH.html"><img src="http://cms-bucket.ws.126.net/2019/06/21/d69da654e98545179b6614bf8635f8b1.jpeg?imageView&thumbnail=190y120" alt="跨过边缘，给自己一个机会探索更广阔的世界"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/19/0621/13/EI6SQO8O007663HH.html">跨过边缘，给自己一个机会探索更广阔的世界</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      有人给这个时代青年人的提前“老去”冠上了一个名词，四分之一人生危机（Quarter-life Crisis）。听起来是中年危机的衍生品，却直指当下青年的焦虑和不安。我们都想要成为更好的自己，却又看不清自己想要的人生究竟 &hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:跨过边缘，给自己一个机会探索更广阔的世界;summary:有人给这个时代青年人的提前“老去”冠上了一个名词，四分之一人生危机（Quarter-life Crisis）。听起来是中年危机的衍生品，却直指当下青年的焦虑和不安。我们都想要成为更好的自己，却又看不清自己想要的人生究竟 "></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/EI6SQO8O007663HH.html" class="count_logo">0</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/19/0422/14/EDCH3JEB007663HH.html"><img src="http://cms-bucket.ws.126.net/2019/04/22/c623f5f416bf49d38210195d57903c87.png?imageView&thumbnail=190y120" alt="网易严选品牌共创脱贫计划首站成果发布 严选模式 "></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/19/0422/14/EDCH3JEB007663HH.html">网易严选品牌共创脱贫计划首站成果发布 严选模式 </a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      4月21日，杭黔东西部扶贫协作电商消费扶贫项目暨网易严选雷山体验馆开馆仪式，在贵州省黔东南州雷山县西江千户苗寨举行。杭州市委副书记、市长徐立毅、贵州省人民政府副省长吴强、黔东南州委书记桑维亮等杭黔两地各 &hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:网易严选品牌共创脱贫计划首站成果发布 严选模式 ;summary:4月21日，杭黔东西部扶贫协作电商消费扶贫项目暨网易严选雷山体验馆开馆仪式，在贵州省黔东南州雷山县西江千户苗寨举行。杭州市委副书记、市长徐立毅、贵州省人民政府副省长吴强、黔东南州委书记桑维亮等杭黔两地各 "></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/EDCH3JEB007663HH.html" class="count_logo">8</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/19/0306/17/E9JP3UCC00763NKJ.html"><img src="http://cms-bucket.ws.126.net/2019/03/06/c7702c7e6cd7409d8d3c6fc3c4d0191a.png?imageView&thumbnail=190y120" alt="每一帧都有力量！中国24小时·天道酬勤"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/19/0306/17/E9JP3UCC00763NKJ.html">每一帧都有力量！中国24小时·天道酬勤</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            两会期间，人民日报新媒体推出微视频《中国24小时》，今天播出下集《天道酬勤》为你讲述自强不息的中国人。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：人民日报客户端</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:每一帧都有力量！中国24小时·天道酬勤;summary:两会期间，人民日报新媒体推出微视频《中国24小时》，今天播出下集《天道酬勤》为你讲述自强不息的中国人。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/E9JP3UCC00763NKJ.html" class="count_logo">0</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/19/0226/11/E8UGET0O007663HH.html"><img src="http://cms-bucket.ws.126.net/2019/02/26/7141d09b23f64bbeaf3ae3e81de30911.png?imageView&thumbnail=190y120" alt="“我不是老板”！！！锅从天上来，这事该谁管？"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/19/0226/11/E8UGET0O007663HH.html">“我不是老板”！！！锅从天上来，这事该谁管？</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                          你从来没有去注册过公司，可不知什么时候你名下却多了一家甚至几家、几十家公司，莫名其妙地当上了老板，做起了法人代表，或者，更糟糕的，因为有的公司欠账不还，你还上了老赖黑名单；你还没弄明白怎么回事，税务部&hellip;
                                                                                                                                                                                            </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：央视新闻客户端</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:“我不是老板”！！！锅从天上来，这事该谁管？;summary:你从来没有去注册过公司，可不知什么时候你名下却多了一家甚至几家、几十家公司，莫名其妙地当上了老板，做起了法人代表，或者，更糟糕的，因为有的公司欠账不还，你还上了老赖黑名单；你还没弄明白怎么回事，税务部"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/E8UGET0O007663HH.html" class="count_logo">20</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/19/0219/15/E8D006SC007663HH.html"><img src="http://cms-bucket.ws.126.net/2019/02/19/d99e68fbb8914c35900fd34f49c7c9a6.png?imageView&thumbnail=190y120" alt="央广时评：习近平总书记“2·19”重要讲话三周年"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/19/0219/15/E8D006SC007663HH.html">央广时评：习近平总书记“2·19”重要讲话三周年</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      新时代展现新作为，新形势迎接新挑战，新起点续写新篇章。全媒体时代，新闻舆论工作面临新的挑战；全媒体时代，新闻舆论工作者更要守正创新，砥砺奋进，推动媒体融合向纵深发展，巩固全党全国人民共同思想基础。“党&hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:央广时评：习近平总书记“2·19”重要讲话三周年;summary:新时代展现新作为，新形势迎接新挑战，新起点续写新篇章。全媒体时代，新闻舆论工作面临新的挑战；全媒体时代，新闻舆论工作者更要守正创新，砥砺奋进，推动媒体融合向纵深发展，巩固全党全国人民共同思想基础。“党"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/E8D006SC007663HH.html" class="count_logo">0</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/19/0114/11/E5FS2NHO00763NKJ.html"><img src="http://cms-bucket.ws.126.net/2019/01/14/9df74758374c4f9996f45ab972dd525c.jpeg?imageView&thumbnail=190y120" alt="网易新闻年度洞察，年轻人说「人生苦短元气要满」"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/19/0114/11/E5FS2NHO00763NKJ.html">网易新闻年度洞察，年轻人说「人生苦短元气要满」</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            网易新闻在2018年与2019年交界之时推出的「年度态度」系列纪录片，就从过去一年中来自电竞、粉丝、科普、写作等领域的年轻人中，捕捉到了那些暗藏在时代压力与个人成长之中的「满满元气」。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:网易新闻年度洞察，年轻人说「人生苦短元气要满」;summary:网易新闻在2018年与2019年交界之时推出的「年度态度」系列纪录片，就从过去一年中来自电竞、粉丝、科普、写作等领域的年轻人中，捕捉到了那些暗藏在时代压力与个人成长之中的「满满元气」。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/E5FS2NHO00763NKJ.html" class="count_logo">7</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/18/1227/16/E421SMOI00763NKJ.html"><img src="http://cms-bucket.nosdn.127.net/2018/12/27/8869ac381f0943a7b5684a7453972d0e.jpg?imageView&thumbnail=190y120" alt="北青客户端“北京头条”正式上线"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/18/1227/16/E421SMOI00763NKJ.html">北青客户端“北京头条”正式上线</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            “北京头条”以发布新闻和资讯为主，融合视频直播、社交功能、生活服务等多种功能，力争打造一个以年轻人为主、辐射更广泛人群、在全国具有重要影响力的新型主流媒体平台。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：北青网</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:北青客户端“北京头条”正式上线;summary:“北京头条”以发布新闻和资讯为主，融合视频直播、社交功能、生活服务等多种功能，力争打造一个以年轻人为主、辐射更广泛人群、在全国具有重要影响力的新型主流媒体平台。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/E421SMOI00763NKJ.html" class="count_logo">7</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                    </div>
                        <div class="one">
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/18/1210/14/E2M0F5SP007663HH.html"><img src="http://cms-bucket.nosdn.127.net/2018/12/10/0ba505ce69ee4dd4827deb4da049f3a8.png?imageView&thumbnail=190y120" alt="田华：网易新闻的优势在于对品质内容的坚持"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/18/1210/14/E2M0F5SP007663HH.html">田华：网易新闻的优势在于对品质内容的坚持</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      2018年12月9日，清博盛典暨新媒体峰会在北京举行。网易传媒副总编辑田华在大会上做了《视频的内容生态》的主题演讲，阐述了网易传媒在视频内容生态方面的布局。田华认为，视频极大地改变了传统资讯产业，网易传媒的 &hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:田华：网易新闻的优势在于对品质内容的坚持;summary:2018年12月9日，清博盛典暨新媒体峰会在北京举行。网易传媒副总编辑田华在大会上做了《视频的内容生态》的主题演讲，阐述了网易传媒在视频内容生态方面的布局。田华认为，视频极大地改变了传统资讯产业，网易传媒的 "></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/E2M0F5SP007663HH.html" class="count_logo">8</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/18/1109/10/E05OS5VQ007663HH.html"><img src="http://cms-bucket.nosdn.127.net/2018/11/09/12746bbae37a4e94ad8f3ed129571084.jpeg?imageView&thumbnail=190y120" alt="公益在行动 网易携手海澜之家走进大凉山"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/18/1109/10/E05OS5VQ007663HH.html">公益在行动 网易携手海澜之家走进大凉山</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      11月6日，由网易联合海澜之家、中国社会福利基金会暖流计划公益基金共同发起的“多一克温暖”爱心公益活动，在四川省西南部川滇交界处的大凉山红旗小学进行了现场捐赠。随后，近2万件冬衣将被送到全国的19个省份、23&hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:公益在行动 网易携手海澜之家走进大凉山;summary:11月6日，由网易联合海澜之家、中国社会福利基金会暖流计划公益基金共同发起的“多一克温暖”爱心公益活动，在四川省西南部川滇交界处的大凉山红旗小学进行了现场捐赠。随后，近2万件冬衣将被送到全国的19个省份、23"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/E05OS5VQ007663HH.html" class="count_logo">0</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/18/1105/17/DVS8PE4D00763NKJ.html"><img src="http://cms-bucket.nosdn.127.net/2018/11/05/e29e953ada7140aeb563c45e0689e742.jpeg?imageView&thumbnail=190y120" alt="网易新闻获评广东互联网大会＂最具商业价值企业＂"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/18/1105/17/DVS8PE4D00763NKJ.html">网易新闻获评广东互联网大会"最具商业价值企业"</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            作为行业领先的移动资讯产品，网易新闻将持续深挖“内容基因”，将持续以用户为核心，赋能并激发价值用户，打造平台、用户、客户共赢的局面。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:网易新闻获评广东互联网大会”最具商业价值企业”;summary:作为行业领先的移动资讯产品，网易新闻将持续深挖“内容基因”，将持续以用户为核心，赋能并激发价值用户，打造平台、用户、客户共赢的局面。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/DVS8PE4D00763NKJ.html" class="count_logo">2</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://tech.163.com/18/1011/18/DTRVSPS900097U7R.html"><img src="http://cms-bucket.nosdn.127.net/2018/10/16/a9c71911423c4f58a2a513e8065fd33b.jpeg?imageView&thumbnail=190y120" alt="李黎：网易要成为用户获取高品质内容的主场"></a>                                    <div class="describe">
                                        <h2><a href="http://tech.163.com/18/1011/18/DTRVSPS900097U7R.html">李黎：网易要成为用户获取高品质内容的主场</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            网易传媒CEO李黎表示，当前传媒产业已经进入下半场，内容消费市场方兴未艾，红利远没有结束。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易科技报道</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:李黎：网易要成为用户获取高品质内容的主场;summary:网易传媒CEO李黎表示，当前传媒产业已经进入下半场，内容消费市场方兴未艾，红利远没有结束。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/tech_bbs/DTRVSPS900097U7R.html" class="count_logo">470</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/18/1016/16/DU8LD5RK00763NKJ.html"><img src="http://cms-bucket.nosdn.127.net/2018/10/16/e7df76f4c79e443598843d8ea5b6a871.jpeg?imageView&thumbnail=190y120" alt="网易刘晶：未来人们会更习惯为在线课程付费"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/18/1016/16/DU8LD5RK00763NKJ.html">网易刘晶：未来人们会更习惯为在线课程付费</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            网易公开课仍会坚持生产和传播大量免费内容资源，并且会持续增加。目前免费课程的占90%以上。同时，网易公开课不是把之前的免费的变成付费的，而是提供新的内容，增量的服务。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：羊城晚报</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:网易刘晶：未来人们会更习惯为在线课程付费;summary:网易公开课仍会坚持生产和传播大量免费内容资源，并且会持续增加。目前免费课程的占90%以上。同时，网易公开课不是把之前的免费的变成付费的，而是提供新的内容，增量的服务。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/DU8LD5RK00763NKJ.html" class="count_logo">155</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://tech.163.com/18/1011/21/DTSARNTK00097U7R.html"><img src="http://cms-bucket.nosdn.127.net/2018/10/16/1244608d9f4744e594cd1bbfcb660a0f.jpeg?imageView&thumbnail=190y120" alt="网易传媒王腾飞：社区产品＂讲讲＂构建更真实的世界"></a>                                    <div class="describe">
                                        <h2><a href="http://tech.163.com/18/1011/21/DTSARNTK00097U7R.html">网易传媒王腾飞：社区产品"讲讲"构建更真实的世界</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            在跟贴15周年之际，网易新闻把跟贴社区进行强化和升级，推出讲讲的功能。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易科技报道</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:网易传媒王腾飞：社区产品”讲讲”构建更真实的世界;summary:在跟贴15周年之际，网易新闻把跟贴社区进行强化和升级，推出讲讲的功能。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/tech_bbs/DTSARNTK00097U7R.html" class="count_logo">11</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://tech.163.com/18/1011/19/DTS17C4I00097U7R.html"><img src="http://cms-bucket.nosdn.127.net/2018/10/16/2923b597be2c450f9a80736d09d5345f.jpeg?imageView&thumbnail=190y120" alt="顾晓琨:网易公开课将是用户终身学习的泛知识平台"></a>                                    <div class="describe">
                                        <h2><a href="http://tech.163.com/18/1011/19/DTS17C4I00097U7R.html">顾晓琨:网易公开课将是用户终身学习的泛知识平台</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            在内容消费升级时代，网易公开课将从过去的打破壁垒到打破边界，让用户处于更广阔的世界；从教育公平到探索上限，为所有的用户构建一个可以随时随地终身学习的泛知识平台。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易科技报道</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:顾晓琨:网易公开课将是用户终身学习的泛知识平台;summary:在内容消费升级时代，网易公开课将从过去的打破壁垒到打破边界，让用户处于更广阔的世界；从教育公平到探索上限，为所有的用户构建一个可以随时随地终身学习的泛知识平台。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/tech_bbs/DTS17C4I00097U7R.html" class="count_logo">21</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://tech.163.com/18/1011/21/DTSB38O700097U7R.html"><img src="http://cms-bucket.nosdn.127.net/2018/10/16/f7390c7ad4234336b3f01af0bdb98e6b.jpeg?imageView&thumbnail=190y120" alt="网易原创：打动用户才会有真正的流量"></a>                                    <div class="describe">
                                        <h2><a href="http://tech.163.com/18/1011/21/DTSB38O700097U7R.html">网易原创：打动用户才会有真正的流量</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            在市场上要打动用户才会有真正的流量；所以，在每次策划时，网易原创都会考虑策划的意义，从深层次去思考其是不是能够讲一个好的故事，从而激发用户的思考，让用户来一起互动、创作。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易科技报道</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:网易原创：打动用户才会有真正的流量;summary:在市场上要打动用户才会有真正的流量；所以，在每次策划时，网易原创都会考虑策划的意义，从深层次去思考其是不是能够讲一个好的故事，从而激发用户的思考，让用户来一起互动、创作。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/tech_bbs/DTSB38O700097U7R.html" class="count_logo">9</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://tech.163.com/18/1011/20/DTS70DFO00097U7R.html"><img src="http://cms-bucket.nosdn.127.net/2018/10/16/7cdaff5635484e288aacf604d211f76a.jpeg?imageView&thumbnail=190y120" alt="李淼:内容消费升级本质是内容和用户关联的升级"></a>                                    <div class="describe">
                                        <h2><a href="http://tech.163.com/18/1011/20/DTS70DFO00097U7R.html">李淼:内容消费升级本质是内容和用户关联的升级</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            一个好的内容消费平台，除了把用户拉来，有足够多的内容满足用户的基本需求外，还要让用户在情感的释放、价值观共鸣、知识的获取上有所满足。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易科技报道</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:李淼:内容消费升级本质是内容和用户关联的升级;summary:一个好的内容消费平台，除了把用户拉来，有足够多的内容满足用户的基本需求外，还要让用户在情感的释放、价值观共鸣、知识的获取上有所满足。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/tech_bbs/DTS70DFO00097U7R.html" class="count_logo">13</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://tech.163.com/18/1011/20/DTS5RABB00097U7R.html"><img src="http://cms-bucket.nosdn.127.net/2018/10/16/5a999de07e74496db424eb43f0983544.jpeg?imageView&thumbnail=190y120" alt="＂网易号＂图文及视频阅读量每天超过8亿和5亿"></a>                                    <div class="describe">
                                        <h2><a href="http://tech.163.com/18/1011/20/DTS5RABB00097U7R.html">"网易号"图文及视频阅读量每天超过8亿和5亿</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            “网易号”是第一个将中腰部作者作为重点扶持的平台，通过助推这些作者带来的多样性和多元化，强化平台自身的核心竞争力。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易科技报道</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:”网易号”图文及视频阅读量每天超过8亿和5亿;summary:“网易号”是第一个将中腰部作者作为重点扶持的平台，通过助推这些作者带来的多样性和多元化，强化平台自身的核心竞争力。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/tech_bbs/DTS5RABB00097U7R.html" class="count_logo">20</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://tech.163.com/18/1011/21/DTSA23SK00097U7R.html"><img src="http://cms-bucket.nosdn.127.net/2018/10/16/1040d3f328e241eeb16347ddf3010f1d.jpeg?imageView&thumbnail=190y120" alt="田华：＂平台＂和＂原创＂两大方向打造内容新生态 "></a>                                    <div class="describe">
                                        <h2><a href="http://tech.163.com/18/1011/21/DTSA23SK00097U7R.html">田华："平台"和"原创"两大方向打造内容新生态 </a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            网易传媒将在内容消费升级的“三轴两翼”进行打造内容新生态，延续以用户为核心，沿着“平台”和“原创”两大方向布局。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易科技报道</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:田华：”平台”和”原创”两大方向打造内容新生态 ;summary:网易传媒将在内容消费升级的“三轴两翼”进行打造内容新生态，延续以用户为核心，沿着“平台”和“原创”两大方向布局。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/tech_bbs/DTSA23SK00097U7R.html" class="count_logo">6</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://news.163.com/18/1012/00/DTSJ3D7H000194VU.html"><img src="http://cms-bucket.nosdn.127.net/2018/10/16/472fe0c7b5dd4dbd940aed1668ae3b68.jpeg?imageView&thumbnail=190y120" alt="网易传媒战略发布 赋能激发用户助力内容消费升级"></a>                                    <div class="describe">
                                        <h2><a href="http://news.163.com/18/1012/00/DTSJ3D7H000194VU.html">网易传媒战略发布 赋能激发用户助力内容消费升级</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            未来网易传媒将持续以用户为核心，赋能并激发价值用户,同时围绕平台和原创两个方向，持续打造内容消费升级新生态。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:网易传媒战略发布 赋能激发用户助力内容消费升级;summary:未来网易传媒将持续以用户为核心，赋能并激发价值用户,同时围绕平台和原创两个方向，持续打造内容消费升级新生态。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/news2_bbs/DTSJ3D7H000194VU.html" class="count_logo">68</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/18/1016/15/DU8I4URU00763NKJ.html"><img src="http://cms-bucket.nosdn.127.net/2018/10/16/979e792c03f84f63b1c160eb2aecf7b8.jpeg?imageView&thumbnail=190y120" alt="网易传媒与复旦大学共建“内容创新实验室”"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/18/1016/15/DU8I4URU00763NKJ.html">网易传媒与复旦大学共建“内容创新实验室”</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            网易传媒与复旦大学的合作是业界学界的强强联合，网易新闻将充分利用实践案例和平台资源，与复旦大学突出的科研实力优势互补，在新媒体内容和产品创新领域，围绕产出、科学研究、社会服务等方面展开深入合作。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:网易传媒与复旦大学共建“内容创新实验室”;summary:网易传媒与复旦大学的合作是业界学界的强强联合，网易新闻将充分利用实践案例和平台资源，与复旦大学突出的科研实力优势互补，在新媒体内容和产品创新领域，围绕产出、科学研究、社会服务等方面展开深入合作。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/DU8I4URU00763NKJ.html" class="count_logo">4</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/18/0817/20/DPEH5TN200763NKJ.html"><img src="http://cms-bucket.nosdn.127.net/catchpic/6/69/692331308ecdd35f6bfe35858a023985.jpeg?imageView&thumbnail=190y120" alt="网易新闻首推动作捕捉知识增量短视频IP“曲大师”"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/18/0817/20/DPEH5TN200763NKJ.html">网易新闻首推动作捕捉知识增量短视频IP“曲大师”</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            “曲大师”聚焦深度的虚拟偶像IP，希望以内容和技术双驱动力，在未来实现更立体、多维度的IP延展。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:网易新闻首推动作捕捉知识增量短视频IP“曲大师”;summary:“曲大师”聚焦深度的虚拟偶像IP，希望以内容和技术双驱动力，在未来实现更立体、多维度的IP延展。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/DPEH5TN200763NKJ.html" class="count_logo">0</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/18/0626/10/DL7KPBP900763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img3.cache.netease.com/media/2018/6/26/201806261055277914c_550.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="首都机场放个球？网易新闻这个操作有些6"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/18/0626/10/DL7KPBP900763NKJ.html">首都机场放个球？网易新闻这个操作有些6</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            2018年世界杯，网易新闻坐拥“卫冕冠军德国队”及“7.44亿热门夺冠球队法国队”两支劲旅的独家报道资源，给用户呈现最精彩的内容盛宴。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:首都机场放个球？网易新闻这个操作有些6;summary:2018年世界杯，网易新闻坐拥“卫冕冠军德国队”及“7.44亿热门夺冠球队法国队”两支劲旅的独家报道资源，给用户呈现最精彩的内容盛宴。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/DL7KPBP900763NKJ.html" class="count_logo">9</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                </div>
                        <div class="one">
                                                                                                                                                                                                                                                                                                                    <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://tech.163.com/18/0426/22/DGBPMHG900097U7T.html"><img src="http://nimg.ws.126.net/?url=http://img3.cache.netease.com/news/2018/4/28/20180428113237c1afa.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="解密短视频内容生态：papi酱们是这样持续赚钱的"></a>                                    <div class="describe">
                                        <h2><a href="http://tech.163.com/18/0426/22/DGBPMHG900097U7T.html">解密短视频内容生态：papi酱们是这样持续赚钱的</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            MCN和平台最健康的关系是能共生、共同地促进和发展。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易科技报道</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:解密短视频内容生态：papi酱们是这样持续赚钱的;summary:MCN和平台最健康的关系是能共生、共同地促进和发展。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/tech_bbs/DGBPMHG900097U7T.html" class="count_logo">159</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://news.163.com/18/0426/19/DGBF31TK000194VU.html"><img src="http://nimg.ws.126.net/?url=http://img4.cache.netease.com/news/2018/4/28/20180428111947989ff.png&thumbnail=190x2147483647&quality=75&type=jpg" alt="GMIC网易专场:＂教育付费＂与＂短视频＂是关键词"></a>                                    <div class="describe">
                                        <h2><a href="http://news.163.com/18/0426/19/DGBF31TK000194VU.html">GMIC网易专场:"教育付费"与"短视频"是关键词</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            网易新闻将大力投入打造“教育付费”与“短视频”内容，努力构建内容行业健康的新生态。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:GMIC网易专场:”教育付费”与”短视频”是关键词;summary:网易新闻将大力投入打造“教育付费”与“短视频”内容，努力构建内容行业健康的新生态。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/news2_bbs/DGBF31TK000194VU.html" class="count_logo">41</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://sports.163.com/18/0301/15/DBQSVQT500058781.html"><img src="http://nimg.ws.126.net/?url=http://img5.cache.netease.com/news/2018/4/28/201804281142076b52c.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="勒夫祝贺网易新闻独家签约德国队:我们已迫不及待"></a>                                    <div class="describe">
                                        <h2><a href="http://sports.163.com/18/0301/15/DBQSVQT500058781.html">勒夫祝贺网易新闻独家签约德国队:我们已迫不及待</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            继法国队之后，网易又与目前世界排名第一的超级劲旅德国队达成合作，成为其世界杯的中国独家网络媒体合作伙伴。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易体育</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:勒夫祝贺网易新闻独家签约德国队:我们已迫不及待;summary:继法国队之后，网易又与目前世界排名第一的超级劲旅德国队达成合作，成为其世界杯的中国独家网络媒体合作伙伴。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/sports2_bbs/DBQSVQT500058781.html" class="count_logo">3750</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/18/0117/12/D8BQJCUM00763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img3.cache.netease.com/media/2018/1/17/201801171231365300e_550.png&thumbnail=190x2147483647&quality=75&type=jpg" alt="网易新闻上线直播竞答产品 “网易大赢家”"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/18/0117/12/D8BQJCUM00763NKJ.html">网易新闻上线直播竞答产品 “网易大赢家”</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            网易新闻上线知识竞答综艺直播节目“网易大赢家”，，用户升级最新版本网易新闻或者网易薄荷直播都可参与直播答题。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:网易新闻上线直播竞答产品 “网易大赢家”;summary:网易新闻上线知识竞答综艺直播节目“网易大赢家”，，用户升级最新版本网易新闻或者网易薄荷直播都可参与直播答题。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/D8BQJCUM00763NKJ.html" class="count_logo">88</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0930/17/CVJMDVJ400763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img5.cache.netease.com/media/2017/9/30/20170930173110ba829_550.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="打造网上“红色展馆” “最美浙江人”正式上线"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0930/17/CVJMDVJ400763NKJ.html">打造网上“红色展馆” “最美浙江人”正式上线</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      “互联网+最美”，用指尖触碰，感应榜样的力量！&hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:打造网上“红色展馆” “最美浙江人”正式上线;summary:“互联网+最美”，用指尖触碰，感应榜样的力量！浙江广电集团积极推进媒体融合，打造互联网上“红色展馆”。9月30日，“最美浙江人”网上展馆正式上线，让浙江的“最美”风尚传播更广，为党的十九大献礼。“最美浙江"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CVJMDVJ400763NKJ.html" class="count_logo">142</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0926/11/CV8OCC9600763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img4.cache.netease.com/media/2017/9/26/20170926113452481e6.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="网易新闻联合GQ、老道消息 把普通人的故事送上天"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0926/11/CV8OCC9600763NKJ.html">网易新闻联合GQ、老道消息 把普通人的故事送上天</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            网易新闻态度热点日联合五大非虚构文学类自媒体发起了"云真事儿"非虚构故事计划，希望能够让人们在分享自己故事的过程中快乐加倍、痛苦减半。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:网易新闻联合GQ、老道消息 把普通人的故事送上天;summary:网易新闻态度热点日联合五大非虚构文学类自媒体发起了”云真事儿”非虚构故事计划，希望能够让人们在分享自己故事的过程中快乐加倍、痛苦减半。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CV8OCC9600763NKJ.html" class="count_logo">33</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0920/14/CUPK319O00763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img2.cache.netease.com/media/2017/9/20/201709201423327b15a_550.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="中央人民广播电台2018媒体资源推介会在京举行"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0920/14/CUPK319O00763NKJ.html">中央人民广播电台2018媒体资源推介会在京举行</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      9月19日上午，中央人民广播电台2018年媒体资源推介暨中国品牌联盟发布会在北京隆重举行，对2018年的节目、渠道和广告资源进行集中发布和推介。这是继2015年“破茧”后，中央人民广播电台举办的又一大型媒体推介会， &hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:中央人民广播电台2018媒体资源推介会在京举行;summary:9月19日上午，中央人民广播电台2018年媒体资源推介暨中国品牌联盟发布会在北京隆重举行，对2018年的节目、渠道和广告资源进行集中发布和推介。这是继2015年“破茧”后，中央人民广播电台举办的又一大型媒体推介会， "></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CUPK319O00763NKJ.html" class="count_logo">34</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0919/17/CUNDFU7L00763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img6.cache.netease.com/media/2017/9/19/2017091917523599775_550.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="金融行业或将进入全民理财时代？"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0919/17/CUNDFU7L00763NKJ.html">金融行业或将进入全民理财时代？</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      近日，金融行业16家知名机构为打造理财新概念首次联合发声，大规模“上财富号理财”的主题硬广相继登陆北上广深杭五大城市，社交网络同步引爆。不仅将用新的方式搅动金融体验重构，更为互联网90一代原住民迎来了理财&hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:金融行业或将进入全民理财时代？;summary:近日，金融行业16家知名机构为打造理财新概念首次联合发声，大规模“上财富号理财”的主题硬广相继登陆北上广深杭五大城市，社交网络同步引爆。不仅将用新的方式搅动金融体验重构，更为互联网90一代原住民迎来了理财"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CUNDFU7L00763NKJ.html" class="count_logo">20</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0918/16/CUKMF1GR00763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img3.cache.netease.com/media/2017/9/18/20170918163436963c7_550.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="马挺马维父女二人合作《马话日本》趣谈别样扶桑"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0918/16/CUKMF1GR00763NKJ.html">马挺马维父女二人合作《马话日本》趣谈别样扶桑</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      9月16日，日本庆应义塾大学访问学者、新华社世界问题研究所特约研究员马挺所著的新书《马话日本》在北京彼岸书店发布。这本文集由东方出版社出版，由旅日三十余年的马挺所撰写的八十一篇千字文随笔，和他的女儿马维 &hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:马挺马维父女二人合作《马话日本》趣谈别样扶桑;summary:9月16日，日本庆应义塾大学访问学者、新华社世界问题研究所特约研究员马挺所著的新书《马话日本》在北京彼岸书店发布。这本文集由东方出版社出版，由旅日三十余年的马挺所撰写的八十一篇千字文随笔，和他的女儿马维 "></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CUKMF1GR00763NKJ.html" class="count_logo">20</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0915/17/CUD2BAGN00763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img1.cache.netease.com/media/2017/9/15/201709151726522f547_550.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="长春新区开放与发展论坛在京成功举行"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0915/17/CUD2BAGN00763NKJ.html">长春新区开放与发展论坛在京成功举行</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      9月15日，由长春新区管理委员会主办，中国日报社承办的长春新区开放与发展论坛在中国日报社成功举行。论坛以“规划先行 开放振兴”为主题，向中外嘉宾全面介绍长春新区总体规划与发展现状，共同探讨未来合作，促进长&hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:长春新区开放与发展论坛在京成功举行;summary:9月15日，由长春新区管理委员会主办，中国日报社承办的长春新区开放与发展论坛在中国日报社成功举行。论坛以“规划先行 开放振兴”为主题，向中外嘉宾全面介绍长春新区总体规划与发展现状，共同探讨未来合作，促进长"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CUD2BAGN00763NKJ.html" class="count_logo">15</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0915/15/CUCT6NLI00763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img4.cache.netease.com/media/2017/9/15/201709151554507b4e2.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="为什么天天山珍海味的清朝皇帝都是瘦子呢？"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0915/15/CUCT6NLI00763NKJ.html">为什么天天山珍海味的清朝皇帝都是瘦子呢？</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            9月15-17日御膳大使饿了么将在京城、沪上两地开设为期3天的美食体验店《朕饿了》.
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:为什么天天山珍海味的清朝皇帝都是瘦子呢？;summary:9月15-17日御膳大使饿了么将在京城、沪上两地开设为期3天的美食体验店《朕饿了》."></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CUCT6NLI00763NKJ.html" class="count_logo">40</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0907/13/CTO2ORE900763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img3.cache.netease.com/media/2017/9/7/2017090713490262ade.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="网易新闻羊驼主编王三三亮相上海“当夏天台节”"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0907/13/CTO2ORE900763NKJ.html">网易新闻羊驼主编王三三亮相上海“当夏天台节”</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      8月26日，原创IP项目“当夏天台节-野岛”在上海静安大悦城正式拉开帷幕，本次展览为期一个月，网易新闻、中国三明治、W、朱敬一等33家品牌机构及艺术家团队紧密围绕“野岛”这一主题、以大悦城为创作场景，共同打造 &hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:网易新闻羊驼主编王三三亮相上海“当夏天台节”;summary:8月26日，原创IP项目“当夏天台节-野岛”在上海静安大悦城正式拉开帷幕，本次展览为期一个月，网易新闻、中国三明治、W、朱敬一等33家品牌机构及艺术家团队紧密围绕“野岛”这一主题、以大悦城为创作场景，共同打造 "></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CTO2ORE900763NKJ.html" class="count_logo">18</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0828/18/CSUPJO4T00763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img5.cache.netease.com/media/2017/8/28/2017082818095517254_550.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="刘熙晨：网综整体处于起步状态，需突破三大瓶颈"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0828/18/CSUPJO4T00763NKJ.html">刘熙晨：网综整体处于起步状态，需突破三大瓶颈</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      摘要：媒体融合背景下，媒介形态与媒体模式重构，内容创新始终是媒体立于不败之地的核心竞争力。新闻节目、文化节目以及泛娱乐节目如何在竞争日益激烈的市场中找到各自的精准定位，进行持续的内容创新，利用平台效应&hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:刘熙晨：网综整体处于起步状态，需突破三大瓶颈;summary:摘要：媒体融合背景下，媒介形态与媒体模式重构，内容创新始终是媒体立于不败之地的核心竞争力。新闻节目、文化节目以及泛娱乐节目如何在竞争日益激烈的市场中找到各自的精准定位，进行持续的内容创新，利用平台效应"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CSUPJO4T00763NKJ.html" class="count_logo">19</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0804/14/CR0J7JM100763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img6.cache.netease.com/media/2017/8/4/201708041421245618e_550.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="冯绍峰王凯领衔，众多明星参与这场心事快闪"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0804/14/CR0J7JM100763NKJ.html">冯绍峰王凯领衔，众多明星参与这场心事快闪</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      当年，在电影《花样年华》的结尾，梁朝伟在吴哥窟的一个树洞前，倾诉了自己的秘密。这个场景曾经感动过无数的观众。穿梭于城市的我们，无处宣泄的情感，无法整理的心绪，能够寄托在何处？在这个夏天，有一场大胆的实&hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:冯绍峰王凯领衔，众多明星参与这场心事快闪;summary:当年，在电影《花样年华》的结尾，梁朝伟在吴哥窟的一个树洞前，倾诉了自己的秘密。这个场景曾经感动过无数的观众。穿梭于城市的我们，无处宣泄的情感，无法整理的心绪，能够寄托在何处？在这个夏天，有一场大胆的实"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CR0J7JM100763NKJ.html" class="count_logo">51</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0731/17/CQMKAFEK00763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img5.cache.netease.com/media/2017/7/31/2017073117325546928_550.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="2017中国资产管理年会召开"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0731/17/CQMKAFEK00763NKJ.html">2017中国资产管理年会召开</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      金融改革持续推进，资管行业首当其冲。在多年的货币宽松环境下，资金在金融系统积累循环，形成一定的资产泡沫，金融去杠杆、防止资金空转和机构套利，是目前金融改革工作中最重要的内容之一。资管行业的统一是大势所&hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:2017中国资产管理年会召开;summary:金融改革持续推进，资管行业首当其冲。在多年的货币宽松环境下，资金在金融系统积累循环，形成一定的资产泡沫，金融去杠杆、防止资金空转和机构套利，是目前金融改革工作中最重要的内容之一。资管行业的统一是大势所"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CQMKAFEK00763NKJ.html" class="count_logo">13</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                            </div>
                        <div class="one">
                                                                                                                                                                                                                                                                                      
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0731/17/CQMK3P8000763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img4.cache.netease.com/media/2017/7/31/20170731172646ed1b6.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="梨视频为好故事重金买单  有故事的桌子受热捧"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0731/17/CQMK3P8000763NKJ.html">梨视频为好故事重金买单  有故事的桌子受热捧</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      近日，不少麦当劳餐桌突然被一波二维码主题桌贴占领，吸引了众多消费者扫码关注。据了解，这些桌贴为梨视频联合麦当劳开启的线上短视频征集活动——“我和麦当劳的故事”。活动自7月26日开始，覆盖全国范围内近3000 &hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:梨视频为好故事重金买单  有故事的桌子受热捧;summary:近日，不少麦当劳餐桌突然被一波二维码主题桌贴占领，吸引了众多消费者扫码关注。据了解，这些桌贴为梨视频联合麦当劳开启的线上短视频征集活动——“我和麦当劳的故事”。活动自7月26日开始，覆盖全国范围内近3000 "></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CQMK3P8000763NKJ.html" class="count_logo">16</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0725/17/CQ770C9V00763NKJ.html"><img src="http://cms-bucket.nosdn.127.net/catchpic/8/8A/8AC5E32A0FDE96D21AE40971B86E1E72.jpg?imageView&thumbnail=190y120" alt="《百名摄影师聚焦香港》画册首发式在京举行"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0725/17/CQ770C9V00763NKJ.html">《百名摄影师聚焦香港》画册首发式在京举行</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      中国日报社总编辑周树春（前左）在中国新闻摄影学会会长徐祖根（前右）、中国摄影家协会副主席王文澜（中）陪同下参观展览。（中国日报 王敬 摄）中国日报7月24日电 7月24日，由中国日报社、中国文联出版社主办，北 &hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:《百名摄影师聚焦香港》画册首发式在京举行;summary:中国日报社总编辑周树春（前左）在中国新闻摄影学会会长徐祖根（前右）、中国摄影家协会副主席王文澜（中）陪同下参观展览。（中国日报 王敬 摄）中国日报7月24日电 7月24日，由中国日报社、中国文联出版社主办，北 "></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CQ770C9V00763NKJ.html" class="count_logo">12</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0718/11/CPKHLSQJ00763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img1.cache.netease.com/media/2017/7/18/20170718115211bd62b_550.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="第二届“中关村人才创客大赛”全国总决赛收官"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0718/11/CPKHLSQJ00763NKJ.html">第二届“中关村人才创客大赛”全国总决赛收官</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      7月15日，由中关村人才市场主办的“第二届中关村人才创客大赛”全国总决赛正式开赛。最终凡米科技有限公司的凡米智能芯片项目、普诺思博团队的服务机器人通用智能平台项目赢得了评委和现场观众的青睐，分别赢得了实 &hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:第二届“中关村人才创客大赛”全国总决赛收官;summary:7月15日，由中关村人才市场主办的“第二届中关村人才创客大赛”全国总决赛正式开赛。最终凡米科技有限公司的凡米智能芯片项目、普诺思博团队的服务机器人通用智能平台项目赢得了评委和现场观众的青睐，分别赢得了实 "></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CPKHLSQJ00763NKJ.html" class="count_logo">10</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0714/17/CPASCFTE00763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img4.cache.netease.com/media/2017/7/14/20170714174712e4d0d_550.png&thumbnail=190x2147483647&quality=75&type=jpg" alt="第二届中关村人才创客总决赛开赛在即"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0714/17/CPASCFTE00763NKJ.html">第二届中关村人才创客总决赛开赛在即</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      中关村人才创客大赛依托“中关村百校联盟”的平台优势，通过政府引导、市场运作的模式，提升创业水平、营造创业氛围，促进科技和资本相结合，从而实现规模化，未来三年将把“中关村人才创客大赛”打造成“中关村百校&hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:第二届中关村人才创客总决赛开赛在即;summary:中关村人才创客大赛依托“中关村百校联盟”的平台优势，通过政府引导、市场运作的模式，提升创业水平、营造创业氛围，促进科技和资本相结合，从而实现规模化，未来三年将把“中关村人才创客大赛”打造成“中关村百校"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CPASCFTE00763NKJ.html" class="count_logo">6</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0706/11/COLK8OVM00763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img1.cache.netease.com/media/2017/7/6/201707061132102b59f_550.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="北京时间携手中央民族大学 开启实践教育新篇章"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0706/11/COLK8OVM00763NKJ.html">北京时间携手中央民族大学 开启实践教育新篇章</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      2017年7月4日，为加深媒体与高校之间的合作，也为让学生走出校园迈入社会，北京时间与中央民族大学文学与新闻传播学院进行了深入的战略合作，并于当天进行中央民族大学北京时间校园新闻站实践基地的授牌仪式。本次新&hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:北京时间携手中央民族大学 开启实践教育新篇章;summary:2017年7月4日，为加深媒体与高校之间的合作，也为让学生走出校园迈入社会，北京时间与中央民族大学文学与新闻传播学院进行了深入的战略合作，并于当天进行中央民族大学北京时间校园新闻站实践基地的授牌仪式。本次新"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/COLK8OVM00763NKJ.html" class="count_logo">4</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0706/10/COLG86RR00763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img5.cache.netease.com/media/2017/7/6/20170706103152eb141_550.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="王铮亮郁可唯深情告白 《星月》守护爱的信仰"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0706/10/COLG86RR00763NKJ.html">王铮亮郁可唯深情告白 《星月》守护爱的信仰</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      由赵丽颖、林更新、窦骁、李沁等主演的传奇大剧《楚乔传》正于近日热播中，随着剧情的推进，人物感情线渐渐浮上水面，不少观众已经开始急于替星玥夫妇互相告白。 6月13日上午十点，由国内金牌配乐大师谭旋作曲，刘?&hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:王铮亮郁可唯深情告白 《星月》守护爱的信仰;summary:由赵丽颖、林更新、窦骁、李沁等主演的传奇大剧《楚乔传》正于近日热播中，随着剧情的推进，人物感情线渐渐浮上水面，不少观众已经开始急于替星玥夫妇互相告白。 6月13日上午十点，由国内金牌配乐大师谭旋作曲，刘?"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/COLG86RR00763NKJ.html" class="count_logo">4</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0703/14/COE60LFG00763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img2.cache.netease.com/media/2017/7/3/20170703141743e6d4d_550.png&thumbnail=190x2147483647&quality=75&type=jpg" alt="网易新闻“声浪计划”:用跟贴在城市中心“盖楼”"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0703/14/COE60LFG00763NKJ.html">网易新闻“声浪计划”:用跟贴在城市中心“盖楼”</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            目前，网易新闻平台平均每天产生300万条跟贴，约3000万字，其中有30%是盖楼，最高楼可达70层，广泛流传的“网民智商有多高，得看网易盖楼团”便由此而来。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:网易新闻“声浪计划”:用跟贴在城市中心“盖楼”;summary:目前，网易新闻平台平均每天产生300万条跟贴，约3000万字，其中有30%是盖楼，最高楼可达70层，广泛流传的“网民智商有多高，得看网易盖楼团”便由此而来。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/COE60LFG00763NKJ.html" class="count_logo">69</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0703/11/CODQPQ4D00763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img2.cache.netease.com/media/2017/7/3/20170703110017c41ef_550.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="倪妮：美好身体合伙人"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0703/11/CODQPQ4D00763NKJ.html">倪妮：美好身体合伙人</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      作为灵魂的居所， 形体的改变影响着我们对待世界和人的态度。聪明如倪妮，当然能清醒地知道， 当身体的关节打开， 肌体缓缓修塑成型，每一寸线条的收紧和筋结拉开， 都意味着一个女人的自律与强大。丢开手中的剧本，&hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:倪妮：美好身体合伙人;summary:作为灵魂的居所， 形体的改变影响着我们对待世界和人的态度。聪明如倪妮，当然能清醒地知道， 当身体的关节打开， 肌体缓缓修塑成型，每一寸线条的收紧和筋结拉开， 都意味着一个女人的自律与强大。丢开手中的剧本，"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CODQPQ4D00763NKJ.html" class="count_logo">5</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0630/15/CO6JFAR700763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img6.cache.netease.com/media/2017/6/30/20170630153846cdfc0_550.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="影视工业网举办“一录同行”影视行业顶级盛会"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0630/15/CO6JFAR700763NKJ.html">影视工业网举办“一录同行”影视行业顶级盛会</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      6月24日，由中国影视专业领域最大的门户网站和影视制作垂直社群——影视工业网（www.107cine.com）主办的《一“录同行”》北京站活动，在北京皇冠假日酒店隆重举行。影视工业网每年一度举办的《一“录”同行》活动遍&hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:影视工业网举办“一录同行”影视行业顶级盛会;summary:6月24日，由中国影视专业领域最大的门户网站和影视制作垂直社群——影视工业网（www.107cine.com）主办的《一“录同行”》北京站活动，在北京皇冠假日酒店隆重举行。影视工业网每年一度举办的《一“录”同行》活动遍"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CO6JFAR700763NKJ.html" class="count_logo">2</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0629/16/CO4310QF00763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img1.cache.netease.com/media/2017/6/29/2017062916134059c45_550.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="纪念建军90周年“老兵来信”征稿启事"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0629/16/CO4310QF00763NKJ.html">纪念建军90周年“老兵来信”征稿启事</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      “老兵”，一个光荣的群体！&hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:纪念建军90周年“老兵来信”征稿启事;summary:“老兵”，一个光荣的群体！你们或曾在战场为国流血，或曾远离故土戍守边疆，或曾在危急时刻救灾助难，或曾为国防军工倾注智慧才华，或曾在转业退伍后的“第二战场”大显身手……每位“老兵”，都怀揣一颗拳拳赤子爱"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CO4310QF00763NKJ.html" class="count_logo">1</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                <div class="news_one nobr ">
                                <div class="news_main_info">
                                                                        <div class="describe">
                                        <h2><a href="http://media.163.com/17/0629/12/CO3M2LB200763NKJ.html">iWeekly v4.0来了！更新赢豪礼！</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      作为中国第一支媒体类APP，iWeekly中国原创世界公民行动读本自2010年一经推出，就一直都是新闻、风尚及生活类APP的典范，在这个全民APP的时代，iWeekly v4.0到底好不好用？看看领先一步的使用们怎么说：视觉控说：改版后的iWeekly，摒弃了大色块，原先的红白黑搭配升级成了黑白色基调，特别潮！&hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:iWeekly v4.0来了！更新赢豪礼！;summary:作为中国第一支媒体类APP，iWeekly中国原创世界公民行动读本自2010年一经推出，就一直都是新闻、风尚及生活类APP的典范，在这个全民APP的时代，iWeekly v4.0到底好不好用？看看领先一步的使用们怎么说：视觉控说：改版后的iWeekly，摒弃了大色块，原先的红白黑搭配升级成了黑白色基调，特别潮！内容控说：原先16+"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CO3M2LB200763NKJ.html" class="count_logo">0</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0629/10/CO3ER7GH00763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img4.cache.netease.com/media/2017/6/29/201706291020021490a_550.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="一下科技西安移动视频创作基地落成 激活西部内容 "></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0629/10/CO3ER7GH00763NKJ.html">一下科技西安移动视频创作基地落成 激活西部内容 </a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                          未来，一下科技还将会在青岛、武汉、长春、广州等地陆续成立移动视频基地，从流量倾斜、平台支持、规则制定及方向指引、商业化支持、创业孵化及直接投资等方面全链条扶持移动视频内容创业，充分发挥出大平台的责任与&hellip;
                                                                                                                                                                                            </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:一下科技西安移动视频创作基地落成 激活西部内容 ;summary:未来，一下科技还将会在青岛、武汉、长春、广州等地陆续成立移动视频基地，从流量倾斜、平台支持、规则制定及方向指引、商业化支持、创业孵化及直接投资等方面全链条扶持移动视频内容创业，充分发挥出大平台的责任与"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CO3ER7GH00763NKJ.html" class="count_logo">1</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0626/17/CNSGCTVF00763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img6.cache.netease.com/media/2017/6/26/20170626173317fe0d8_550.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="新运营、新生产、新零售如何驱动实体产业转型"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0626/17/CNSGCTVF00763NKJ.html">新运营、新生产、新零售如何驱动实体产业转型</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            对于实体经济，这是机遇。但不可否认的是，无论新兴行业还是传统产业，蕴藏着巨大商业机会的同时，也面临诸多挑战。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:新运营、新生产、新零售如何驱动实体产业转型;summary:对于实体经济，这是机遇。但不可否认的是，无论新兴行业还是传统产业，蕴藏着巨大商业机会的同时，也面临诸多挑战。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CNSGCTVF00763NKJ.html" class="count_logo">0</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0616/16/CN2KO38900763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img1.cache.netease.com/media/2017/6/16/20170616162754ef62d_550.png&thumbnail=190x2147483647&quality=75&type=jpg" alt="网易传媒举办“闻学社沙龙” 探讨新闻专业主义"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0616/16/CN2KO38900763NKJ.html">网易传媒举办“闻学社沙龙” 探讨新闻专业主义</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                            网易传媒新闻学院和清华大学新闻与传播学院联合主办的第1期“闻学社沙龙”在北京有闻记者之家成功举办，刘晶、秦朔、朱学东、崔保国、李良荣等人出席，并针对“新媒体环境下，新闻专业主义的生存空间”进行了讨论。
                                                                                                                                </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:网易传媒举办“闻学社沙龙” 探讨新闻专业主义;summary:网易传媒新闻学院和清华大学新闻与传播学院联合主办的第1期“闻学社沙龙”在北京有闻记者之家成功举办，刘晶、秦朔、朱学东、崔保国、李良荣等人出席，并针对“新媒体环境下，新闻专业主义的生存空间”进行了讨论。"></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CN2KO38900763NKJ.html" class="count_logo">22</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                            <div class="news_one nobr havepic">
                                <div class="news_main_info">
                                    <a href="http://media.163.com/17/0526/12/CLC4F6DQ00763NKJ.html"><img src="http://nimg.ws.126.net/?url=http://img5.cache.netease.com/media/2017/5/26/2017052612232453f05_550.jpg&thumbnail=190x2147483647&quality=75&type=jpg" alt="时尚集团进军二次元手游市场"></a>                                    <div class="describe">
                                        <h2><a href="http://media.163.com/17/0526/12/CLC4F6DQ00763NKJ.html">时尚集团进军二次元手游市场</a></h2>
                                        <p>
                                                                                                                                                                                                                                                                                                                                                                                                      鉴于二次元热潮在时尚产业中的巨大潜在商业价值，以及孵化新型媒介传播的需要，本土时尚及生活方式传媒公司时尚集团（TrendsGroup）又有新的大动作——将联合“中影游”共同研发一款针对时尚女性群体的时尚游戏。中 &hellip;
                                                                                                                                                                                                                                        </p>
                                        <div class="link_list">
                                            <span class="fromWhere">来源：网易传媒</span>
                                            <div class="ne-shares-parent myShare">
                                                <i class="ne-shares-arr"></i>
                                                                                                <div ne-shareit-hover="ne-shares-open" ne-props="skin:pop6x1" ne-state="title:时尚集团进军二次元手游市场;summary:鉴于二次元热潮在时尚产业中的巨大潜在商业价值，以及孵化新型媒介传播的需要，本土时尚及生活方式传媒公司时尚集团（TrendsGroup）又有新的大动作——将联合“中影游”共同研发一款针对时尚女性群体的时尚游戏。中 "></div>
                                            </div>
                                            <div class="count">
                                                                                                <a href="http://comment.media.163.com/media_bbs/CLC4F6DQ00763NKJ.html" class="count_logo">15</a>
                                                                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                                                                                                                        </div>
                    <!--信息流结束-->
                    </div>
                </div>
                <!--信息流所在部分结束-->
                <div class="getMoreBox">
                    <div class="getMore" id="getMore"><span>+</span>&nbsp;加载更多</div>
                </div>
            </div>
            <!--左边大块部分结束-->
            <!--右边小块部分开始-->
            <div class="content-right">
                <!--右边顶部的两张图部分开始-->
                <div class="right-top">
                                                            <div class="picT">
                        <a href="http://media.163.com/19/0812/12/EMCK3P5V007663HH.html">
                            <div>
                                <img src="http://cms-bucket.ws.126.net/2019/08/12/1c3149335a48448c8985cc6bdb65c10b.jpeg" alt="网易传媒打造国内第一虚拟偶像曲师师"/>
                            </div>
                            <p class="pos-abs">网易传媒打造国内第一虚拟偶像曲师师</p>
                        </a>
                    </div>
                                        <div class="picT">
                        <a href="http://media.163.com/19/0812/12/EMCKNLT4007663HH.html">
                            <div>
                                <img src="http://cms-bucket.ws.126.net/2019/08/12/ffbb210bff6c4f6caf0edade99a09537.png" alt="2年做到新榜100强 ＂槽值＂不曾怯场"/>
                            </div>
                            <p class="pos-abs">2年做到新榜100强 "槽值"不曾怯场</p>
                        </a>
                    </div>
                                    </div>
                <!--右边顶部的两张图部分结束-->
                <!--右边信息流开始-->
                <div class="right-middle">
                    <!--传媒研究部分开始-->
                    <div class="model">
                        <div class="mediaStudy">
                            <h3><span></span>传媒研究</h3>
                        </div>
                        <div class="show">
                                                                                                                                            <!-- <a href="${one.get("url")}">
                                <div class="show-pic">
                                    <img src="${one.get("imgsrc")}" alt="2年做到新榜100强 ＂槽值＂不曾怯场"/>
                                    <h4>${one.get("title")}</h4>
                                    <div class="show_bg"></div>
                                </div>
                            </a> -->
                                                        <ul>
                                                                                                <li><a href="http://media.163.com/18/0123/12/D8R8720U00762H8M.html">中国日报“新时代大讲堂”正式开讲</a></li>
                                                                <li><a href="http://media.163.com/18/0104/17/D7ATKC5N00762H8M.html">第一财经：预言2018</a></li>
                                                                <li><a href="http://media.163.com/15/1119/11/B8PI8O5H00762H8M.html">为什么我们还要做解释性报道？</a></li>
                                                            </ul>
                        </div>
                        <!--右边广告1 开始-->
                        <div class="channel_relative_2016">
                        <div class="advert">
                            <a href="">
                                <div class="advert-pic">
                                    <img src="http://img2.cache.netease.com/f2e/media/media2016/images/right_pic2.jpg" alt=""/>
                                </div>
                            </a>
                            <ul>
                                <li class="leftP"><a href="">10元话费免费领</a></li>
                                <li class="leftP Rig"><a href="">10元话费免费领</a></li>
                                <li class="leftP"><a href="">10元话费免费领</a></li>
                                <li class="leftP Rig"><a href="">10元话费免费领</a></li>
                            </ul>
                        </div>
                        <span class="channel_ad_text_2016">广告</span>
                        </div>
                        <!--右边广告1 结束-->
                    </div>
                    <!--传媒研究部分结束-->
                    <div class="model">
                        <div class="mediaStudy">
                            <h3><span></span>传媒人物</h3>
                        </div>
                        <div class="show">
                                                                                                                                            <!-- <a href="${one.get("url")}">
                                <div class="show-pic">
                                    <img src="${one.get("imgsrc")}" alt="为什么我们还要做解释性报道？"/>
                                    <h4>${one.get("title")}</h4>
                                    <div class="show_bg"></div>
                                </div>
                            </a> -->
                                                        <ul>
                                                                                                <li><a href="http://media.163.com/18/0528/17/DITMUV1C00762B72.html">曲飞宇:解读2018中国新零售投资创新洞察</a></li>
                                                                <li><a href="http://media.163.com/18/0427/10/DGD50I5I00762B72.html">方文山：互联网时代，该如何推广传统文化</a></li>
                                                                <li><a href="http://media.163.com/17/1109/17/D2QM6DDK00762B72.html">陈谊:从杂志发行到时尚电商,时尚集团整合联动</a></li>
                                                            </ul>
                        </div>
                        <!--右边广告2 开始-->
                         <div class="channel_relative_2016">
                        <div class="advert">
                            <a href="">
                                <div class="advert-pic">
                                    <img src="http://img2.cache.netease.com/f2e/media/media2016/images/right_pic2.jpg" alt=""/>
                                </div>
                            </a>
                            <ul>
                                <li class="leftP"><a href="">10元话费免费领</a></li>
                                <li class="leftP"><a href="">10元话费免费领</a></li>
                                <li class="leftP"><a href="">10元话费免费领</a></li>
                                <li class="leftP"><a href="">10元话费免费领</a></li>
                            </ul>
                        </div>
                        <span class="channel_ad_text_2016">广告</span>
                        </div>
                        <!--右边广告2 结束-->
                    </div>
                    <div class="model">
                        <div class="mediaStudy">
                            <h3><span></span>业界焦点</h3>
                        </div>
                        <div class="show">
                                                                                    <a href="http://www.huodongxing.com/event/1357320266100?qd=wyy">
                                <div class="show-pic">
                                    <img src="http://img2.cache.netease.com/news/2016/12/2/2016120211413522a26.jpg" alt="WISE2016独角兽大会等你来"/>
                                    <h4>WISE2016独角兽大会等你来</h4>
                                    <div class="show_bg"></div>
                                </div>
                            </a>
                                                        <ul>
                                                                                                <li><a href="http://media.163.com/19/0924/11/EPR8J9HO007663HH.html">“一带一路·爱上北京”系列电视片《魅力北京》</a></li>
                                                                <li><a href="http://media.163.com/19/0916/10/EP6KE5GE007663HH.html">全球华人生活短视频大赛，火了！</a></li>
                                                                <li><a href="http://media.163.com/19/0905/17/EOB0AE90007663HH.html">2019年当我们聊品牌增长时，我们在聊什么？</a></li>
                                                            </ul>
                        </div>
                    </div>
                    <div class="model">
                        <div class="mediaStudy">
                            <h3><span></span>招贤纳士</h3>
                        </div>
                        <div class="show">
                                                                                    <a href="http://media.163.com/16/0429/17/BLR8U58I00762H8N.html">
                                <div class="show-pic">
                                    <img src="http://img6.cache.netease.com/news/2016/5/17/2016051715105364ce2.png" alt="主持竞技真人秀《主播进化论》报名开始啦~"/>
                                    <h4>主持竞技真人秀《主播进化论》报名开始啦~</h4>
                                    <div class="show_bg"></div>
                                </div>
                            </a>
                                                        <ul>
                                                                                                <li><a href="http://media.163.com/18/0416/10/DFGPT0ID00762H8N.html">陈小兵出任北京晨报社汽车新闻部主任</a></li>
                                                                <li><a href="http://media.163.com/17/0413/16/CHTS28JE00762H8N.html">招聘阶段成职场失信重灾区 互联网背调愈加成熟</a></li>
                                                                <li><a href="http://media.163.com/16/0520/16/BNH7BTF600762H8N.html">95后小鲜肉秒变搞怪主持！年薪30万等你来挑战！</a></li>
                                                            </ul>
                        </div>
                    </div>
                </div>
                <!--右边信息流结束-->
            </div>
            <!--右边小块部分结束-->
        </div>
        <!--[if (gte IE 7)|!(IE)]><!--><div class="backTop" id="backTop"></div> <!--<![endif]-->
        <!--[if IE 6 ]><div class="backTop6" id="backTop"></div><![endif]-->
    </div>
    <!--首页底部开始-->
    <div class="ns-pot bg22">
        <div class="ns-area cf">
            <div class="ns-area-logo">
                <a href="#"><i class="media-logo"></i></a>
            </div>
            <div class="ns-area-media">
                <h4>传媒</h4>
                <ul>
                    <li><a href="">传媒聚焦</a></li>
                    <li><a href="">传媒研究</a></li>
                    <li><a href="">传媒人物</a></li>
                    <li><a href="">业界焦点</a></li>
                    <li><a href="">招贤纳士</a></li>
                </ul>
                <span><a href="#"></a></span>
            </div>
            <div class="ns-area-conect">
                <div class="corWeb">
                    <h4>合作网站</h4>
                    <ul>
                        <li><a href="">中国联通</a>&nbsp;&nbsp;&nbsp;&nbsp;|</li>
                        <li><a href="">站长之家</a>&nbsp;&nbsp;&nbsp;&nbsp;|</li>
                        <li><a href="">投资界</a>&nbsp;&nbsp;&nbsp;&nbsp;|</li>
                        <li><a href="">投资界</a>&nbsp;&nbsp;&nbsp;&nbsp;|</li>
                        <li><a href="">投资界</a>&nbsp;&nbsp;&nbsp;&nbsp;|</li>
                        <li><a href="">投资界</a>&nbsp;&nbsp;&nbsp;&nbsp;|</li>
                        <li><a href="">动点科技</a>&nbsp;&nbsp;&nbsp;&nbsp;|</li>
                        <li><a href="">i美股</a>&nbsp;&nbsp;&nbsp;&nbsp;|</li>
                        <li><a href="">更多>></a></li>
                    </ul>
                </div>
                <div class="us">
                    <h4>联系我们</h4>
                    <ul>
                        <li><a href="">主编信箱</a></li>
                        <li><a href="">频道热线电话</a></li>
                        <li><a href="">意见反馈</a></li>
                    </ul>
                </div>
            </div>
            <div class="ns-area-search">
                <div class="lit-logos">
                    <a href="#" class="ic-lofter"></a>
                    <a href="#" class="ic-mail"></a>
                    <a href="#" class="ic-rss"></a>
                    <a href="#" class="ic-cloud"></a>
                    <div class="net-phone">
                        <a href="" class="netease-phone"></a>
                    </div>
                </div>
                <div class="searchBox">
                    <form action="http://news.yodao.com/search" method="get">
                        <input class="searchBox-input" type="text" name="q" autocomplete="off" onfocus="this.value=''" onblur="this.value='热门新闻搜索'" value="热门新闻搜索">
                        <input class="searchBox-submit ic_qbtn" type="submit" value="搜索">
                        <input type="hidden" name="keyfrom" value="news.163">
                        <input type="hidden" name="suser" value="user163">
                        <input type="hidden" name="ue" value="gbk">
                        <input type="hidden" name="site" value="网易">
                        <input type="hidden" name="in" value="page">
                    </form>
                </div>
                <div class="hotSearch">
                    <span>热门搜索：</span><a href="#">华为涨薪</a><a href="#">三星赶超苹果</a>
                </div>
            </div>
        </div>
    </div>
    <!--首页底部结束-->
    <!-- 底部导航条 -->
    <div class="N-nav-bottom">
    <div class="N-nav-bottom-main">
        <div class="ntes_foot_link">
            <span class="N-nav-bottom-copyright"><span class="N-nav-bottom-copyright-icon">&copy;</span> 1997-2019 网易公司版权所有</span>
            <a href="http://corp.163.com/">About NetEase</a> |
            <a href="http://gb.corp.163.com/gb/about/overview.html">公司简介</a> |
            <a href="http://gb.corp.163.com/gb/contactus.html">联系方法</a> |
            <a href="http://corp.163.com/gb/job/job.html">招聘信息</a> |
            <a href="http://help.163.com/ ">客户服务</a> |
            <a href="http://gb.corp.163.com/gb/legal.html">隐私政策</a> |
            <a href="http://emarketing.163.com/">广告服务</a> |
            <a href="http://sitemap.163.com/">网站地图</a> |
           <!--  <a ne-role="feedBackLink" ne-click="handleFeedBackLinkClick()" href="http://www.163.com/special/0077450P/feedback_window.html" class="ne_foot_feedback_link">意见反馈</a> | -->
            <a href="http://jubao.aq.163.com/">不良信息举报</a> |
            <a href="https://jubao.163.com/">廉正举报</a>
        </div>
    </div>
</div>
</div>
<script src="http://img2.cache.netease.com/f2e/media/media2016/collect/foot~CqU1ICLSYXo6.js" charset="utf-8"></script>

<!--  -->

<!-- STAT WRating v1.0 -->

<!-- STAT NetEase Devilfish 2006 -->
<!-- 频道特有 -->
<script type="text/javascript" src="//analytics.163.com/ntes.js"></script>
<script type="text/javascript">
    _ntes_nacc = "media"; //站点ID。
    neteaseTracker();
</script>
</body>
</html>