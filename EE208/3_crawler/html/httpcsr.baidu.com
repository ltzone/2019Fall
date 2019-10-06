<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<meta name="author" content="http://www.fractal-technology.com">

<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Cache-Control" content="no-cache">


<meta name="keywords" content="一直以来，百度秉持“用科技让复杂的世界更简单”理念，重视企业社会责任，用领先的技术赋能社会、赋能行业，帮助用户成长，推动人工智能技术创新与普惠。。" />
	<meta name="description" content="一直以来，百度秉持“用科技让复杂的世界更简单”理念，重视企业社会责任，用领先的技术赋能社会、赋能行业，帮助用户成长，推动人工智能技术创新与普惠。" />
<script src="/Public/static/themes/js/jquery-1.9.1.min.js"></script>
<script src="/Public/static/themes/js/jquery.mCustomScrollbar.js"></script>

<title>百度CSR - 一直以来，百度秉持“用科技让复杂的世界更简单”理念，重视企业社会责任，用领先的技术赋能社会、赋能行业，帮助用户成长，推动人工智能技术创新与普惠。。</title>




<link href="/Public/static/themes/css/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css" />
<link href="/Public/static/themes/css/global.css" rel="stylesheet" type="text/css" />
<link href="/Public/static/themes/css/fix.css" rel="stylesheet" type="text/css" />

<script src="/Public/static/themes/js/fun.js"></script>


<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?35bf841fdf521900762b7757fcde0b20";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
</head>

<body>
        
                <script>
        $(function(){
            $('.x-header .widget-area-edit-bg,.x-header .widget-area-edit-title').remove();
            $('.x-footer .widget-area-edit-bg,.x-footer .widget-area-edit-title').remove();
            $('.rightNav .widget-area-edit-bg,.rightNav .widget-area-edit-title').remove();
        });

        </script>
                <style>
        .empty-data{ width:100%; font-size:25px; padding-top:8%; padding-bottom:8%; text-align: center;}
        </style>
    <style>
#myalert{ display:none; }
.recruit .block1{ height: auto}
.layer{background:url(/Public/static/themes/image/con_mask.png);;position:fixed;left:0;right: 0;top:0;bottom: 0;width:100%;height:100%;z-index: 1000000;}
.layer .myalert{padding:30px;background:#fff;width:190px;position:absolute;margin-top:-100px;top:50%;left:50%;margin-left:-120px;text-align:center; z-index: 100000}
.layer .guan{background:url(/Public/static/themes/image/clos.png) no-repeat center; display:block;width:23px;height:23px;position:absolute;top:10px;right:10px;}
.layer .text{padding-bottom:15px;font-size:16px;color:#474747;}
.layer .button{background:none;border:1px solid #bbbbbb;width:91px;height:29px;font:14px/100% "Microsoft YaHei", Arial, Tahoma, Helvetica, sans-serif;color: #707070;}
</style>
<div id="myalert" class="layer">
    <div class="myalert">
        <a href="javascript:;" onclick="myalert_hide();" class="guan"></a>
        <div class="text">请输入关键字</div>
        <a><button class="button" id="my_ok" style="cursor:pointer ;opacity: 1;transform: translateY(0px);">确定</button></a>
    </div>
</div>
<script>
function my_alert(text,callback) {
    $('#myalert').show();
    $('#myalert .myalert div').html(text);

    $('#my_ok').click( function() {
        $('#myalert').hide();

        if (typeof(callback) == 'function') {
            callback();
            return false;
        }
    });
}

function myalert_hide(){
    $('#myalert').hide();
}
</script>
    <div class="header">
    <div class="logo"><a href="/"><img src="/Uploads/Picture/2018/11/28/s5bfe2aae6010b.png" alt="" title=""></a></div>    <div class="nav_main"><a href="/" class="cur" ><i>首页</i><em>首页</em></a><a href="/respons.html"  ><i>责任故事</i><em>责任故事</em></a><a href="/information.html"  ><i>信息披露</i><em>信息披露</em></a><a href="http://innovation.baidu.com" target="_blank"  ><i>责任创新计划</i><em>责任创新计划</em></a><a href="/download.html"  ><i>资料下载</i><em>资料下载</em></a><a href="/fadeback.html"  ><i>意见反馈</i><em>意见反馈</em></a></div>    <div class="foot">
            <div class="nav_foot" edit_params="title1Show%3D1%26title1Max%3D20%26title2Show%3D1%26showLink%3D1%26title2Max%3D20%26showLink2%3D1"><a  class="ico1" href="http://home.baidu.com/" target="_blank" >关于我们</a>
<i>|</i>
<a  class="ico2" href="/contact.html" >联系我们</a></div>        <div class="copy">Copyright Reserved © 2016 百度<br>版权所有</div>
    </div>
    <div class="menu">
        <div class="inner"><i></i><i></i><i></i></div>
    </div>
</div>
        <script>
var ua = navigator.userAgent;
var ipad = ua.match(/(iPad).*OS\s([\d_]+)/),
    isIphone = !ipad && ua.match(/(iPhone\sOS)\s([\d_]+)/),
    isAndroid = ua.match(/(Android)\s+([\d.]+)/),
    isMobile = isIphone || isAndroid;
    if(isMobile) {
        location.href = '/respons.html';
    }
</script>
<div class="body">
    <div class="home"><div class="bgs">
<div class="item" style="background-image:url(/Uploads/Picture/2018/11/28/s5bfe2c5094d07.jpg);"></div><div class="item" style="background-image:url(/Uploads/Picture/2018/11/24/s5bf947ec1c27d.jpg);"></div><div class="item" style="background-image:url(/Uploads/Picture/2018/11/24/s5bf949c1d142d.jpg);"></div></div>

<div class="frame">
<div class="child d1">
    <div class="bg" style="background-image:url(/Uploads/Picture/2018/11/24/s5bf946ff870d7.jpg);"></div>
    <div class="text"><a href="/zr_detail/524.html">
        <div class="h">守卫更多民众眼部健康</div>
        <div class="p">ai眼底筛查系统</div>
        <span class="more">查看详情</span></a>
    </div>
</div><div class="child d2">
    <div class="bg" style="background-image:url(/Uploads/Picture/2018/11/24/s5bf947f8e28ba.jpg);"></div>
    <div class="text"><a href="/zr_detail/525.html">
        <div class="h">全球首个ai智能公园</div>
        <div class="p">ai公园</div>
        <span class="more">查看详情</span></a>
    </div>
</div><div class="child d3">
    <div class="bg" style="background-image:url(/Uploads/Picture/2018/11/24/s5bf949cb6d017.jpg);"></div>
    <div class="text"><a href="/zr_detail/523.html">
        <div class="h">技术温暖回家路</div>
        <div class="p">ai寻人</div>
        <span class="more">查看详情</span></a>
    </div>
</div>
</div></div></div>
<script src="/Public/static/themes/js/global.js"></script>
<script>
$(".frame .child").hover(
    function(){
        $(".bgs .item").removeClass("s");
        $(".bgs .item").eq($(this).index()).addClass("s");
    }
)
</script>

</body>
</html>