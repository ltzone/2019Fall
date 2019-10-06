<!DOCTYPE html>
<!--STATUS OK-->
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="content-type" content="text/html;charset=gbk" />
<meta property="wb:webmaster" content="3aababe5ed22e23c" />
<meta name="referrer" content="always" />
<title>百度知道 - 全球最大中文互动问答平台</title>
<link rel="shortcut icon" href="//www.baidu.com/favicon.ico?t=20171027" type="image/x-icon" />
<link rel="icon" sizes="any" mask href="//www.baidu.com/img/baidu.svg" />

<script>
    window.alogObjectConfig = {
        product: '102',
        page: '102_4', 
        monkey_page: 'zhidao-home',
        speed_page: '4',
        speed: {
            sample: '1'
        },
        monkey: {
            sample: '0.5'
        },
        exception: { 
            sample: '0.5'
        },
        feature: {
            sample: '0.5'
        },
        cus: {
            sample: '0.5',
            custom_metrics: ['c_sbox', 'c_menu', 'c_top']
        },
        csp: {
            sample: '1',
            'default-src': [
                {match: '*bae.baidu.com', target: 'Accept,Warn'},
                {match: '*.baidu.com,*.bdstatic.com,*.bdimg.com,localhost,*.hao123.com,*.hao123img.com', target: 'Accept'},
                {match: /^(127|172|192|10)(\.\d+){3}$/, target: 'Accept'},
                {match: '*', target: 'Accept,Warn'}
            ]
        }
    };
 
    void function(a,b,c,d,e,f,g){a.alogObjectName=e,a[e]=a[e]||function(){(a[e].q=a[e].q||[]).push(arguments)},a[e].l=a[e].l||+new Date,d="https:"===a.location.protocol?"https://fex.bdstatic.com"+d:"http://fex.bdstatic.com"+d;var h=!0;if(a.alogObjectConfig&&a.alogObjectConfig.sample){var i=Math.random();a.alogObjectConfig.rand=i,i>a.alogObjectConfig.sample&&(h=!1)}h&&(f=b.createElement(c),f.async=!0,f.src=d+"?v="+~(new Date/864e5)+~(new Date/864e5),g=b.getElementsByTagName(c)[0],g.parentNode.insertBefore(f,g))}(window,document,"script","/hunter/alog/alog.min.js","alog"),void function(){function a(){}window.PDC={mark:function(a,b){alog("speed.set",a,b||+new Date),alog.fire&&alog.fire("mark")},init:function(a){alog("speed.set","options",a)},view_start:a,tti:a,page_ready:a}}();
    void function(n){var o=!1;n.onerror=function(n,e,t,c){var i=!0;return!e&&/^script error/i.test(n)&&(o?i=!1:o=!0),i&&alog("exception.send","exception",{msg:n,js:e,ln:t,col:c}),!1},alog("exception.on","catch",function(n){alog("exception.send","exception",{msg:n.msg,js:n.path,ln:n.ln,method:n.method,flag:"catch"})})}(window);
</script>

<script>
	!function(document, window){
		var log = {
			list: [],
			host: 'https://' + location.host + '/api/httpscheck',
			log: function(param) {
				var a = [];
		    	for(var k in param) {
		    		a.push(k + '=' + param[k]);
		    	}
		    	var msg = a.join('&');
		    	if(~this.list.indexOf(msg)){
		    		return;
		    	}
		    	this.list.push(msg);
		  		var img = new Image();
		    	var key = '_ik_log_' + (Math.random()*2147483648 ^ 0).toString(36);
		    	window[key] = img;
		    		img.onload = img.onerror = img.onabort = function() {
		        		img.onload = img.onerror = img.onabort = null;
		        		window[key] = null;
			    		img = null;
		    	};
		  		img.src = this.host + '?' + msg;
			}
		};

		function HTTPSWarningLog(){
			this.selector = [
				'link',
				'script',
				'img',
				'embed',
				'iframe'
			];
			this.warningCounter = 0;
			this.init();
		};

		HTTPSWarningLog.prototype = {
			init: function(){
				this.fetch();
			},

			fetch: function(){
				for(var tags = this.selector, i =0, len = tags.length; i < len;i++) {
					this.getTag(tags[i]);
				}
			},

			getTag: function(tag) {
				var domList = document.getElementsByTagName(tag);
				if(!domList.length) {
					return;
				}
				for(var i = 0,len = domList.length;i<len;i++) {
					var el = domList[i];
					var url = el.getAttribute(el.tagName==='LINK' ? 'href' : 'src');
                    if(el.getAttribute('rel') === 'canonical') {
                        continue;
                    }
					if(url && 'https:' === location.protocol && !url.indexOf('http:')){
						this.sendLog(el, el.tagName.toLowerCase(),url);
						this.warningCounter++;
					}
				}
			},
			
			sendLog: function(el, type, url){
				log.log({
					url: location.href,
					wtype: type,
					wurl: url
				});
			}
		};

		function domReady(fn){
		    if(document.addEventListener) {
		        document.addEventListener('DOMContentLoaded', function() {
		            document.removeEventListener('DOMContentLoaded',arguments.callee, false);
		            fn();
		        }, false);
		    }else if(document.attachEvent) {
		        document.attachEvent('onreadystatechange', function() {
		            if(document.readyState == 'complete') {
		                document.detachEvent('onreadystatechange', arguments.callee);
		                fn();
		            }
		        });
		    }
		};

		domReady(function(){
			new HTTPSWarningLog();
			for(var i=1; i<6; i++) {
				!function(i){
					setTimeout(function(){
						new HTTPSWarningLog();
					}, i*i*i*1000);
				}(i);
			}
		});
	}(document, window);
</script>

<meta name="baidu-site-verification" content="tfD6Ctznzp" />
<meta name="description" content="百度知道是全球最大的中文问答互动平台，每天为数亿网民答疑解惑。百度知道通过AI技术实现智能检索和智能推荐，让您的每个疑问都能够快速获得有效解答。" />

<script type="text/javascript">
			!function(){var n={},t={};n.context=function(n,e){var i=arguments.length;if(i>1)t[n]=e;else if(1==i){if("object"!=typeof n)return t[n];for(var o in n)n.hasOwnProperty(o)&&(t[o]=n[o])}},"F"in window||(window.F=n)}();;
			
            
																																							
			F.context('user', {"isLogin":"","isRealName":"","stoken":"","name":"","imId":"","id":"","euid":"","wealth":"","gradeIndex":"1","isMavin":""});
			F.context('user')['internalAdmin'] = null;

									
			            F.context('isQuality', false);
            F.context('now', 1570369894);
		</script>
<script>F.context('sysTaskAutoInit', 1);</script>


<!--[if lte IE 8]>
<script>
                (function(){
                    var e="abbr,article,aside,audio,canvas,datalist,details,dialog,eventsource,figure,footer,header,hgroup,mark,menu,meter,nav,output,progress,section,time,video".split(","),
                    i=e.length;
                    while(i--){document.createElement(e[i])}
                 })();
            </script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="https://iknowpc.bdimg.com/static/common/pkg/common.2e57416.css" /><link rel="stylesheet" type="text/css" href="https://iknowpc.bdimg.com/static/home/pkg/module.8200f4f.css" /><link rel="stylesheet" type="text/css" href="https://iknowpc.bdimg.com/static/common/widget/header-metis/header.39c9ddf.css" /></head>

<script> alog('speed.set', 'ht', +new Date()); </script>

<body class="layout-center home-search zhidao-index">

<div id="userbar" class="userbar userbar-renew" data="">
<ul class="aside-list">
<li>
<a href="http://www.baidu.com/" class="toindex">百度首页</a>
</li>
<li><a rel="nofollow" alog-alias="usrbar-login" href="javascript:;" id="userbar-login" log="type:2026,pname:account,mod:login,action:show,pos:pop">登录</a></li>
<li><a rel="nofollow" alog-alias="usrbar-reg" id="userbar-reg" href="https://passport.baidu.com/v2/?reg&tpl=ik&color=green&u=" target="_blank">注册</a></li>
<li class="shop-entrance">
<a href="/shop" title="知道商城" log="type:2026,pos:top-right,target:shop-entrance">商城<i class="i-house" style="display: none;"></i></a>
<span class="lucky-try"></span>
</li>
</ul>
</div>


<div class="head-wrap">
<hr class="divider">
<header id="header" class="container">

<div id="search-box" class="search-box-new line">
<ul class="channel grid">
<li><a log="sc_pos:c_baidu" data-type='baidu' rel="nofollow" href="http://www.baidu.com/">网页</a></li>
<li><a log="sc_pos:c_news" data-type='news' rel="nofollow" href="http://news.baidu.com/">资讯</a></li>
<li><a log="sc_pos:c_video" data-type='video' rel="nofollow" href="http://v.baidu.com/">视频</a></li>
<li><a log="sc_pos:c_pic" data-type='image' rel="nofollow" href="http://image.baidu.com/">图片</a></li>
<li><strong>知道</strong></li>
<li><a log="sc_pos:c_doc" data-type='wenku' rel="nofollow" href="http://wenku.baidu.com/">文库</a></li>
<li><a log="sc_pos:c_tieba" data-type='tieba' rel="nofollow" href="http://tieba.baidu.com/">贴吧</a></li><li><a log="sc_pos:c_b2b" data-type='b2b' rel="nofollow" href="https://b2b.baidu.com/">采购</a></li>
<li><a log="sc_pos:c_map" data-type='map' rel="nofollow" href="http://map.baidu.com/">地图</a></li></ul>
<div class="search-block clearfix">
<div class="search-cont clearfix">
<a class="logo" href="/" title="百度知道"></a>
<form action="/search" name="search-form" method="get" id="search-form-new" class="search-form">
<input class="hdi" id="kw" maxlength="256" tabindex="1" size="46" name="word" value="" autocomplete="off" placeholder="" />
<button alog-action="g-search-anwser" type="submit" id="search-btn" hidefocus="true"  tabindex="2" class="btn-global">搜索答案</button>
<a href="#" alog-action="g-i-ask" class="i-ask-link" id="ask-btn-new">我要提问</a>
</form>
</div>
</div>
</div>
<script>
                    // 搜索框可用时间打点
                    alog && alog('speed.set', 'c_sbox', +new Date); alog.fire && alog.fire("mark");
                </script>

</header>
</div>

<div class="nav-menu-container" id="j-nav-menu-container">
<div class="nav-show-control">
<div class="nav-menu-layout">
<div class="nav-menu line">
<div class="nav-menu-content container">
<div class="content-box">
<div class="menu-item menu-item-index">
<a class="menu-title current" href="/">
首页</a>
</div>
<div class="menu-item-box">
<div class="menu-item menu-item-cat">
<a class="menu-title " href="/list?fr=daohang" target="_blank">
<span>问题分类<img class="triangle_icon" src="https://iknowpc.bdimg.com/static/common/widget/menu/img/triangle.47e7008.svg" alt=""></span>
</a>
<div class="menu-content">
<ul class="menu-sub-list">
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?fr=daohang" target="_blank">
全部问题</a>
</li>
<li class="menu-sub-item-wp odd">
<a class="menu-sub-item" href="/list?cid=101&fr=daohang" target="_blank">
经济金融</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=102&fr=daohang" target="_blank">
企业管理</a>
</li>
<li class="menu-sub-item-wp odd">
<a class="menu-sub-item" href="/list?cid=103&fr=daohang" target="_blank">
法律法规</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=104&fr=daohang" target="_blank">
社会民生</a>
</li>
<li class="menu-sub-item-wp odd">
<a class="menu-sub-item" href="/list?cid=105&fr=daohang" target="_blank">
科学教育</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=106&fr=daohang" target="_blank">
健康生活</a>
</li>
<li class="menu-sub-item-wp odd">
<a class="menu-sub-item" href="/list?cid=107&fr=daohang" target="_blank">
体育运动</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=108&fr=daohang" target="_blank">
文化艺术</a>
</li>
<li class="menu-sub-item-wp odd">
<a class="menu-sub-item" href="/list?cid=109&fr=daohang" target="_blank">
电子数码</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=110&fr=daohang" target="_blank">
电脑网络</a>
</li>
<li class="menu-sub-item-wp odd">
<a class="menu-sub-item" href="/list?cid=111&fr=daohang" target="_blank">
娱乐休闲</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=113&fr=daohang" target="_blank">
行政地区</a>
</li>
<li class="menu-sub-item-wp odd">
<a class="menu-sub-item" href="/list?cid=114&fr=daohang" target="_blank">
心理分析</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=115&fr=daohang" target="_blank">
医疗卫生</a>
</li>
</ul>
</div>
</div>
<div class="menu-item menu-item-lanmu">
<a class="menu-title" href="/daily?fr=daohang" target="_blank">
<span>
知道日报<img class="triangle_icon" src="https://iknowpc.bdimg.com/static/common/widget/menu/img/triangle.47e7008.svg" alt="">
</span>
</a>
<div class="menu-content">
<ul class="menu-sub-list">
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/daily?fr=daohang" target="_blank">
日报精选</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/daily/square?fr=daohang " target="_blank">
日报广场</a>
</li>
</ul>
</div>
</div>
<div class="menu-item menu-item-user">
<a class="menu-title" href="javascript:;" style="cursor: default">
<span>
用户<img class="triangle_icon" src="https://iknowpc.bdimg.com/static/common/widget/menu/img/triangle.47e7008.svg" alt="">
</span>
</a>
<div class="menu-content">
<ul class="menu-sub-list">
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/daily/authorcenter?fr=daohang" target="_blank" data-type="daily-author">
日报作者</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/uteam?fr=daohang" target="_blank" data-type="uteam">
芝麻团</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/metis/team/decision?fr=daohang" target="_blank" data-type="cteam">
认证团队</a>
</li>
</ul>
</div>
</div>
<div class="menu-item menu-item-expert">
<a class="menu-title" href="/home/partnerhome?fr=daohang" target="_blank">
<span>
合伙人<img class="triangle_icon" src="https://iknowpc.bdimg.com/static/common/widget/menu/img/triangle.47e7008.svg" alt="">
</span>
</a>
<div class="menu-content">
<ul class="menu-sub-list">
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/business/info/apply?type=business " target="_blank" data-type="business">
企业</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/business/info/apply?type=goverment" target="_blank" data-type="government">
政府</a>
</li>
</ul>
</div>
</div>
</div>
<div class="menu-right-section">
<ul class="menu-right-list">
<li class="menu-right-list-item zhidao-app">
<a href="/activity/simpleindexact?tplName=nareplace&type=pc" class="menu-right-list-link" target="_blank">
<span class="item-name">
手机版</span>
</a>
</li>
<li class="menu-right-list-item user-center">
<a href="/ihome" class="menu-right-list-link" target="_blank">
<span class="item-icon">
</span>
<span class="item-name">
我的知道</span>
</a>
</li>
<li class="menu-right-list-item activity-entry">
<a href="https://zhidao.baidu.com/special/topic/view?name=zhishi" class="menu-right-list-link" target="_blank">
<img src="https://zhishituanyuanji.cdn.bcebos.com/%E5%9B%BD%E5%BA%86%E6%B4%BB%E5%8A%A8%2F%E5%BA%A6%E5%81%87%E4%B8%89%E5%8D%83%E9%97%AE-pc%E5%BC%82%E5%BD%A2.png" alt="">
</a>
</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<script>
        // 导航可用时间
        alog && alog('speed.set', 'c_menu', +new Date); alog.fire && alog.fire("mark");
    </script>

<div id="body" class="container">

<div class="banner-wp">
<div class="banner container">
<div class="banner-layout">
<div class="banner-card-list">
<a href="https://zhidao.baidu.com/question/34923744" target="_blank" class="banner-card-item" data-type="calendar">
<div class="item-mask"></div>
<img src="https://gss0.baidu.com/9vo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/267f9e2f070828381687e814b799a9014c08f123.jpg" alt="" class="bg-blur">
<div class="item-text-mask"></div>
<div class="pic" style="background-image: url(https://gss0.baidu.com/9vo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/267f9e2f070828381687e814b799a9014c08f123.jpg)"></div>
<div class="ie-blur"></div>
<div class="calendar-text-container">
<div class="calendar-title">什么是臭氧层空洞 ？</div>
<div class="calendar-con">
<div class="title">知道日历</div>
<div class="date-day">10/06</div>
<div class="date-year">星期日</div>
</div>
</div>
</a>
<a href="https://zhidao.baidu.com/daily/view?id=179059" target="_blank" class="banner-card-item" data-type="banner">
<div class="item-mask"></div>
<img src="https://gss0.bdstatic.com/7051cy89Q1gCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2019/1006/1.png" alt="" class="bg-blur">
<div class="item-text-mask"></div>
<div class="pic" style="background-image: url(https://gss0.bdstatic.com/7051cy89Q1gCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2019/1006/1.png)"></div>
<div class="ie-blur"></div>
<div class="text-container">
<div class="title">中国哪里的辣酱最好吃？</div>
<div class="intro">以酱作为载体，将辣味演绎得多元共生、出神入化</div>
</div>
</a>
<a href="https://zhidao.baidu.com/daily/view?id=178605" target="_blank" class="banner-card-item" data-type="banner">
<div class="item-mask"></div>
<img src="https://gss0.bdstatic.com/7051cy89Q1gCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2019/1006/2.png" alt="" class="bg-blur">
<div class="item-text-mask"></div>
<div class="pic" style="background-image: url(https://gss0.bdstatic.com/7051cy89Q1gCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2019/1006/2.png)"></div>
<div class="ie-blur"></div>
<div class="text-container">
<div class="title">谁是世界第二长城？</div>
<div class="intro">在世界其他地方也有因同样需求而建立起的防御性建筑</div>
</div>
</a>
<a href="https://zhidao.baidu.com/daily/view?id=175718" target="_blank" class="banner-card-item" data-type="banner">
<div class="item-mask"></div>
<img src="https://gss0.bdstatic.com/7051cy89Q1gCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2019/1006/3.png" alt="" class="bg-blur">
<div class="item-text-mask"></div>
<div class="pic" style="background-image: url(https://gss0.bdstatic.com/7051cy89Q1gCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2019/1006/3.png)"></div>
<div class="ie-blur"></div>
<div class="text-container">
<div class="title">为啥北美家庭喜欢生很多孩子？</div>
<div class="intro">国内“单独二胎”政策再度引发对多子女家庭的讨论</div>
</div>
</a>
<a href="https://zhidao.baidu.com/daily/view?id=174863" target="_blank" class="banner-card-item" data-type="banner">
<div class="item-mask"></div>
<img src="https://gss0.bdstatic.com/7051cy89Q1gCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2019/1006/4.png" alt="" class="bg-blur">
<div class="item-text-mask"></div>
<div class="pic" style="background-image: url(https://gss0.bdstatic.com/7051cy89Q1gCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2019/1006/4.png)"></div>
<div class="ie-blur"></div>
<div class="text-container">
<div class="title">清朝太监真实的生活是什么样？</div>
<div class="intro">清代的太监，可以用深宫中的可怜人来形容</div>
</div>
</a>
<a href="https://zhidao.baidu.com/daily/view?id=178212" target="_blank" class="banner-card-item" data-type="banner">
<div class="item-mask"></div>
<img src="https://gss0.bdstatic.com/7051cy89Q1gCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2019/1006/5.png" alt="" class="bg-blur">
<div class="item-text-mask"></div>
<div class="pic" style="background-image: url(https://gss0.bdstatic.com/7051cy89Q1gCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2019/1006/5.png)"></div>
<div class="ie-blur"></div>
<div class="text-container">
<div class="title">维吾尔族真的更擅长踢足球吗？</div>
<div class="intro">为什么新疆盛产天才足球少年？维吾尔族真的足球天赋更好吗？</div>
</div>
</a>
<a href="https://zhidao.baidu.com/daily/view?id=179562" target="_blank" class="banner-card-item" data-type="banner">
<div class="item-mask"></div>
<img src="https://gss0.bdstatic.com/7051cy89Q1gCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2019/1005/1.png" alt="" class="bg-blur">
<div class="item-text-mask"></div>
<div class="pic" style="background-image: url(https://gss0.bdstatic.com/7051cy89Q1gCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2019/1005/1.png)"></div>
<div class="ie-blur"></div>
<div class="text-container">
<div class="title">最强分列式是怎样炼成的？</div>
<div class="intro">从队列、动作和步速，最强的分列式是这样炼成的</div>
</div>
</a>
<a href="https://zhidao.baidu.com/daily/view?id=175727" target="_blank" class="banner-card-item" data-type="banner">
<div class="item-mask"></div>
<img src="https://gss0.bdstatic.com/7051cy89Q1gCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2019/1005/2.png" alt="" class="bg-blur">
<div class="item-text-mask"></div>
<div class="pic" style="background-image: url(https://gss0.bdstatic.com/7051cy89Q1gCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2019/1005/2.png)"></div>
<div class="ie-blur"></div>
<div class="text-container">
<div class="title">汉语能取代英语的统治地位吗？</div>
<div class="intro">2025年人类说什么语言？</div>
</div>
</a>
<a href="https://zhidao.baidu.com/daily/view?id=178627" target="_blank" class="banner-card-item" data-type="banner">
<div class="item-mask"></div>
<img src="https://gss0.bdstatic.com/7051cy89Q1gCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2019/1005/3.png" alt="" class="bg-blur">
<div class="item-text-mask"></div>
<div class="pic" style="background-image: url(https://gss0.bdstatic.com/7051cy89Q1gCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2019/1005/3.png)"></div>
<div class="ie-blur"></div>
<div class="text-container">
<div class="title">减肥拖鞋、贴耳穴是伪科学吗？</div>
<div class="intro">民间盛行一种叫做“反射疗法”的远距离医疗保健方式</div>
</div>
</a>
</div>
</div>
<div class="banner-card-tab-list">
<span class="show-card-tab-item show-tab-item-current" data-index="0"></span>
<span class="show-card-tab-item" data-index="1"></span>
<span class="show-card-tab-item" data-index="2"></span>
</div>
<div class="slogan-widget">
<div class="slogan-wp">
<div class="slogan-content">
<div class="not-login-mask"></div>
<div class="not-login-slogan">
<div class="title">
<span>百度知道</span>
<a href="http://help.baidu.com/question?prod_id=9&class=320" target="_blank" class="icon"></a>
</div>
<div class="middle-content line">
<p class="slogan-text">
总有一个人知道<br>你问题的答案</p>
<div class="not-login-slogan-bg"></div>
</div>
<div class="finish-count">
<p class="finish-count-text">解决</p>
<div class="finish-count-num line">
<div class="count-num-item">
<span class="num-item-scroll">0</span>
<span class="num-item-scroll">1</span>
<span class="num-item-scroll">2</span>
<span class="num-item-scroll">3</span>
<span class="num-item-scroll">4</span>
<span class="num-item-scroll">5</span>
<span class="num-item-scroll">6</span>
<span class="num-item-scroll">7</span>
<span class="num-item-scroll">8</span>
<span class="num-item-scroll">9</span>
<span class="num-item-scroll">0</span>
<span class="num-item-scroll">1</span>
<span class="num-item-scroll">2</span>
<span class="num-item-scroll">3</span>
<span class="num-item-scroll">4</span>
<span class="num-item-scroll">5</span>
<span class="num-item-scroll">6</span>
<span class="num-item-scroll">7</span>
<span class="num-item-scroll">8</span>
<span class="num-item-scroll">9</span>
</div>
<div class="count-num-item">
<span class="num-item-scroll">0</span>
<span class="num-item-scroll">1</span>
<span class="num-item-scroll">2</span>
<span class="num-item-scroll">3</span>
<span class="num-item-scroll">4</span>
<span class="num-item-scroll">5</span>
<span class="num-item-scroll">6</span>
<span class="num-item-scroll">7</span>
<span class="num-item-scroll">8</span>
<span class="num-item-scroll">9</span>
<span class="num-item-scroll">0</span>
<span class="num-item-scroll">1</span>
<span class="num-item-scroll">2</span>
<span class="num-item-scroll">3</span>
<span class="num-item-scroll">4</span>
<span class="num-item-scroll">5</span>
<span class="num-item-scroll">6</span>
<span class="num-item-scroll">7</span>
<span class="num-item-scroll">8</span>
<span class="num-item-scroll">9</span>
</div>
<div class="count-num-item">
<span class="num-item-scroll">0</span>
<span class="num-item-scroll">1</span>
<span class="num-item-scroll">2</span>
<span class="num-item-scroll">3</span>
<span class="num-item-scroll">4</span>
<span class="num-item-scroll">5</span>
<span class="num-item-scroll">6</span>
<span class="num-item-scroll">7</span>
<span class="num-item-scroll">8</span>
<span class="num-item-scroll">9</span>
<span class="num-item-scroll">0</span>
<span class="num-item-scroll">1</span>
<span class="num-item-scroll">2</span>
<span class="num-item-scroll">3</span>
<span class="num-item-scroll">4</span>
<span class="num-item-scroll">5</span>
<span class="num-item-scroll">6</span>
<span class="num-item-scroll">7</span>
<span class="num-item-scroll">8</span>
<span class="num-item-scroll">9</span>
</div>
<div class="count-num-comma">
,</div>
<div class="count-num-item">
<span class="num-item-scroll">0</span>
<span class="num-item-scroll">1</span>
<span class="num-item-scroll">2</span>
<span class="num-item-scroll">3</span>
<span class="num-item-scroll">4</span>
<span class="num-item-scroll">5</span>
<span class="num-item-scroll">6</span>
<span class="num-item-scroll">7</span>
<span class="num-item-scroll">8</span>
<span class="num-item-scroll">9</span>
<span class="num-item-scroll">0</span>
<span class="num-item-scroll">1</span>
<span class="num-item-scroll">2</span>
<span class="num-item-scroll">3</span>
<span class="num-item-scroll">4</span>
<span class="num-item-scroll">5</span>
<span class="num-item-scroll">6</span>
<span class="num-item-scroll">7</span>
<span class="num-item-scroll">8</span>
<span class="num-item-scroll">9</span>
</div>
<div class="count-num-item">
<span class="num-item-scroll">0</span>
<span class="num-item-scroll">1</span>
<span class="num-item-scroll">2</span>
<span class="num-item-scroll">3</span>
<span class="num-item-scroll">4</span>
<span class="num-item-scroll">5</span>
<span class="num-item-scroll">6</span>
<span class="num-item-scroll">7</span>
<span class="num-item-scroll">8</span>
<span class="num-item-scroll">9</span>
<span class="num-item-scroll">0</span>
<span class="num-item-scroll">1</span>
<span class="num-item-scroll">2</span>
<span class="num-item-scroll">3</span>
<span class="num-item-scroll">4</span>
<span class="num-item-scroll">5</span>
<span class="num-item-scroll">6</span>
<span class="num-item-scroll">7</span>
<span class="num-item-scroll">8</span>
<span class="num-item-scroll">9</span>
</div>
<div class="count-num-item">
<span class="num-item-scroll">0</span>
<span class="num-item-scroll">1</span>
<span class="num-item-scroll">2</span>
<span class="num-item-scroll">3</span>
<span class="num-item-scroll">4</span>
<span class="num-item-scroll">5</span>
<span class="num-item-scroll">6</span>
<span class="num-item-scroll">7</span>
<span class="num-item-scroll">8</span>
<span class="num-item-scroll">9</span>
<span class="num-item-scroll">0</span>
<span class="num-item-scroll">1</span>
<span class="num-item-scroll">2</span>
<span class="num-item-scroll">3</span>
<span class="num-item-scroll">4</span>
<span class="num-item-scroll">5</span>
<span class="num-item-scroll">6</span>
<span class="num-item-scroll">7</span>
<span class="num-item-scroll">8</span>
<span class="num-item-scroll">9</span>
</div>
<div class="count-num-comma">
,</div>
<div class="count-num-item">
<span class="num-item-scroll">0</span>
<span class="num-item-scroll">1</span>
<span class="num-item-scroll">2</span>
<span class="num-item-scroll">3</span>
<span class="num-item-scroll">4</span>
<span class="num-item-scroll">5</span>
<span class="num-item-scroll">6</span>
<span class="num-item-scroll">7</span>
<span class="num-item-scroll">8</span>
<span class="num-item-scroll">9</span>
<span class="num-item-scroll">0</span>
<span class="num-item-scroll">1</span>
<span class="num-item-scroll">2</span>
<span class="num-item-scroll">3</span>
<span class="num-item-scroll">4</span>
<span class="num-item-scroll">5</span>
<span class="num-item-scroll">6</span>
<span class="num-item-scroll">7</span>
<span class="num-item-scroll">8</span>
<span class="num-item-scroll">9</span>
</div>
<div class="count-num-item">
<span class="num-item-scroll">0</span>
<span class="num-item-scroll">1</span>
<span class="num-item-scroll">2</span>
<span class="num-item-scroll">3</span>
<span class="num-item-scroll">4</span>
<span class="num-item-scroll">5</span>
<span class="num-item-scroll">6</span>
<span class="num-item-scroll">7</span>
<span class="num-item-scroll">8</span>
<span class="num-item-scroll">9</span>
<span class="num-item-scroll">0</span>
<span class="num-item-scroll">1</span>
<span class="num-item-scroll">2</span>
<span class="num-item-scroll">3</span>
<span class="num-item-scroll">4</span>
<span class="num-item-scroll">5</span>
<span class="num-item-scroll">6</span>
<span class="num-item-scroll">7</span>
<span class="num-item-scroll">8</span>
<span class="num-item-scroll">9</span>
</div>
<div class="count-num-item">
<span class="num-item-scroll">0</span>
<span class="num-item-scroll">1</span>
<span class="num-item-scroll">2</span>
<span class="num-item-scroll">3</span>
<span class="num-item-scroll">4</span>
<span class="num-item-scroll">5</span>
<span class="num-item-scroll">6</span>
<span class="num-item-scroll">7</span>
<span class="num-item-scroll">8</span>
<span class="num-item-scroll">9</span>
<span class="num-item-scroll">0</span>
<span class="num-item-scroll">1</span>
<span class="num-item-scroll">2</span>
<span class="num-item-scroll">3</span>
<span class="num-item-scroll">4</span>
<span class="num-item-scroll">5</span>
<span class="num-item-scroll">6</span>
<span class="num-item-scroll">7</span>
<span class="num-item-scroll">8</span>
<span class="num-item-scroll">9</span>
</div>
</div>
<p class="finish-count-text">个问题</p>
</div>
<p class="iknow-need-know">
<a href="http://help.baidu.com/question?prod_en=zhidao&class=320" target="_blank" class="iknow-need-know-link">
知道须知</a>
</p>
<div class="answer-question-section">
<a href="/new?entry=home_unlogin" target="_blank" class="not-login-button-item question-button">
<div class="item-logo question-button-logo"></div>
<span class="item-title">我要提问</span>
</a>
<a href="/browse" target="_blank" class="not-login-button-item answer-button">
<div class="item-logo answer-button-logo"></div>
<span class="item-title">我来回答</span>
</a>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="wgt-two-layout" style="background: #fff;height: 458px;">
<div class="wgt-two-layout-wp container">
<div class="wgt-two-layout-left">
<div class="wgt-discussion">
<div class="wgt-discussion-title">大家热议</div>
<div class="wgt-discussion-list">
<a href="/question/1116950809316054699?entry=home_discuss" target="_blank" class="discussion-big" style="background-image:url(https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/a5c27d1ed21b0ef4378e37e6d3c451da81cb3e27.jpg)">
<div class="mask"></div>
<div class="text-container">
<div class="title">为什么很多人网上聊的火热，现实里却很尴尬？</div>
<div class="intro">因为网络聊天是不用通过眼神交流的，聊天的时候遇到尴尬的问题，对方也不会知道你正处于尴尬中，而且你有足够的时间来应对一个个尴尬的问题。但是在面谈时，对方抛出的问题是随机的，在短时间内你可能反应不过来，从而导致了双方的尴尬。</div>
<div class="statistics">
<img src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/9dca417973d6bfd4bf38bb.jpg" alt="" class="avatar">
<span class="name">Ays挚钥</span>
<span class="point"></span>
<span class="thumb-num">82点赞</span>
<div class="discuss-num">31人参与讨论</div>
</div>
</div>
</a>
<div class="discussion-small-list">
<a href="/question/1803116193756561187?entry=home_discuss" target="_blank" class="discussion-small" style="background-image:url(https://gss0.baidu.com/9vo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/ac4bd11373f08202e3f88c9e45fbfbedab641b2c.jpg)">
<div class="mask"></div>
<div class="text-container">
<div class="title">职场新人该不该主动要求工作?</div>
<div class="discuss-num">432人参与讨论</div>
</div>
</a>
<a href="/question/1772773766892472620?entry=home_discuss" target="_blank" class="discussion-small" style="background-image:url(https://gss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/7acb0a46f21fbe09d8bf72b765600c338644adb4.jpg)">
<div class="mask"></div>
<div class="text-container">
<div class="title">星座是否有科学依据？</div>
<div class="discuss-num">838人参与讨论</div>
</div>
</a>
</div>
</div>
</div>
</div>
<div class="wgt-two-layout-right">
<div class="wgt-recommend">
<div class="wgt-discussion-title">精彩推荐</div>
<div class="recommend-list">
<div class="recommend-item">
<a href="https://zhidao.baidu.com/question/717825756184869045" class="title" target="_blank">考研与不考研的同学，未来差距大吗？</a>
<a href="https://zhidao.baidu.com/question/717825756184869045" class="intro" target="_blank">有差距，但不会很大。前提是两个人都在水平差不多的本科院校，而且正常的轨道上发展。我还...</a>
<div class="meta">
<img src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/8aa03533333031373779754c53.jpg" alt="" class="avatar">
<span class="name">5330177yu</span>
<span class="time">2019.06.11</span>
</div>
</div>
<div class="recommend-item">
<a href="https://zhidao.baidu.com/question/1372723824158423179" class="title" target="_blank">为什么越来越多人买华为, 而不选高性价比的小米？</a>
<a href="https://zhidao.baidu.com/question/1372723824158423179" class="intro" target="_blank">华为和小米，是国产手机的两个代表，它们经常被拿到一起比较。有网友问：小米手机号称高性...</a>
<div class="meta">
<img src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/8ed4d0a1badadfb1c9f1323931355e1c.jpg" alt="" class="avatar">
<span class="name">小黑弑神2915</span>
<span class="time">2018.06.06</span>
</div>
</div>
<div class="recommend-item">
<a href="https://zhidao.baidu.com/question/814893560579530932" class="title" target="_blank">为什么00后都不喜欢玩微信，却玩过时的QQ？</a>
<a href="https://zhidao.baidu.com/question/814893560579530932" class="intro" target="_blank">嗨，各位小伙伴们大家好。现在人们玩的比较多的社交软件就是QQ和微信了。既然是两个不同的...</a>
<div class="meta">
<img src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/4625b7e7d2f4313833396d18.jpg" alt="" class="avatar">
<span class="name">风音1839</span>
<span class="time">2018.06.06</span>
</div>
</div>
</div>
</div>
</div>
</div>
</div><div class="wgt-two-layout" style="background: #F4F5F7;height: 514px;">
<div class="wgt-two-layout-wp container">
<div class="wgt-two-layout-left">
<div class="wgt-influence-rank">
<div class="wgt-influence-rank-title">影响力排行</div>
<div class="rank-list">
<div class="rank-item">
<div class="top-banner green">日报作者</div>
<div class="rank-user
                     first
                    ">
<span class="order">1</span>
<a href="/daily/author?un=%C1%FA%D4%B4%C6%DA%BF%AF%CD%F8&ie=gbk" class="avatar-con" target="_blank" data-type="daily">
<img src="https://gss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/72f082025aafa40f48e61a28a664034f78f01926.jpg" alt="" class="avatar">
</a>
<div class="text-con">
<div class="name"><a href="/daily/author?un=%C1%FA%D4%B4%C6%DA%BF%AF%CD%F8&ie=gbk" target="_blank" class="link" data-type="daily">龙源期刊网</a></div>
<span class="read-num">1kw+阅读</span>
<span class="point"></span>
<span class="thumb-num">2kw+热度</span>
</div>
</div>
<div class="rank-user
                     second
                    ">
<span class="order">2</span>
<a href="/daily/author?un=%B9%D6%C2%DE%BF%C6%C6%D5&ie=gbk" class="avatar-con" target="_blank" data-type="daily">
<img src="https://gss0.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/zhidao/wh%3D450%2C600/sign=f2c590a045a7d933bffdec77987bfd25/48540923dd54564e6f2e4e8db4de9c82d1584f3f.jpg" alt="" class="avatar">
</a>
<div class="text-con">
<div class="name"><a href="/daily/author?un=%B9%D6%C2%DE%BF%C6%C6%D5&ie=gbk" target="_blank" class="link" data-type="daily">怪罗科普</a></div>
<span class="read-num">2kw+阅读</span>
<span class="point"></span>
<span class="thumb-num">1kw+热度</span>
</div>
</div>
<div class="rank-user
                     third">
<span class="order">3</span>
<a href="/daily/author?un=%BF%C6%C6%D5%D6%D0%B9%FA%CD%F8&ie=gbk" class="avatar-con" target="_blank" data-type="daily">
<img src="https://gss0.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/zhidao/wh%3D450%2C600/sign=72095051763e6709be554dfb0ef7b30b/77094b36acaf2edd7643e59f841001e939019312.jpg" alt="" class="avatar">
</a>
<div class="text-con">
<div class="name"><a href="/daily/author?un=%BF%C6%C6%D5%D6%D0%B9%FA%CD%F8&ie=gbk" target="_blank" class="link" data-type="daily">科普中国网</a></div>
<span class="read-num">7kw+阅读</span>
<span class="point"></span>
<span class="thumb-num">600w+热度</span>
</div>
</div>
<div class="rank-user
                    ">
<span class="order">4</span>
<a href="/daily/author?un=%BF%C6%D1%A7%B9%AB%D4%B0&ie=gbk" class="avatar-con" target="_blank" data-type="daily">
<img src="https://gss0.bdstatic.com/70cFsj3f_gcX8t7mm9GUKT-xh_/zhidaoribao2014/authors/scipark.png" alt="" class="avatar">
</a>
<div class="text-con">
<div class="name"><a href="/daily/author?un=%BF%C6%D1%A7%B9%AB%D4%B0&ie=gbk" target="_blank" class="link" data-type="daily">科学公园</a></div>
<span class="read-num">1kw+阅读</span>
<span class="point"></span>
<span class="thumb-num">500w+热度</span>
</div>
</div>
<div class="rank-user
                    ">
<span class="order">5</span>
<a href="/daily/author?un=%D6%D3%C3%FA%C1%C4%BF%C6%D1%A7&ie=gbk" class="avatar-con" target="_blank" data-type="daily">
<img src="https://gss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/79f0f736afc379314d1017ebe5c4b74542a911f3.jpg" alt="" class="avatar">
</a>
<div class="text-con">
<div class="name"><a href="/daily/author?un=%D6%D3%C3%FA%C1%C4%BF%C6%D1%A7&ie=gbk" target="_blank" class="link" data-type="daily">钟铭聊科学</a></div>
<span class="read-num">6.1w阅读</span>
<span class="point"></span>
<span class="thumb-num">300w+热度</span>
</div>
</div>
</div>
<div class="rank-item">
<div class="top-banner orange">优秀答主</div>
<div class="rank-user
                     first
                    ">
<span class="order">1</span>
<a href="/usercenter?uid=e2ab4069236f25705e79dc14" class="avatar-con" target="_blank" data-type="reply">
<img src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/e2abcee2caabe5fbbac3dc14.jpg" alt="" class="avatar">
</a>
<div class="text-con">
<div class="name"><a href="/usercenter?uid=e2ab4069236f25705e79dc14" target="_blank" class="link" data-type="reply">吴诗妍好</a></div>
<span class="read-num">3.3w回答</span>
<span class="point"></span>
<span class="thumb-num">12w+点赞</span>
</div>
</div>
<div class="rank-user
                     second
                    ">
<span class="order">2</span>
<a href="/usercenter?uid=60784069236f25705e79e864" class="avatar-con" target="_blank" data-type="reply">
<img src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/6078bbb6476f313839e864.jpg" alt="" class="avatar">
</a>
<div class="text-con">
<div class="name"><a href="/usercenter?uid=60784069236f25705e79e864" target="_blank" class="link" data-type="reply">欢Go189</a></div>
<span class="read-num">6.4w回答</span>
<span class="point"></span>
<span class="thumb-num">2.9w点赞</span>
</div>
</div>
<div class="rank-user
                     third">
<span class="order">3</span>
<a href="/usercenter?uid=ad664069236f25705e79c1cf" class="avatar-con" target="_blank" data-type="reply">
<img src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/ad66d0a1d0a1cab1b9e2393939c1cf.jpg" alt="" class="avatar">
</a>
<div class="text-con">
<div class="name"><a href="/usercenter?uid=ad664069236f25705e79c1cf" target="_blank" class="link" data-type="reply">小小时光999</a></div>
<span class="read-num">1.1w回答</span>
<span class="point"></span>
<span class="thumb-num">1.5w点赞</span>
</div>
</div>
<div class="rank-user
                    ">
<span class="order">4</span>
<a href="/usercenter?uid=b5924069236f25705e79722a" class="avatar-con" target="_blank" data-type="reply">
<img src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/b592c1f7d0c7d3ead6d0b5c4d2b0bad7722a.jpg" alt="" class="avatar">
</a>
<div class="text-con">
<div class="name"><a href="/usercenter?uid=b5924069236f25705e79722a" target="_blank" class="link" data-type="reply">流星雨中的野鹤</a></div>
<span class="read-num">2.1w回答</span>
<span class="point"></span>
<span class="thumb-num">8494点赞</span>
</div>
</div>
<div class="rank-user
                    ">
<span class="order">5</span>
<a href="/usercenter?uid=85484069236f25705e79b848" class="avatar-con" target="_blank" data-type="reply">
<img src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/8548626f74656e616fb848.jpg" alt="" class="avatar">
</a>
<div class="text-con">
<div class="name"><a href="/usercenter?uid=85484069236f25705e79b848" target="_blank" class="link" data-type="reply">botenao</a></div>
<span class="read-num">5320回答</span>
<span class="point"></span>
<span class="thumb-num">4540点赞</span>
</div>
</div>
</div>
<div class="rank-item">
<div class="top-banner blue">优质团队</div>
<div class="rank-user
                     first
                    ">
<span class="order">1</span>
<a href="/uteam/view?teamId=22932" class="avatar-con" target="_blank" data-type="uteam">
<img src="https://gss0.baidu.com/7LsWdDW5_xN3otqbppnN2DJv/jiayong19/abpic/item/6f9375f8dc84ef5808244d1a.jpg" alt="" class="avatar">
</a>
<div class="text-con">
<div class="name"><a href="/uteam/view?teamId=22932" target="_blank" class="link" data-type="uteam">热点@民生</a></div>
<span class="read-num">95w+回答</span>
<span class="point"></span>
<span class="thumb-num">60w+采纳</span>
</div>
</div>
<div class="rank-user
                     second
                    ">
<span class="order">2</span>
<a href="/uteam/view?teamId=4092" class="avatar-con" target="_blank" data-type="uteam">
<img src="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/zhidao/wh%3D221%2C221%3B/sign=9b943c108682b9013df8cb3141bc8545/7aec54e736d12f2eed50b95743c2d562853568ab.jpg" alt="" class="avatar">
</a>
<div class="text-con">
<div class="name"><a href="/uteam/view?teamId=4092" target="_blank" class="link" data-type="uteam">正气法律达人团</a></div>
<span class="read-num">59w+回答</span>
<span class="point"></span>
<span class="thumb-num">32w+采纳</span>
</div>
</div>
<div class="rank-user
                     third">
<span class="order">3</span>
<a href="/uteam/view?teamId=102208" class="avatar-con" target="_blank" data-type="uteam">
<img src="https://gss0.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/zhidao/wh%3D221%2C221%3B/sign=4485bdfb6663f6241c083101b575c7ca/d000baa1cd11728bf18abae0c5fcc3cec2fd2c48.jpg" alt="" class="avatar">
</a>
<div class="text-con">
<div class="name"><a href="/uteam/view?teamId=102208" target="_blank" class="link" data-type="uteam">星星之火</a></div>
<span class="read-num">13w+回答</span>
<span class="point"></span>
<span class="thumb-num">7.6w采纳</span>
</div>
</div>
<div class="rank-user
                    ">
<span class="order">4</span>
<a href="/uteam/view?teamId=38380" class="avatar-con" target="_blank" data-type="uteam">
<img src="https://gss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/album/pic/item/c8177f3e6709c93d57ebae9b9d3df8dcd1005444.jpg" alt="" class="avatar">
</a>
<div class="text-con">
<div class="name"><a href="/uteam/view?teamId=38380" target="_blank" class="link" data-type="uteam">赢商天下</a></div>
<span class="read-num">5.3w回答</span>
<span class="point"></span>
<span class="thumb-num">3.2w采纳</span>
</div>
</div>
<div class="rank-user
                    ">
<span class="order">5</span>
<a href="/uteam/view?teamId=102257" class="avatar-con" target="_blank" data-type="uteam">
<img src="https://gss0.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/zhidao/wh%3D221%2C221%3B/sign=3446c76cdea20cf446c5f6dd44386704/d01373f082025aafc9cb3e20f5edab64024f1a5b.jpg" alt="" class="avatar">
</a>
<div class="text-con">
<div class="name"><a href="/uteam/view?teamId=102257" target="_blank" class="link" data-type="uteam">生活达人</a></div>
<span class="read-num">1830回答</span>
<span class="point"></span>
<span class="thumb-num">1259采纳</span>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="wgt-two-layout-right">
<div class="wgt-activity">
<div class="wgt-activity-title">活动公告</div>
<div class="activity-list">
<a href="https://iwenjuan.baidu.com/?code=gs7fq3" class="activity-item" target="_blank">填问卷，赢手机话费！</a>
<a href="http://help.baidu.com/question?prod_id=9&amp;class=320" class="activity-item" target="_blank">帮助手册：如何使用知道</a>
<a href="https://zhidao.baidu.com/special/topic/view?name=tcsh" class="activity-item" target="_blank">热剧解读：长安十二时辰你看懂了吗？</a>
</div>
<div class="banner-list">
<a href="http://zhidao.baidu.com/activity/commact?name=guoqing" target="_blank" class="ad-link" data-index="0">
<img src="https://iknow-base.bj.bcebos.com/zhimatuanhuodong/shiyishou270x115x2.jpg" alt="" class="banner">
</a>
<a href="https://zhidao.baidu.com/special/topic/view?name=guohuo" target="_blank" class="ad-link" data-index="1">
<img src="https://gss0.bdstatic.com/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50/zhongguozhizao/0/PC280x120.jpg" alt="" class="banner">
</a>
</div>
</div>
</div>
</div>
</div><div class="wgt-business container">
<div class="wgt-business-title">权威机构</div>
<div class="business-list">
<div class="business-item">
<a href="https://zhidao.baidu.com/business/profile?id=87454" target="_blank" class="link">
<img src="https://cambrian-images.cdn.bcebos.com/42edc22bbadc9c3bb045bb0f5b39c18d_1536286238688.jpeg" alt="" class="avatar">
<div class="name">长春市人民政府...</div>
</a>
<div class="stastics">
<span class="reply-num">1.5w回答</span>
<span class="point"></span>
<span class="thumb-num">525赞</span>
</div>
</div>
<div class="business-item">
<a href="https://zhidao.baidu.com/business/profile?id=1990" target="_blank" class="link">
<img src="https://cambrian-images.cdn.bcebos.com/771b6b01a90a45d441ec30952580afa4_1599950534272924.jpeg" alt="" class="avatar">
<div class="name">12366北京中心</div>
</a>
<div class="stastics">
<span class="reply-num">2138回答</span>
<span class="point"></span>
<span class="thumb-num">3649赞</span>
</div>
</div>
<div class="business-item">
<a href="https://zhidao.baidu.com/business/profile?id=7" target="_blank" class="link">
<img src="https://gss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/zhidao/wh%3D900%2C1200/sign=4e332fdd7dec54e741b912178908b761/b21bb051f819861859764d674ced2e738bd4e624.jpg" alt="" class="avatar">
<div class="name">中国联通</div>
</a>
<div class="stastics">
<span class="reply-num">83w+回答</span>
<span class="point"></span>
<span class="thumb-num">44w+赞</span>
</div>
</div>
<div class="business-item">
<a href="https://zhidao.baidu.com/business/profile?id=14857" target="_blank" class="link">
<img src="https://cambrian-images.cdn.bcebos.com/a20c2df920ce41e3168cca66fc6fe95f_1607564955505701.jpeg" alt="" class="avatar">
<div class="name">华为终端客服</div>
</a>
<div class="stastics">
<span class="reply-num">28w+回答</span>
<span class="point"></span>
<span class="thumb-num">34w+赞</span>
</div>
</div>
<div class="business-item">
<a href="https://zhidao.baidu.com/business/profile?id=1" target="_blank" class="link">
<img src="https://cambrian-images.cdn.bcebos.com/05385ee218a1e983e5fbec09566989e7_1607470286076827.jpeg" alt="" class="avatar">
<div class="name">蚂蚁金服客户中...</div>
</a>
<div class="stastics">
<span class="reply-num">6.4w回答</span>
<span class="point"></span>
<span class="thumb-num">21w+赞</span>
</div>
</div>
<div class="business-item">
<a href="https://zhidao.baidu.com/business/profile?id=2491" target="_blank" class="link">
<img src="https://cambrian-images.cdn.bcebos.com/8fa4f4792c705dcd7ddbed79d85bcd41_1608138236926326.jpeg" alt="" class="avatar">
<div class="name">招商银行</div>
</a>
<div class="stastics">
<span class="reply-num">72w+回答</span>
<span class="point"></span>
<span class="thumb-num">21w+赞</span>
</div>
</div>
<div class="business-item">
<a href="https://zhidao.baidu.com/business/profile?id=21078" target="_blank" class="link">
<img src="https://cambrian-images.cdn.bcebos.com/baa3e08b7df5ab38f955b7d232f483dd_1611298121679262.jpeg" alt="" class="avatar">
<div class="name">凯迪拉克</div>
</a>
<div class="stastics">
<span class="reply-num">5018回答</span>
<span class="point"></span>
<span class="thumb-num">2507赞</span>
</div>
</div>
</div>
</div>

</div>


<div class="wgt-footer-new">
<div class="footer-wp">
<ul class="footer-list clearfix">
<li class="footer-list-item footer-list-guide">
<div class="footer-title"><span class="icon-guide"></span>新手帮助</div>
<ul class="footer-link clearfix">
<li><a href="http://help.baidu.com/question?prod_en=zhidao&class=320&id=1525" target="_blank">如何答题</a></li>
<li><a href="http://help.baidu.com/question?prod_id=9&class=320&id=1526" target="_blank">获取采纳</a></li>
<li><a href="http://help.baidu.com/question?prod_id=9&class=337&id=1513" target="_blank">使用财富值</a></li>
</ul>
</li>
<li class="footer-list-item footer-list-intro">
<div class="footer-title"><span class="icon-intro"></span>玩法介绍</div>
<ul class="footer-link clearfix">
<li><a href="/shop" target="_blank">知道商城</a></li>
<li><a href="http://zhidao.baidu.com/pcs/zhimatuan/index.html" target="_blank">知道团队</a></li>
<li><a href="/home/partnerhome" target="_blank">合伙人认证</a></li>
<li><a href="http://zhidao.baidu.com/s/hi-quality/index.html" target="_blank">高质量问答</a></li>
</ul>
</li>
<li class="footer-list-item footer-list-sug">
<div class="user-tip" id="js-footer-user-tip" style="display: none;">
<p class="title">您的帐号状态正常</p>
<p class="desc">感谢您对我们的支持</p>
</div>
<div class="footer-title"><span class="icon-sug"></span>投诉建议</div>
<ul class="footer-link clearfix">
<li><a href="javascript:;" log="module:common,action:click,area:footer_feedback" target="_blank" id="footer-feedback">意见反馈</a></li>
<li><a href="/misc/appeal" log="module:common,action:click,area:footer_appeal" target="_blank" id="js-footer-appeal">账号申诉</a></li>
<li><a href="http://ikefu.baidu.com/web/zhishisousuo#" log="module:common,action:click,area:footer_consult" target="_blank">智能咨询</a></li>
</ul>
</li>
</ul>
</div>
<div class="footer-new">
<p class="jt1128">
京ICP证030173号-1&nbsp;&nbsp;&nbsp;京网文【2013】0934-983号&nbsp;&nbsp;&nbsp;&nbsp;        &copy;2019Baidu&nbsp;&nbsp;<a rel="nofollow" href="http://www.baidu.com/duty/" target="_blank">使用百度前必读</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a rel="nofollow" href="http://help.baidu.com/question?prod_id=9&class=325&id=2760" target="_blank">知道协议</a>&nbsp;&nbsp;</p>
</div>
</div>





<script>
    void function(a,b,c,d,e,f){function g(b){a.attachEvent?a.attachEvent("onload",b,!1):a.addEventListener&&a.addEventListener("load",b)}function h(a,c,d){d=d||15;var e=new Date;e.setTime((new Date).getTime()+1e3*d),b.cookie=a+"="+escape(c)+";path=/;expires="+e.toGMTString()}function i(a){var c=b.cookie.match(new RegExp("(^| )"+a+"=([^;]*)(;|$)"));return null!=c?unescape(c[2]):null}function j(){var a=i("PMS_JT");if(a){h("PMS_JT","",-1);try{a=a.match(/{["']s["']:(\d+),["']r["']:["']([\s\S]+)["']}/),a=a&&a[1]&&a[2]?{s:parseInt(a[1]),r:a[2]}:{}}catch(c){a={}}a.r&&b.referrer.replace(/#.*/,"")!=a.r||alog("speed.set","wt",a.s)}}if(a.alogObjectConfig){var k=a.alogObjectConfig.sample,l=a.alogObjectConfig.rand;d="https:"===a.location.protocol?"https://fex.bdstatic.com"+d:"http://fex.bdstatic.com"+d,k&&l&&l>k||(g(function(){alog("speed.set","lt",+new Date),e=b.createElement(c),e.async=!0,e.src=d+"?v="+~(new Date/864e5)+~(new Date/864e5),f=b.getElementsByTagName(c)[0],f.parentNode.insertBefore(e,f)}),j())}}(window,document,"script","/hunter/alog/dp.min.js");
    </script>

<script>
				var _hmt = _hmt || [];
				(function() {
					var hm = document.createElement("script");
					hm.src = "https://hm.baidu.com/hm.js?6859ce5aaf00fb00387e6434e4fcc925";
					var s = document.getElementsByTagName("script")[0];
					s.parentNode.insertBefore(hm, s);
				})();
			</script>

</body><script type="text/javascript" src="https://iknowpc.bdimg.com/static/common/lib/mod.75d1f98.js"></script><script type="text/javascript">(window.__IKNOW_GLOBAL__ || window).require.resourceMap({"res":{"common:widget\/lib\/jquery\/jquery.origin.js":{"pkg":"common:p3"},"common:widget\/js\/util\/event\/event.js":{"pkg":"common:p6","deps":["common:widget\/lib\/jquery\/jquery.js"]},"common:widget\/bottom-ask\/bottom-ask.js":{"pkg":"common:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js","common:widget\/js\/util\/event\/event.js","common:widget\/js\/util\/log\/log.js"]},"common:widget\/css\/fonts\/iconfont.js":{"pkg":"common:p0"},"common:widget\/css\/fonts\/iconfont.min.js":{"pkg":"common:p0"},"common:widget\/footer-new\/footer-new.js":{"pkg":"common:p0","deps":["common:widget\/lib\/jquery\/jquery.js","common:widget\/js\/util\/event\/event.js"]},"common:widget\/footer\/footer.js":{"pkg":"common:p0"},"common:widget\/header-metis\/header.js":{"pkg":"common:p0","deps":["common:widget\/lib\/jquery\/jquery.js","common:widget\/js\/ui\/dialog\/dialog.js","common:widget\/js\/util\/template\/template.js","common:widget\/js\/ui\/scrollbar-new\/scrollbar-new.js","common:widget\/js\/util\/store\/store.js"]},"common:widget\/menu\/menu.js":{"pkg":"common:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js","common:widget\/js\/util\/log\/log.js"]},"common:widget\/search-box-new\/search-box-new.js":{"pkg":"common:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js","common:widget\/js\/ui\/suggestion-new\/suggestion-new.js","common:widget\/js\/util\/event\/event.js","common:widget\/js\/util\/form\/form.js","common:widget\/js\/util\/log\/log.js","common:widget\/js\/ui\/dialog\/dialog.js","common:widget\/lib\/jquery.placeholder\/jquery.placeholder.js"]},"common:widget\/userbar-renew\/userbar-renew.js":{"pkg":"common:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js","common:widget\/js\/util\/event\/event.js","common:widget\/js\/logic\/login\/login.js","common:widget\/js\/util\/log\/log.js","common:widget\/js\/util\/store\/store.js"]},"home:widget\/activity\/activity.js":{"pkg":"home:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js","common:widget\/js\/util\/log\/log.js"]},"home:widget\/banner\/banner.js":{"pkg":"home:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js","common:widget\/js\/util\/log\/log.js"]},"home:widget\/business\/business.js":{"pkg":"home:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js","common:widget\/js\/util\/log\/log.js"]},"home:widget\/discussion\/discussion.js":{"pkg":"home:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js","common:widget\/js\/util\/log\/log.js"]},"home:widget\/influence\/influence.js":{"pkg":"home:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js","common:widget\/js\/util\/log\/log.js"]},"home:widget\/js\/lazyload\/lazyload.js":{"pkg":"home:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js"]},"home:widget\/js\/render-header\/render-header.js":{"pkg":"home:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js"]},"home:widget\/partner\/fullpage\/jquery.fullPage.js":{"pkg":"home:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js"]},"home:widget\/partner\/js\/dom-ready.js":{"pkg":"home:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js","common:widget\/js\/util\/event\/event.js","common:widget\/js\/ui\/dialog\/dialog.js","common:widget\/js\/util\/template\/template.js","common:widget\/js\/util\/log\/log.js","home:widget\/partner\/fullpage\/jquery.fullPage.js"]},"home:widget\/recommend\/recommend.js":{"pkg":"home:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js","common:widget\/js\/util\/log\/log.js"]},"home:widget\/slogan\/slogan.js":{"pkg":"home:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js","common:widget\/js\/util\/event\/event.js","common:widget\/js\/ui\/tip\/tip.js","common:widget\/js\/logic\/sign-in\/sign-in.js","common:widget\/js\/util\/log\/log.js"]}},"pkg":{"common:p0":{"url":"https:\/\/iknowpc.bdimg.com\/static\/common\/pkg\/more.22db732.js","has":["common:widget\/bottom-ask\/bottom-ask.js","common:widget\/css\/fonts\/iconfont.js","common:widget\/css\/fonts\/iconfont.min.js","common:widget\/footer-new\/footer-new.js","common:widget\/footer\/footer.js","common:widget\/header-metis\/header.js","common:widget\/menu\/menu.js","common:widget\/search-box-new\/search-box-new.js","common:widget\/userbar-renew\/userbar-renew.js"]},"home:p0":{"url":"https:\/\/iknowpc.bdimg.com\/static\/home\/pkg\/module.88a2276.js","has":["home:widget\/activity\/activity.js","home:widget\/banner\/banner.js","home:widget\/business\/business.js","home:widget\/discussion\/discussion.js","home:widget\/influence\/influence.js","home:widget\/js\/lazyload\/lazyload.js","home:widget\/js\/render-header\/render-header.js","home:widget\/partner\/fullpage\/jquery.fullPage.js","home:widget\/partner\/js\/dom-ready.js","home:widget\/recommend\/recommend.js","home:widget\/slogan\/slogan.js"]}}});</script><script type="text/javascript" src="https://iknowpc.bdimg.com/static/common/pkg/lib.33719ed.js"></script><script type="text/javascript" src="https://iknowpc.bdimg.com/static/common/pkg/commonjs.0285675.js"></script><script type="text/javascript">
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;			window['__abbaidu_2016_subidgetf'] = function () {
				if (window.location.href.indexOf("/question") == 0) {
					return 'iknow-pc-qb';
				}
				return 'iknow-pc-other';
			}
			window['__abbaidu_2016_cb'] = function (responseData) {
        		
   			};
		}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;    require.async(['common:widget/userbar-renew/userbar-renew']);
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;    require.async(['common:widget/search-box-new/search-box-new']);
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;    require.async(['common:widget/menu/menu'], function(menu){
    	menu.init();
    });
    // 导航menu可用时间打点
    alog && alog('speed.set', 'c_menu', +new Date); alog.fire && alog.fire("mark");
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;    F.context('signInTime',{
        year: '2019',
        month: '10',
        day: '06'
    });
    F.context('realTimeData',{"finishCount":"552001485","onlineUserCount":"87221","onlineDoctorCount":"17279","zhimaCount":"11744961","partnerCount":"65975","teamCount":"11419","uadminCount":"8042","mavinCount":"22313"});

	require.async(['home:widget/slogan/slogan'],function(slogan){
		slogan.init();
	});
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;	require.async(['home:widget/banner/banner'],function(banner){
		banner.init();
	});
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;	require.async(['home:widget/discussion/discussion'],function(discussion){
		discussion.init();
	});
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;	require.async(['home:widget/recommend/recommend'],function(recommend){
		recommend.init();
	});
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;	require.async(['home:widget/influence/influence'],function(influence){
		influence.init();
	});
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;	require.async(['home:widget/activity/activity'],function(activity){
		activity.init();
	});
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;	require.async(['home:widget/business/business'],function(business){
		business.init();
	});
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;    require('common:widget/js/logic/ie-prompt/ie-prompt');
    require.async(['common:widget/footer-new/footer-new'], function(footer) {
        footer.init();
    });
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;        require.async(['common:widget/lib/jquery/jquery','common:widget/js/util/log/log','home:widget/js/render-header/render-header'], function($, log, renderHeader) {
            $(function() {
                // 打点首页用户可操作时间
                alog('speed.set', 'drt', +new Date);

                log.init({key:2058, query:'body', action:'click'});

                // pv统计
                log.send({
                    module: 'home',
                    page: 'index',
                    area: 'whole',
                    action: 'pv',
                    type: 2058
                });
                renderHeader.init();
            });
        });
     }();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;								                				require.async(['common:widget/js/logic/dom-ready/dom-ready'], function(D){ D.init([]) });
            }();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;        require.async(["common:widget/js/logic/duration/duration"],function(dur){
            dur.init();
        });
    }();
</script>
<script type="text/javascript">
    require.async(['common:widget/lib/jquery/jquery'], function ($) {
        if (!/chrome|firefox|safari|msie 10|rsv:11|msie [89]/i.test(navigator.userAgent)) {
            return;
        }

        window.BaiduHttps = window.BaiduHttps || {};
        window.BaiduHttps.callbacks = function (data) {
            if (data && data.s === 0) {
                window.supportHttps = 1;
                setTimeout(function () {
                    $('a[href^="http://www.baidu.com/s?"]').each(function (index, item) {
                        var link = $(item).attr('href');
                        if (~link.indexOf('?wd=') || ~link.indexOf('&wd=')) {
                            link = link.replace(/^http/, 'https');
                            $(item).attr('href', link);
                        }
                    });
                }, 2000);
            }
        };

        var script = document.createElement('script');
        script.type = 'text/javascript';
        script.src = 'https://www.baidu.com/con?from=zhidao';
        document.body.appendChild(script);
    });
</script>


<script async="" src="https://dlswbr.baidu.com/heicha/mw/abclite-2016-s.js"></script>
</html>
