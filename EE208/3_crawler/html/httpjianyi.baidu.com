<!doctype html>
<html lang="zh-CN">
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?fb481430f1a5a6c7044229532823b9fd";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>


    
<head>
    <meta charset="UTF-8" />
    <meta name="baidu-site-verification" content="GaTo5YnIV9" />
    <title>百度用户服务中心-首页</title>
    <meta name="keywords" content="百度服务中心、百度意见反馈、百度投诉反馈、百度倾听、百度帮助中心、百度产品投诉、百度产品意见">
    <meta name="description" content="百度服务中心是百度客服官方网站，为您解决使用百度产品过程中遇到的问题，帮助用户更了解百度，也让百度更懂用户。">
    <link rel="shortcut icon" href="/resources/images/favicon.ico"/>
    



        <link type="text/css" rel="stylesheet" href="/resources/pc/css/normalize.min.css?timestamp=20181226" />
    <link type="text/css" rel="stylesheet" href="/resources/pc/css/global.min.css?timestamp=20181226" />
        
        <link type="text/css" rel="stylesheet" href="/resources/pc/css/index.min.css?timestamp=20181226" />
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="/resources/pc/js/lib/tangram-2.0.2.1.min.js"></script>
    <!--[if (!IE)|(gte IE 9)]><!-->
    <script type="text/javascript" src="/resources/pc/js/lib/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="https://passport.baidu.com/passApi/js/uni_login_wrapper.js?cdnversion=201910061433"></script>
            <script type="text/javascript" src="/resources/pc/js/dist/common.min.js?timestamp=20181226"></script>
        <!--<![endif]-->
    <!--[if lt IE 9]>
    <script type="text/javascript" src="/resources/js/lib/jquery-1.10.1.min.js"></script>
    <script type="text/javascript" src="/resources/js/common.js"></script>
    <![endif]-->
    <script type="text/javascript">
        $(function () {
            login.init('https://passport.baidu.com', 'http://help.baidu.com/resources/html/jump.html', 'service_feedback');
        });
    </script>
</head>
<body>

    

<div class="header clear">
    <div class="header-container">
        <div class="logo">
            <a href="/index"><span class="logo-span"></span></a>
        </div>
        <div class="slogan">
            <span class="slogan-span"></span>
        </div>
        <form class="search-form" action="/search" name="f" id="searchForm">
            <input id="search_txt" value="请简单描述您遇到的问题" placeholder="请简单描述您遇到的问题" type="text" class="search-key" x-webkit-speech="true"  name="keywords" autocomplete="off"/>
            <button id="searchbutton" class="search-btn" type="submit" value=""></button>
            <ul id="searchSuggest" class="suggestion" style="display:none;"></ul>
        </form>
        <div class="hotword">
                                            <a href="/search?keywords=%E7%99%BE%E5%BA%A6%E5%B8%90%E5%8F%B7%E8%A2%AB%E5%B0%81%E7%A6%81">百度帐号被封禁</a>
                                            <a href="/search?keywords=%E5%A6%82%E4%BD%95%E4%B8%BE%E6%8A%A5%E7%BD%91%E7%AB%99">如何举报网站</a>
                                            <a href="/search?keywords=%E6%8A%95%E8%AF%89%E4%BE%B5%E6%9D%83%E4%BF%A1%E6%81%AF">投诉侵权信息</a>
                                            <div style="height: 30px"></div>
                                <a href="/search?keywords=%E7%99%BE%E5%BA%A6%E5%B8%90%E5%8F%B7%E8%A2%AB%E7%9B%97">百度帐号被盗</a>
                                            <a href="/search?keywords=%E5%B8%90%E5%8F%B7%E7%94%B3%E8%AF%89%E6%9C%AA%E9%80%9A%E8%BF%87">帐号申诉未通过</a>
                                            <a href="/search?keywords=%E8%B4%B4%E5%90%A7%E8%B4%B4%E5%AD%90%E8%A2%AB%E5%88%A0">贴吧贴子被删</a>
                                            <a href="/search?keywords=%E5%88%A0%E9%99%A4%2F%E6%9B%B4%E6%96%B0%E5%BF%AB%E7%85%A7">删除/更新快照</a>
                    </div>
        <div class="loginfo">
                        <div class="unlogin">
                <a href="#" id="btnLogin">登录</a>
                <a href="https://passport.baidu.com/v2/?reg&tpl=service_feedback&u=">注册</a>
            </div>
                    </div>
    </div>
</div>
<div class="sidebar">
    <div class="item item-weixin"><div class="weixin-code"></div></div>
    <div class="item item-weibo"><div class="weibo-code"></div></div>
    <a href="javascript:window.scroll(0,0);"><div class="item item-zhiding"></div></a>
</div>
<div class="service-support-container clear">
    <h1>服务支持</h1>
    <div class="serv-list">
        <div class="serv-item">
            <a href="https://passport.baidu.com/center" target="_blank">
                <div class="item-zhanghao"></div>
                <h3>账号安全</h3>
                <p>密码及密保工具管理</p>
                <p>身份认证及账户关联</p>
                <p>账户申诉及在线客服</p>
            </a>
        </div>
        <div class="serv-item">
            <a href="/zhifu" target="_blank">
                <div class="item-zhifu"></div>
                <h3>支付相关</h3>
                <p>VIP用户问题反馈</p>
                <p>24小时客服查询</p>
                <p>VIP开通页面直达</p>
            </a>
        </div>
        <div class="serv-item">
            <a href="http://baozhang.baidu.com/guarantee/" target="_blank">
                <div class="item-quanyi"></div>
                <h3>权益保障</h3>
                <p>假冒官网/资质/欺诈蒙受经济损失</p>
                <p>申请保障金及维权相关支持</p>
                <p>保障网民的合法消费权益</p>
            </a>
        </div>
        <div class="serv-item">
            <a href="/jubao" target="_blank">
                <div class="item-buliang"></div>
                <h3>不良信息举报</h3>
                <p>垃圾广告信息举报</p>
                <p>色情反动有害信息举报</p>
                <p>危险品赌博信息举报</p>
            </a>
        </div>
    </div>
</div>
<div class="main-page" id="mainPage">
    <div class="main">
        <h1>选择需要服务的产品</h1>
        <div class="top-list">
            <div class="default-list" id="contTopProdList">
                <img src="/resources/pc/images/bg/b-loading.gif"/>
            </div>
            <div id="contMoreProdList">
            </div>
        </div>
    </div>
</div>

<div class="network-security-container clear">
    <h1>网络安全</h1>
    <div class="network-video" id="contVideoList">
        <img src="/resources/pc/images/bg/b-loading.gif"/>
    </div>
    <div class="network-post" id="contPostList">
    </div>
</div>
<div class="contact-container clear">
    <h1>其他联系我们的渠道</h1>
    <div class="contact-list">
        <div class="contact-item">
            <div class="item-weixin item-icon"></div>
            <div class="item-hover item-weixin-hover"></div>
            <h2>关注百度微信号</h2>
        </div>
        <div class="contact-item">
            <div class="item-weibo item-icon"></div>
            <div class="item-hover item-weibo-hover"></div>
            <h2>访问百度微博公众号</h2>
        </div>
    </div>
</div>


    <div class="footer">
	<div class="footer-container">
		<div class="about">
			<a href="http://home.baidu.com" target="_blank">关于百度</a>
			<a href="http://ir.baidu.com/phoenix.zhtml?c=188488&p=irol-irhome" target="_blank">ABOUT BAIDU</a>
			<a href="http://www.baidu.com/duty/" target="_blank">使用百度前必读</a>
            <a href="/statement">举报受理声明</a>
            <a href="/personalinformation">个人信息咨询</a>
		</div>
		<p>京ICP证030173号&emsp;京网文[2013]0934-983号&emsp;Copyright &copy;<script>document.write((new Date()).getFullYear());</script> Baidu</p>
	</div>
</div>
<script>var sugapi="http://"+window.location.host;</script>
<script type="text/javascript" src="/resources/pc/js/src/sug.js"></script>



<!--[if lt IE 9]>

<script type="text/javascript" src="/resources/js/commonFankui.js"></script>
<script>
    var html = '<div class="browser-up-tip">您的<span style="color:red;">浏览器版本太低</span>，为了给您带来更好的体验，建议您的浏览器升级为<a href="http://rj.baidu.com/soft/detail/14744.html?ald" target="_blank">谷歌浏览器</a>或者<a href="http://rj.baidu.com/soft/detail/11843.html?ald" target="_blank">Firefox火狐浏览器</a>，如需<a href="/index2">继续访问</a>将前往低版本服务中心平台，谢谢!</div>';
    Popup.init({
        type: 'html',
        content: html,
        width: 560,
        height: 350
    });
    Popup.overlay.unbind('click');
    $('#popupTitle').find('.pop-ico-close').remove();
</script>
<![endif]-->

    <script type="text/javascript" src="/resources/pc/js/dist/index.min.js?timestamp=20181226"></script>
    
</body>


</html>