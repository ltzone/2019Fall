<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>首页-百度营销中心</title>
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="screen-orientation" content="portrait">
<meta name="x5-fullscreen" content="true">
<meta name="360-fullscreen" content="true">
<meta content="telephone=no" name="format-detection">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="百度营销中心,营销,搜索推广,市场营销,营销课程,营销案例,网站推广,推广优化,关键词优化,网站排名,在线学习,销售技巧和话术,信息流,网盟">
<meta name="description" content="百度营销中心是百度为企业家精心打造的一站式资讯服务平台，全面覆盖百度推广所涉及的前沿动态、产品介绍、解决方案。帮助企业在百度推广的每个环节，把握专业营销信息，找到最优推广策略，全线助力您的营销推广。">
<link href="https://www.baidu.com/favicon.ico" rel="shortcut icon">
<link rel="stylesheet" type="text/css" href="/new/Public/static/Home/css/animate.css?v=64c532e36e5403df70a70b7a01205c9e">
<link rel="stylesheet" type="text/css" href="/new/Public/static/Home/css/layer.min.css?v=64c532e36e5403df70a70b7a01205c9e">
<script>
var _hmt = _hmt || [];
(function() {
    var hm = document.createElement('script');
    hm.src = 'https://hm.baidu.com/hm.js?e1b156b0748bcb794a4a655115f1d5d8';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(hm, s);
})();
</script>
<link rel="stylesheet" href="/new/Public/static/Home/css/public.css?v=64c532e36e5403df70a70b7a01205c9e">
<script src="/new/Public/static/Home/js/jquery-3.2.1.min.js?v=64c532e36e5403df70a70b7a01205c9e"></script>
<script type="text/javascript" src="/new/Public/static/Home/js/layer.min.js?v=64c532e36e5403df70a70b7a01205c9e"></script>


    <link rel="stylesheet" type="text/css" href="/new/Public/static/Home/css/swiper.min.css?v=64c532e36e5403df70a70b7a01205c9e">
    <link rel="stylesheet" href="/new/Public/static/Home/css/index.css?v=64c532e36e5403df70a70b7a01205c9e">
    <style type="text/css" media="screen">
        .nav-index-box {
            position: relative;
            /*z-index: 600;*/
        }
        .section-left .index-video-course {
            position: relative;
            /*z-index: 600;*/
        }
    </style>
    <!-- 左侧菜单AB-test -->
    <!-- <script>
    window.bdABTestConfig = {
        sample: 0.7,
        cGroup: ['http://yingxiao.baidu.com/new/home/index/indexa'],
        tGroup: ['http://yingxiao.baidu.com/new/home/index/indexb']
    };
    Array.prototype.in_array = function (e) {
        var r = new RegExp(',' + e + ',');
        return (r.test(',' + this.join(this.S) + ','));
    };
    (function () {
        var refer = document.referrer.split('?', 1)[0];
        var cGroups = window.bdABTestConfig.cGroup;
        var tGroups = window.bdABTestConfig.tGroup;
        if (!cGroups.in_array(refer) && !tGroups.in_array(refer)) {
            document.write('<script charset="utf-8" src="https://absample.baidu.com/static/sampling-1.1.js"><\/script>');
        }
    })();
    </script> -->
</head>

<body>
    <div class="head-wrap">
    <div class="head clearfix">
        <a class="logo-con" href="/new/home/index/index">
                    <div class="logo-item logo-baidu"></div>
                    <!--<div class="logo-item logo-text"></div>-->
                </a>
                    <div class="top-nav">
            <a href="http://yingxiao.baidu.com/new/home?ly=nav_list" class="top-nav-item top-nav-item1">首页</a>
                                            <a href="http://yingxiao.baidu.com/new/home/help?ly=nav_list" class="top-nav-item">帮助中心</a>                        <a href="http://yingxiao.baidu.com/new/topic/607/index?ly=nav_list" class="top-nav-item">产品图谱</a>                        <a href="http://yingxiao.baidu.com/new/home/product_article/lists?ly=nav_list" class="top-nav-item">文章</a>                        <a href="http://yingxiao.baidu.com/new/home/learn_home/index?ly=nav_list" class="top-nav-item">内训</a>                        <a href="http://yingxiao.baidu.com/new/home/index/skip/tggl?ly=nav_list" class="top-nav-item">开启百度营销</a>        </div>
        <div class="search-box clearfix">
            <form action="/new/home/search/search" method="get" class="search-post">
                <input type="text" class="search-inp head-search-inp keyword-text-nav" placeholder="搜索关键词" name="keyword">
                <button class="search-btn head-search-btn search-submit-nav" name="type" type="submit" value="all">
                    <img src="/new/Public/static/Home/img/icons/search-img.png?v=64c532e36e5403df70a70b7a01205c9e" class="search-img">
                    <img src="/new/Public/static/Home/img/icons/search-img-h.png?v=64c532e36e5403df70a70b7a01205c9e" class="search-img-h">
                </button>
            </form>
        </div>
                    <div class="new-login-box">
                <div class="login-box" style="display:block">
                    <span class="login-btn" id="bd-login">登录</span>
                    <a href="https://passport.baidu.com/v2/?reg&tpl=yxscrat&u=http%3A%2F%2Fpro.baidu.com%2Fnew%2F%3Fbbfrom%3DbaiduLogin">注册</a>
                </div>
            </div>
            <!-- <iframe id="login-iframe" src="/new/ApiHome/Consumer/ucLogin" onload="login()" style="display:none"></iframe> -->
            <script type="text/javascript">
                // function login(){
                //     var json_str=$("#login-iframe").contents().find("pre").html();
                //     var data = JSON.parse(json_str);
                //     // console.log(json_str);
                //     // console.log(data);
                //     if(data.code == 0 && data.data.is_login == 1) {
                //         input = HTMLDecode(data.data.input);
                //         $('.new-login-box').html(input);
                //         // if(reloadFlag){
                //         //     window.location.reload();
                //         // }
                //     }
                // }
            </script>
        <script type="text/javascript">
            function HTMLDecode ( input ) { 
                var converter = document.createElement("DIV"); 
                converter.innerHTML = input; 
                var output = converter.innerText; 
                converter = null; 
                return output; 
            }
        </script>
    </div>
</div>

<!-- 卡片活动链接 -->
        <script type="text/javascript">
        var _PUBLIC = '/new/Public';
    </script>
    <script src="/new/Public/activity/active/js/uc-card.js?v=64c532e36e5403df70a70b7a01205c9e"></script></if>
<!-- 有奖调研活动 勿删 -->
<link rel="stylesheet" href="/new/Public/activity/winter2017/css/activityLayer.css?v=64c532e36e5403df70a70b7a01205c9e">
<a target="_blank" href="https://yingxiao.baidu.com/new/topic/599/index?ly=hdicon" id="activity-layer" class="activity-layer-anim">
    <img src="/new/Public/activity/winter2017/img/diaoyan.png" class="activity-layer-anim">
</a>
<p class="staus-p" data-staus="0" id='staus-p'></p>
    <script type="text/javascript">
(function() {
    var activityStaus = document.getElementById('staus-p').getAttribute('data-staus');
    var poster = document.getElementById('activity-layer');
    if (activityStaus === '1') {
        poster.style.display = 'block';
    } else {
        poster.style.display = 'none';
    }
}());
</script>
    <div class="section clearfix">
        <!-- 左侧导航 -->
        <div class="nav-index-box">
            <div class="first-level-box">
                <div class="first">
                    <div class="first-level">
                        <div class="first-level-title">
                            <img src="/new/Public/static/Home/img/icons/nav-img-01.png?v=64c532e36e5403df70a70b7a01205c9e" class="first-level-img">
                            <span>效果推广</span>
                        </div>
                        <div class="second-level clearfix">
                            <a target="_blank" href="/new/home/product_union/index/id/2?ly=xgtg" class="second-level-title">搜索推广</a>
                            <a target="_blank" href="/new/home/product_union/index/id/1?ly=xgtg" class="second-level-title">原生竞价</a>
                            <!-- <a target="_blank" href="/new/home/product_union/index/id/10?ly=xgtg" class="second-level-title second-level-title-right">&nbsp;&nbsp;&nbsp;百意</a> -->
                            <a target="_blank" href="/new/home/product/product/id/39?ly=xgtg" class="second-level-title">百通</a>
                            <a target="_blank" href="/new/home/product_union/index/id/15?ly=xgtg" class="second-level-title">本地直通车</a>
                        </div>
                    </div>
                    <div class="open-level-box table-level-box open-level-box1 clearfix">
                        <!-- <img src="/new/Public/static/Home/img/nav-01.png"> -->
                        <table>
                            <tr class="table-trbg">
                                <td rowspan="2">效果推广</td>
                                <td rowspan="2">流量属性</td>
                                <td colspan="4">营销场景</td>
                            </tr>
                            <tr class="table-trbg">
                                <td>获取线索</td>
                                <td>推广商品/<br>服务</td>
                                <td>推广APP</td>
                                <td>推广门店</td>
                            </tr>
                            <tr>
                                <td><a target="_blank" href="/new/home/product_union/index/id/2?ly=xgtg_h" >搜索推广</a></td>
                                <td>搜索流量</td>
                                <td><img class="table-star" src="/new/Public/static/Home/img/table-star.png"></td>
                                <td><img class="table-circular" src="/new/Public/static/Home/img/table-circular.png"></td>
                                <td><img class="table-circular" src="/new/Public/static/Home/img/table-circular.png"></td>
                                <td><img class="table-circular" src="/new/Public/static/Home/img/table-circular.png"></td>
                            </tr>
                            <tr>
                                <td><a target="_blank" href="/new/home/product_union/index/id/1?ly=xgtg_h" >原生竞价</a></td>
                                <td>信息流</td>
                                <td><img class="table-star" src="/new/Public/static/Home/img/table-star.png"></td>
                                <td><img class="table-circular" src="/new/Public/static/Home/img/table-circular.png"></td>
                                <td><img class="table-circular" src="/new/Public/static/Home/img/table-circular.png"></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><a target="_blank" href="/new/home/product_union/index/id/10?ly=xgtg_h" >百意</a></td>
                                <td>联盟流量</td>
                                <td><img class="table-star" src="/new/Public/static/Home/img/table-star.png"></td>
                                <td><img class="table-circular" src="/new/Public/static/Home/img/table-circular.png"></td>
                                <td><img class="table-circular" src="/new/Public/static/Home/img/table-circular.png"></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><a target="_blank" href="/new/home/product_union/index/id/13?ly=xgtg_h" >知识营销</a></td>
                                <td>问答流量</td>
                                <td><img class="table-star" src="/new/Public/static/Home/img/table-star.png"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><a target="_blank" href="/new/home/product_union/index/id/15?ly=xgtg_h" >本地直通车</a></td>
                                <td>糯米+移动搜索</td>
                                <td><img class="table-circular" src="/new/Public/static/Home/img/table-circular.png"></td>
                                <td><img class="table-circular" src="/new/Public/static/Home/img/table-circular.png"></td>
                                <td></td>
                                <td><img class="table-star" src="/new/Public/static/Home/img/table-star.png"></td>
                            </tr>
                            <tr>
                                <td class="table1-wid"><a target="_blank" href="/new/home/product/product/id/39?ly=xgtg_h" >百通</a></td>
                                <td class="table1-wid">百度系应用商城+分发联盟<br>+信息流</td>
                                <td class="table1-fine"></td>
                                <td class="table1-fine"></td>
                                <td class="table1-fine"><img class="table-star" src="/new/Public/static/Home/img/table-star.png"></td>
                                <td class="table1-fine"></td>
                            </tr>
                        </table>
                        <div class="bottom-tip">核心应用场景<img class="table-star" src="/new/Public/static/Home/img/table-star.png">推荐应用场景<img class="table-circular" src="/new/Public/static/Home/img/table-circular.png"></div>
                    </div>
                </div>
                <div class="first">
                    <div class="first-level">
                        <div class="first-level-title">
                            <img src="/new/Public/static/Home/img/icons/nav-img-02.png?v=64c532e36e5403df70a70b7a01205c9e" class="first-level-img">
                            <span>品牌展示</span>
                        </div>
                        <div class="second-level clearfix">
                            <a target="_blank" href="/new/home/product_union/index/id/5?ly=ppzs" class="second-level-title">品牌专区</a>
                            <a target="_blank" href="/new/home/product_union/index/id/13?ly=xgtg" class="second-level-title">知识营销</a>
                            <a target="_blank" href="/new/home/product_union/index/id/1?ly=ppzs" class="second-level-title">原生合约</a>
                            <a target="_blank" href="/new/home/product/product/id/105?ly=ppzs" class="second-level-title">百度开屏</a>
                            <!-- <a target="_blank" href="/new/home/product/product/id/106?ly=ppzs" class="second-level-title">品牌序章</a> -->
                            <!-- <a target="_blank" href="/new/home/product_union/index/id/6?ly=ppzs" class="second-level-title second-level-title-right">品牌华表</a> -->
                            <!-- <a target="_blank" href="/new/home/product_union/index/id/7?ly=ppzs" class="second-level-title">品牌起跑线</a> -->
                            <a target="_blank" href="/new/home/product_union/index/id/17?ly=ppzs" class="second-level-title">定制化品牌产品</a>
                            <a target="_blank" href="/new/home/product_union/index/id/16?ly=ppzs" class="second-level-title">聚屏</a>
                        </div>
                    </div>
                    <div class="open-level-box table-level-box open-level-box4">
                        <!-- <img src="/new/Public/static/Home/img/nav-02.png"> -->
                        <table class="table02">
                            <tr class="table-trbg">
                                <td>品牌展现</td>
                                <td class="table2-center">流量属性</td>
                                <td>展示场景</td>
                                <td>流量规模</td>
                                <td>购买方式</td>
                            </tr>
                            <tr>
                                <td class="table2-weight"><a target="_blank" href="/new/home/product_union/index/id/5?ly=ppzs_h" >品牌专区</a></td>
                                <td rowspan="3" class="table2-center">搜索流量</td>
                                <td>品牌词搜索结果首位霸屏</td>
                                <td>
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                </td>
                                <td>CPT</td>
                            </tr>
                            <tr>
                                <td><a target="_blank" href="/new/home/product_union/index/id/7?ly=ppzs_h" >品牌起跑线</a></td>
                                <td>简版品牌专区</td>
                                <td>
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                </td>
                                <td>CPT</td>
                            </tr>
                            <tr>
                                <td><a target="_blank" href="/new/home/product_union/index/id/6?ly=ppzs_h" >品牌华表</a></td>
                                <td>品类词搜索结果PC端右侧</td>
                                <td>
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                </td>
                                <td>CPT</td>
                            </tr>
                            <tr>
                                <td class="table2-weight"><a target="_blank" href="/new/home/product_union/index/id/1?ly=ppzs_h" >原生合约</a></td>
                                <td class="table2-center">信息流</td>
                                <td>指定人群保量或按位置包断</td>
                                <td>
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                </td>
                                <td>CPM/CPT</td>
                            </tr>
                            <tr>
                                <td class="table2-weight"><a target="_blank" href="/new/home/product_union/index/id/16?ly=ppzs_h" >聚屏</a></td>
                                <td class="table2-center">线下屏</td>
                                <td>OTT/出行/楼宇/影院等场景</td>
                                <td>
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                </td>
                                <td>CPM/CPT</td>
                            </tr>
                            <tr>
                                <td class="table2-weight"><a target="_blank" href="/new/home/product/product/id/105?ly=ppzs_h" >手百开屏</a></td>
                                <td rowspan="2" class="table2-center">APP开屏</td>
                                <td>百度APP</td>
                                <td>
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                </td>
                                <td>CPM/CPT</td>
                            </tr>
                            <tr>
                                <td><a target="_blank" href="/new/home/product/product/id/106?ly=ppzs_h" >品牌序章</a></td>
                                <td>百度系及联盟精选APP</td>
                                <td>
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                </td>
                                <td>CPT</td>
                            </tr>
                            <tr>
                                <td class="table2-fine"><a target="_blank" href="/new/home/product_union/index/id/17?ly=ppzs_h" >定制化品牌产品</a></td>
                                <td class="table2-fine table2-center">垂直频道流量</td>
                                <td class="table2-wid">垂直频道全场景定制</td>
                                <td class="table2-fine">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                    <img class="table-star" src="/new/Public/static/Home/img/table-star.png">
                                </td>
                                <td class="table2-fine">CPM/CPT</td>
                            </tr>
                        </table>
                        <div class="bottom-tip01">
                            <span><img class="table-spot table-spot-mar" src="/new/Public/static/Home/img/table-spot.png">CPT：按时长付费</span>
                            <span><img class="table-spot" src="/new/Public/static/Home/img/table-spot.png">CPM：千人展现成本</span>
                            <span><img class="table-spot" src="/new/Public/static/Home/img/table-spot.png">品牌衍生词示例：宝马X5价格、宝马X5好不好</span>
                            <span><img class="table-spot" src="/new/Public/static/Home/img/table-spot.png">品类词示例：SUV、越野车</span>
                        </div>
                    </div>
                </div>
                <div class="first">
                    <div class="first-level">
                        <div class="first-level-title">
                            <img src="/new/Public/static/Home/img/icons/nav-img-03.png?v=64c532e36e5403df70a70b7a01205c9e" class="first-level-img">
                            <span>智能解决方案</span>
                        </div>
                        <div class="second-level clearfix">
                            <a target="_blank" href="/new/home/product/product/id/90?ly=znjjfa" class="second-level-title">商品中心</a>
                            <a target="_blank" href="/new/home/index/skip/DMP?ly=znjjfa" class="second-level-title">DMP智选</a>
                            <a target="_blank" href="/new/home/product_union/index/id/4?ly=znjjfa" class="second-level-title">oCPC</a>
                            <a target="_blank" href="/new/home/product_union/index/id/3?ly=znjjfa" class="second-level-title">动态商品广告</a>
                            <a target="_blank" href="/new/home/product/product/id/150?ly=znjjfa" class="second-level-title">智能小程序</a>
                            <!-- <a target="_blank" href="/new/home/product/product/id/124?ly=znjjfa" class="second-level-title second-level-title-right">商家号</a> -->
                            <a target="_blank" href="/new/home/product/product/id/126?ly=znjjfa" class="second-level-title">Omni Marketing</a>
                        </div>
                    </div>
                    <div class="open-level-box table-level-box open-level-box2">
                        <!-- <img src="/new/Public/static/Home/img/nav-03.png"> -->
                        <table class="table03">
                            <tr>
                                <td class="table-trbg"><a target="_blank" href="/new/home/product_union/index/id/3?ly=znjjfa_h">动态商品广告</a></td>
                                <td class="table3-pad">
                                动态商品广告（Dynamic Product Ads），围绕商品来实现商品批量投放及千人千面的动态创意生成，一次商品库对接，全域投放动态商品广告。为多商品或服务推广的广告主提供精准、高效的投放解决方案。</td>
                            </tr>
                            <tr>
                                <td class="table-trbg"><a target="_blank" href="/new/home/product_union/index/id/4?ly=znjjfa_h">oCPC</a></td>
                                <td class="table3-pad">
                                oCPC（Optimized Cost per Click），是一种智能模式，同时支持搜索推广和信息流投放。系统基于对广告主转化数据的对接和深度理解，帮助广告主竞得高价值流量，提升投放效率和转化量级，控制转化成本。</td>
                            </tr>
                            <tr>
                                <td class="table-trbg"><a target="_blank" href="/new/home/product/product/id/124?ly=znjjfa_h" >商家号</a></td>
                                <td class="table3-pad">商家号是企业进入百度商业生态的认证账号，帮助企业全方位在百度触达全网用户，为企业沉淀用户、获取流量、塑造品牌。建立企业在百度的长期营销和运营阵地。</td>
                            </tr>
                            <tr>
                                <td class="table-trbg"><a target="_blank" href="/new/home/index/skip/DMP?ly=znjjfa_h">DMP智选</a></td>
                                <td class="table3-pad">
                                百度数据管理平台(Data Management Platform) ，依托百度大脑，汇聚百度、媒体方、广告主等多方数据，深耕数据挖掘，共建营销生态。</td>
                            </tr>
                            <tr>
                                <td class="table-trbg"><a target="_blank" href="/new/home/product/product/id/126?ly=znjjfa_h">Omni Marketing</a></td>
                                <td class="table3-pad">
                                Omni Marketing，即百度全意识整合营销数字平台，是百度品牌营销的全域解决方案。将百度AI技术与整合营销体系结合，覆盖品牌营销的全生命周期，打通消费者品牌决策闭环，升级品牌广告营销。</td>
                            </tr>
                            <tr>
                                <td class="table-trbg"><a target="_blank" href="/new/home/product/product/id/150?ly=znjjfa_h">智能小程序</a></td>
                                <td class="table3-pad">
                                智能小程序，是智能连接人与信息、人与服务、人与万物的开放生态，依托百度App超级内容生态，通过百度AI开放式赋能，精准连接用户，无需下载安装便可享受智慧超前的使用体验。</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="first">
                    <div class="first-level">
                        <div class="first-level-title">
                            <img src="/new/Public/static/Home/img/icons/nav-img-04.png?v=64c532e36e5403df70a70b7a01205c9e" class="first-level-img">
                            <span>营销工具</span>
                        </div>
                        <div class="second-level clearfix">
                            <a target="_blank" href="/new/home/index/skip/bdzs?ly=yxgj" class="second-level-title">百度指数</a>
                            <a target="_blank" href="/new/home/index/skip/bdxy?ly=yxgj" class="second-level-title">百度信誉</a>
                            <a target="_blank" href="/new/home/index/skip/ydtj?ly=yxgj" class="second-level-title second-level-title-right">移动统计</a>
                            <a target="_blank" href="/new/home/index/skip/bdtgAPP?ly=yxgj" class="second-level-title">百度推广APP</a>
                            <a target="_blank" href="/new/home/index/skip/aff?ly=yxgj" class="second-level-title">爱番番</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="banner-box">
            <!-- 轮播图 -->
            <div class="banner">
                <div class="swiper-container banner-swiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                                <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5924?ly=author_essay?hmsr=0005&hmpl=0002?ly=index_banner">
                                    <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-25/5d8b24f5d2229.png" class="banner-img">
                                                                        </a>
                            </div><div class="swiper-slide">
                                <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5914?ly=index_banner">
                                    <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-24/5d89b55932bc1.jpg" class="banner-img">
                                                                        </a>
                            </div><div class="swiper-slide">
                                <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5913?ly=index_banner">
                                    <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-23/5d8881fc4245b.jpg" class="banner-img">
                                                                        </a>
                            </div><div class="swiper-slide">
                                <a target="_blank" href="http://yingxiao.baidu.com/new/topic/607?ly=index_banner">
                                    <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-19/5d8321f09533f.jpg" class="banner-img">
                                                                        </a>
                            </div><div class="swiper-slide">
                                <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5779?ly=index_banner">
                                    <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-18/5d81dfa24078a.png" class="banner-img">
                                                                        </a>
                            </div><div class="swiper-slide">
                                <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5866?ly=index_banner">
                                    <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-09/5d7632b1a13ae.png" class="banner-img">
                                                                        </a>
                            </div>                    </div>
                    <div class="swiper-pagination"></div>
                    <!-- 如果需要导航按钮 -->
                    <div class="banner-prev-btn banner-btn"></div>
                    <div class="banner-next-btn banner-btn"></div>
                </div>
            </div>
            <!-- 轮播图下链接 -->
            <div class="banner-link">
                <a target="_blank" href="http://yingxiao.baidu.com/new/home/case_base/lists?ly=banner_icon" class="banner-link-item" style="width:20%">
                        <img src="https://bdyingxiaocms.cdn.bcebos.com/2018-07-03/5b3af9625f624.png" class="banner-link-img">
                        <p class="banner-link-title">案例库</p>
                    </a><a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/2069?ly=banner_icon" class="banner-link-item" style="width:20%">
                        <img src="https://bdyingxiaocms.cdn.bcebos.com/2018-07-03/5b3af945903f8.png" class="banner-link-img">
                        <p class="banner-link-title">行业洞察</p>
                    </a><a target="_blank" href="http://yingxiao.baidu.com/new/home/product/product/id/104?ly=banner_icon" class="banner-link-item" style="width:20%">
                        <img src="https://bdyingxiaocms.cdn.bcebos.com/2018-07-03/5b3af95a0ff30.png" class="banner-link-img">
                        <p class="banner-link-title">智能营销</p>
                    </a><a target="_blank" href="http://yingxiao.baidu.com/new/topic/613/index?ly=banner_icon" class="banner-link-item" style="width:20%">
                        <img src="https://bdyingxiaocms.cdn.bcebos.com/2018-07-03/5b3af99b67083.png" class="banner-link-img">
                        <p class="banner-link-title">营销地图</p>
                    </a><a target="_blank" href="http://e.baidu.com/news/推广手拉手-双双享豪礼?ly=index_banner?ly=banner_icon" class="banner-link-item" style="width:20%">
                        <img src="https://bdyingxiaocms.cdn.bcebos.com/2018-07-03/5b3af92287b83.png" class="banner-link-img">
                        <p class="banner-link-title">老带新享豪礼</p>
                    </a>            </div>
        </div>
    </div>
    <!-- 图文模块 -->
    <div class="section image-text-box">
    <div class="iamge-text">
        <div class="swiper-container iamge-text-swiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5417?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-07-16/5d2df3cf26d1d.jpg" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">【最新版】百度信息流-百青藤广告产品手册</div>
                                    <div class="image-text-article div-overflow">本文分两部分：第一部分介绍百青藤广告产品优势能力；第二部分主要呈现后台操作指导，包括支持功能、创意尺寸、操作后台细节等。</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5942?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-26/5d8c729fae113.png" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">留言有礼丨如何用二八法则来优化账户关键词？</div>
                                    <div class="image-text-article div-overflow">全文通过分析关键词四象限优化法，详细解析关键词的重要性！</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5924?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-24/5d899806bad23.JPG" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">百度智能小程序联合有赞助力打造品牌经营新阵地</div>
                                    <div class="image-text-article div-overflow">登月计划是百度智能小程序联合有赞，共同推出的商家扶持计划。</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5948?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-30/5d91b22c426b4.png" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">十一放心投！百度信息流投放指导手册</div>
                                    <div class="image-text-article div-overflow">十一期间，百度信息流流量充足，为帮助广告主抓住流量红利，满足各行业营销需求，百度为广告主保驾护航，提供最及时、贴心的投放指导手册。</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5794?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-08-16/5d568ffb4dbba.jpg" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">『基木鱼平台』最新产品介绍</div>
                                    <div class="image-text-article div-overflow">基木鱼平台，可以根据不同客户投放需求，提供多场景解决方案。为不同的用户需求，精准匹配不同的优质连贯内容和服务，充分满足用户所需，同时搭载丰富多元的线索组件，与用户快速建立连接，实现多维度线索沉淀。</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5938?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-26/5d8c37e038c3f.jpg" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">语音识别极速版次数包优惠上线 单次调用低至0.0012元</div>
                                    <div class="image-text-article div-overflow">百度大脑语音方向在后付费基础上，9月正式推出了语音识别极速版的“次数包”售卖方式，相对单次价格更优惠，提供更灵活的支付方式。您可根据业务量级一次性购买对应规格的次数包，购买后一年内有效，免费调用量消耗完毕后扣除次数包额度。</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5941?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-26/5d8c6e3764090.png" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">干货丨账户优化中关键词的四个阶段，带你玩转竞价！</div>
                                    <div class="image-text-article div-overflow">如何判断账户效果的好坏你知道吗？竞价账户的核心—关键词如何优化？</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5943?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-26/5d8c834c7a17c.jpg" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">谢松杰：30Min轻松掌握SEO--知识合集</div>
                                    <div class="image-text-article div-overflow">本期将为大家带来空中课堂高端系列课程【营销度咖说】：《网站说服力：营销型网站策划》、《着陆页：获取网络订单的关键》作者谢松杰，30分钟教你如何掌握SEO。</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5651?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-07-15/5d2c11b86363e.jpg" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">【最新】激励视频产品介绍和投放说明</div>
                                    <div class="image-text-article div-overflow">你将通过本文了解到激励视频是什么，有哪些可借鉴的标杆案例，如何投放以及常见问题解答。</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5936?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-26/5d8c313fdb136.jpg" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">媒介头部资源齐聚第26届中国国际广告节</div>
                                    <div class="image-text-article div-overflow">适逢中华人民共和国成立70周年、新时期广告行业发展40周年之际，第26届中国国际广告节将于2019年10月25-28日在江西南昌隆重开幕。中国国际广告节作为广告行业一年一度的盛会，迄今为止，已经历经37个春秋，可谓中国广告历史的见证者、推动者。</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5937?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-26/5d8c32ebd0b34.jpg" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">人脸识别专项合作伙伴权益</div>
                                    <div class="image-text-article div-overflow">百度人脸识别自2017年对外开放以来，平台活跃开发者13万，公有云日均调用量1亿次，收入年同比增长300%。面对日益增长的市场需求，为了可以更深入服务企业，百度大脑正式发布“人脸识别生态合作伙伴专项计划”。</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5786?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-08-20/5d5b5ff5091fa.jpg" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">『梧桐平台』操作指南 ▪ 站点分析</div>
                                    <div class="image-text-article div-overflow">站点分析，可以分析哪些数据？如何查看各站点数据详情？点击本文，告诉你！</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5768?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-08-16/5d561b542e0e0.jpg" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">律师会员：树立律师个人好品牌</div>
                                    <div class="image-text-article div-overflow">作为律师的你，是否也经常遭遇这种困境？个人品牌影响力小，缺乏权威平台认证背书？线上推广能力弱，缺乏专业推广？律师会员帮你脱离困境，点击获取秘籍吧！</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5939?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-26/5d8c6bb9a1b49.png" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">想跟百度一起玩吗？2019网红品牌代言人大赛招商震撼启动！</div>
                                    <div class="image-text-article div-overflow">诚招项目赞助、宣传合作、网红参赛等各项合作</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5940?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-26/5d8c604a2504b.jpg" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">【百家号】品牌原生图文，为你的品牌打造关键影响力！</div>
                                    <div class="image-text-article div-overflow">拥有百亿级流量的百家号，究竟能为品牌主做些什么呢？品牌图文内容定制+专属写作话题下发，打造品牌原生图文，“从这里影响世界”！（文末附下载）</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/666?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2018-07-24/5b56d2e1a58f1.png" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">T-CPX智能出价工具</div>
                                    <div class="image-text-article div-overflow">T-CPX是一种自动的智能出价优化策略， 以转化行为成本作为优化目标，以机器自动出价方式控制转化成本， 最终达成目标。</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5495?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-06-26/5d130edf09eef.jpg" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">【产品下线】百意下线规划及后续承接说明</div>
                                    <div class="image-text-article div-overflow">本文包括：1、百意资金池余额      2、百意消费数据       3、后续承接产品</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5779?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-08-16/5d56634e49f25.png" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">错过了移动端，可别再折了这波风口！</div>
                                    <div class="image-text-article div-overflow">移动互联网时代，传统营销与互联网的融合已呈现出新型模式，短视频成为新一届宠儿。</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5122?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-06-18/5d0896473ddb9.jpg" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">最新版百度信息流合约广告产品手册【附下载】</div>
                                    <div class="image-text-article div-overflow">百度信息流合约广告用创新差异化的能力帮助实现品牌强曝光，拒绝埋没，让更多人了解你的产品和品牌！文末有产品手册的下载地址哦～</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5935?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-26/5d8c2eda154b6.jpg" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">人脸识别专项合作伙伴标准</div>
                                    <div class="image-text-article div-overflow">百度人脸技术已在各行业场景内，广泛应用落地。同时AI市场应用逐渐成熟，场景更加细分，部分领域已进入大规模商用阶段。我们诚邀各方加入百度大脑人脸生态合作伙伴，让AI技术的创新与应用更简单。</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5946?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-27/5d8dafc9368d9.jpg" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">公测 | 二维码、名片、保险单识别 抢先使用</div>
                                    <div class="image-text-article div-overflow">感谢您长期以来对百度OCR文字识别服务的支持，备受期待的名片识别、二维码识别、保险单识别技术已全面开启公测。无需申请开通权限，即可直接在【控制台】中免费体验该功能。</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5774?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-08-20/5d5b5e87845bb.jpg" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">『爱番番基础版』操作指南 ▪ 线索管理</div>
                                    <div class="image-text-article div-overflow">线索转化的过程你了解吗？主要的潜客来源有哪些？如何对潜客线索进行分配与跟进？跟随小度一起，开启线索管理之旅吧~</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/787?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2018-07-24/5b56d3927c147.png" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">推荐文案功能升级</div>
                                    <div class="image-text-article div-overflow">推广标题的质量直接影响创意的质量，好的文案可以大大提升创意的点击率，提高创意竞价胜出的概率，获取更多的流量，因此推出文案推荐功能。</div>
                                </div>
                            </a>
                        </div>
                    </div><div class="swiper-slide">
                        <div class="image-text-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5775?ly=twlist">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-08-16/5d565c266ab3f.png" class="image-text-img" style="pointer-events: none;">
                                <div class="image-text-content" style="pointer-events: none;">
                                    <div class="image-text-title line-overflow">预算不变，两招让你账户效果翻倍！</div>
                                    <div class="image-text-article div-overflow">一个老生常谈的优化思路，顾名思义，引入更多的流量，阻止无效的流量。此招屡试不爽，小编向来不轻易外传。下面就用一个案例来给大家讲解此招式内的奥秘！</div>
                                </div>
                            </a>
                        </div>
                    </div>            </div>
            <div class="swiper-pagination"></div>
            <!-- 如果需要导航按钮 -->
            <div class="it-prev-btn img-text-btn"></div>
            <div class="it-next-btn img-text-btn"></div>
        </div>
    </div>
</div>
    <div class="section clearfix">
        <div class="section-left">
            <!-- 作者推荐 -->
            <div class="blackboard section-container">
    <div class="module-title">
        <a class="module-title-a" href="/new/home/product_class/lists?ly=zztj">作者推荐</a>
        <div class="replace-btn">
            <img src="/new/Public/static/Home/img/icons/replace.png?v=64c532e36e5403df70a70b7a01205c9e" class="replace-img">换一换
        </div>
    </div>
    <div class="blackboard-content">
            <div class="blackboard-second-title">
                <a target="_blank" href="/new/home/product/product/id/104?ly=yxhbb">
                            <img src="/new/Public/static/Home/img/icons/newspaper-author.png?v=64c532e36e5403df70a70b7a01205c9e" alt="" class="newspaper-icon">
                            <span>百度AI</span></a>
                <a target="_blank" href="/new/home/product/product/id/104?ly=yxhbb" class="more"><span>更多</span><img src="/new/Public/static/Home/img/icons/right-more.png?v=64c532e36e5403df70a70b7a01205c9e" class="right-more-top"></a>
            </div>
            <div class="blackboard-article clearfix">
                <div class="blackboard-item">
                        <a target="_blank" href="/new/home/product/details/id/5946?ly=yxhbb" class="board-title clearfix">
                            <div class="article-date">
                                <div class="month">SEP</div>
                                <div class="day">27</div>
                            </div>
                            <div class="blackboard-label-btn line-overflow">公测 | 二维码、名片、保险单识别 抢先使用</div>
                        </a>
                        <a target="_blank" href="/new/home/product/details/id/5946?ly=yxhbb" class="article-link">
                            <div class="blackboard-text div-overflow">感谢您长期以来对百度OCR文字识别服务的支持，备受期待的名片识别、二维码识别、保险单识别技术已全面开启公测。无需申请开通权限，即可直接在【控制台】中免费体验该功能。</div>
                        </a>
                    </div><div class="blackboard-item">
                        <a target="_blank" href="/new/home/product/details/id/5938?ly=yxhbb" class="board-title clearfix">
                            <div class="article-date">
                                <div class="month">SEP</div>
                                <div class="day">26</div>
                            </div>
                            <div class="blackboard-label-btn line-overflow">语音识别极速版次数包优惠上线 单次调用低至0.0012元</div>
                        </a>
                        <a target="_blank" href="/new/home/product/details/id/5938?ly=yxhbb" class="article-link">
                            <div class="blackboard-text div-overflow">百度大脑语音方向在后付费基础上，9月正式推出了语音识别极速版的“次数包”售卖方式，相对单次价格更优惠，提供更灵活的支付方式。您可根据业务量级一次性购买对应规格的次数包，购买后一年内有效，免费调用量消耗完毕后扣除次数包额度。</div>
                        </a>
                    </div><div class="blackboard-item">
                        <a target="_blank" href="/new/home/product/details/id/5937?ly=yxhbb" class="board-title clearfix">
                            <div class="article-date">
                                <div class="month">SEP</div>
                                <div class="day">26</div>
                            </div>
                            <div class="blackboard-label-btn line-overflow">人脸识别专项合作伙伴权益</div>
                        </a>
                        <a target="_blank" href="/new/home/product/details/id/5937?ly=yxhbb" class="article-link">
                            <div class="blackboard-text div-overflow">百度人脸识别自2017年对外开放以来，平台活跃开发者13万，公有云日均调用量1亿次，收入年同比增长300%。面对日益增长的市场需求，为了可以更深入服务企业，百度大脑正式发布“人脸识别生态合作伙伴专项计划”。</div>
                        </a>
                    </div>            </div>
        </div><div class="blackboard-content">
            <div class="blackboard-second-title">
                <a target="_blank" href="/new/home/product/product/id/226?ly=yxhbb">
                            <img src="/new/Public/static/Home/img/icons/newspaper-author.png?v=64c532e36e5403df70a70b7a01205c9e" alt="" class="newspaper-icon">
                            <span>基木鱼平台</span></a>
                <a target="_blank" href="/new/home/product/product/id/226?ly=yxhbb" class="more"><span>更多</span><img src="/new/Public/static/Home/img/icons/right-more.png?v=64c532e36e5403df70a70b7a01205c9e" class="right-more-top"></a>
            </div>
            <div class="blackboard-article clearfix">
                <div class="blackboard-item">
                        <a target="_blank" href="/new/home/product/details/id/5854?ly=yxhbb" class="board-title clearfix">
                            <div class="article-date">
                                <div class="month">SEP</div>
                                <div class="day">23</div>
                            </div>
                            <div class="blackboard-label-btn line-overflow">风云计划-基木鱼平台Q&amp;A常见问题</div>
                        </a>
                        <a target="_blank" href="/new/home/product/details/id/5854?ly=yxhbb" class="article-link">
                            <div class="blackboard-text div-overflow">基木鱼平台是什么？基木鱼平台常见问题解答</div>
                        </a>
                    </div><div class="blackboard-item">
                        <a target="_blank" href="/new/home/product/details/id/5794?ly=yxhbb" class="board-title clearfix">
                            <div class="article-date">
                                <div class="month">SEP</div>
                                <div class="day">20</div>
                            </div>
                            <div class="blackboard-label-btn line-overflow">『基木鱼平台』最新产品介绍</div>
                        </a>
                        <a target="_blank" href="/new/home/product/details/id/5794?ly=yxhbb" class="article-link">
                            <div class="blackboard-text div-overflow">基木鱼平台，可以根据不同客户投放需求，提供多场景解决方案。为不同的用户需求，精准匹配不同的优质连贯内容和服务，充分满足用户所需，同时搭载丰富多元的线索组件，与用户快速建立连接，实现多维度线索沉淀。</div>
                        </a>
                    </div><div class="blackboard-item">
                        <a target="_blank" href="/new/home/product/details/id/5793?ly=yxhbb" class="board-title clearfix">
                            <div class="article-date">
                                <div class="month">SEP</div>
                                <div class="day">20</div>
                            </div>
                            <div class="blackboard-label-btn line-overflow">『基木鱼平台』操作指南 ▪ 我的站点</div>
                        </a>
                        <a target="_blank" href="/new/home/product/details/id/5793?ly=yxhbb" class="article-link">
                            <div class="blackboard-text div-overflow">如何新建站点？一键转小程序？快来围观~</div>
                        </a>
                    </div>            </div>
        </div><div class="blackboard-content">
            <div class="blackboard-second-title">
                <a target="_blank" href="/new/home/product/product/id/227?ly=yxhbb">
                            <img src="/new/Public/static/Home/img/icons/newspaper-author.png?v=64c532e36e5403df70a70b7a01205c9e" alt="" class="newspaper-icon">
                            <span>爱番番</span></a>
                <a target="_blank" href="/new/home/product/product/id/227?ly=yxhbb" class="more"><span>更多</span><img src="/new/Public/static/Home/img/icons/right-more.png?v=64c532e36e5403df70a70b7a01205c9e" class="right-more-top"></a>
            </div>
            <div class="blackboard-article clearfix">
                <div class="blackboard-item">
                        <a target="_blank" href="/new/home/product/details/id/5899?ly=yxhbb" class="board-title clearfix">
                            <div class="article-date">
                                <div class="month">SEP</div>
                                <div class="day">18</div>
                            </div>
                            <div class="blackboard-label-btn line-overflow">基础设置—如何配置组织结构？</div>
                        </a>
                        <a target="_blank" href="/new/home/product/details/id/5899?ly=yxhbb" class="article-link">
                            <div class="blackboard-text div-overflow">在开始使用爱番番之前，您需要先进行基础设置，本视频为您讲解如何配置组织结构？</div>
                        </a>
                    </div><div class="blackboard-item">
                        <a target="_blank" href="/new/home/product/details/id/5902?ly=yxhbb" class="board-title clearfix">
                            <div class="article-date">
                                <div class="month">SEP</div>
                                <div class="day">18</div>
                            </div>
                            <div class="blackboard-label-btn line-overflow">基础设置—账号管理及设定</div>
                        </a>
                        <a target="_blank" href="/new/home/product/details/id/5902?ly=yxhbb" class="article-link">
                            <div class="blackboard-text div-overflow">如何进行账号管理？如何编辑与修改账号权限？如何新建子账号？PM手把手教你~</div>
                        </a>
                    </div><div class="blackboard-item">
                        <a target="_blank" href="/new/home/product/details/id/5903?ly=yxhbb" class="board-title clearfix">
                            <div class="article-date">
                                <div class="month">SEP</div>
                                <div class="day">18</div>
                            </div>
                            <div class="blackboard-label-btn line-overflow">基础设置—如何进行角色管理？</div>
                        </a>
                        <a target="_blank" href="/new/home/product/details/id/5903?ly=yxhbb" class="article-link">
                            <div class="blackboard-text div-overflow">通过角色配置，可以让不同账号拥有不同权限？那么如何操作呢？点击查看</div>
                        </a>
                    </div>            </div>
        </div><div class="blackboard-content">
            <div class="blackboard-second-title">
                <a target="_blank" href="/new/home/product/product/id/12?ly=yxhbb">
                            <img src="/new/Public/static/Home/img/icons/newspaper-author.png?v=64c532e36e5403df70a70b7a01205c9e" alt="" class="newspaper-icon">
                            <span>阿拉丁推广</span></a>
                <a target="_blank" href="/new/home/product/product/id/12?ly=yxhbb" class="more"><span>更多</span><img src="/new/Public/static/Home/img/icons/right-more.png?v=64c532e36e5403df70a70b7a01205c9e" class="right-more-top"></a>
            </div>
            <div class="blackboard-article clearfix">
                <div class="blackboard-item">
                        <a target="_blank" href="/new/home/product/details/id/5807?ly=yxhbb" class="board-title clearfix">
                            <div class="article-date">
                                <div class="month">AUG</div>
                                <div class="day">21</div>
                            </div>
                            <div class="blackboard-label-btn line-overflow">招商加盟阿拉丁推广产品手册</div>
                        </a>
                        <a target="_blank" href="/new/home/product/details/id/5807?ly=yxhbb" class="article-link">
                            <div class="blackboard-text div-overflow">招商加盟阿拉丁推广——结构化聚合内容/服务，将核心、有效信息前置，促进决策快速达成，基于商品属性的智能触发，用户意图强匹配，为招商加盟行业广告主带来更全的流量、更准的匹配、更稳的展现、更快的投放、更高的ROI。</div>
                        </a>
                    </div><div class="blackboard-item">
                        <a target="_blank" href="/new/home/product/details/id/5745?ly=yxhbb" class="board-title clearfix">
                            <div class="article-date">
                                <div class="month">AUG</div>
                                <div class="day">21</div>
                            </div>
                            <div class="blackboard-label-btn line-overflow">招商加盟阿拉丁常见问题</div>
                        </a>
                        <a target="_blank" href="/new/home/product/details/id/5745?ly=yxhbb" class="article-link">
                            <div class="blackboard-text div-overflow">如何开通阿拉丁推广投放权限？招商加盟阿拉丁和爱采购的区别是什么？展现位置和样式是怎样的？如何触发？对物料及落地页有哪些要求？具体对接操作流程又是怎样的？……
关于招商加盟阿拉丁，你想了解的都在这里！</div>
                        </a>
                    </div><div class="blackboard-item">
                        <a target="_blank" href="/new/home/product/details/id/5544?ly=yxhbb" class="board-title clearfix">
                            <div class="article-date">
                                <div class="month">JUL</div>
                                <div class="day">2</div>
                            </div>
                            <div class="blackboard-label-btn line-overflow">一张图读懂B2B采购推广</div>
                        </a>
                        <a target="_blank" href="/new/home/product/details/id/5544?ly=yxhbb" class="article-link">
                            <div class="blackboard-text div-overflow">SEO排序不可控，优化手段单一？SEM竞争激烈，流量遇瓶颈？B2B采购推广——基于商品属性的广告触发，基于商品中心的智能投放，帮助广告主精准、高效挖掘B2B行业下的搜索增量。</div>
                        </a>
                    </div>            </div>
        </div><div class="blackboard-content">
            <div class="blackboard-second-title">
                <a target="_blank" href="/new/home/product/product/id/243?ly=yxhbb">
                            <img src="/new/Public/static/Home/img/icons/newspaper-author.png?v=64c532e36e5403df70a70b7a01205c9e" alt="" class="newspaper-icon">
                            <span>电商行业推广</span></a>
                <a target="_blank" href="/new/home/product/product/id/243?ly=yxhbb" class="more"><span>更多</span><img src="/new/Public/static/Home/img/icons/right-more.png?v=64c532e36e5403df70a70b7a01205c9e" class="right-more-top"></a>
            </div>
            <div class="blackboard-article clearfix">
                <div class="blackboard-item">
                        <a target="_blank" href="/new/home/product/details/id/5867?ly=yxhbb" class="board-title clearfix">
                            <div class="article-date">
                                <div class="month">SEP</div>
                                <div class="day">6</div>
                            </div>
                            <div class="blackboard-label-btn line-overflow">电商店铺推广常见问题解答</div>
                        </a>
                        <a target="_blank" href="/new/home/product/details/id/5867?ly=yxhbb" class="article-link">
                            <div class="blackboard-text div-overflow">电商店铺推广是百度面向各大电商平台的店铺商家推出的营销产品。
以下为关于电商店铺推广的常见问题，为您解答疑解惑。</div>
                        </a>
                    </div><div class="blackboard-item">
                        <a target="_blank" href="/new/home/product/details/id/5866?ly=yxhbb" class="board-title clearfix">
                            <div class="article-date">
                                <div class="month">SEP</div>
                                <div class="day">5</div>
                            </div>
                            <div class="blackboard-label-btn line-overflow">一张图读懂百度电商店铺推广</div>
                        </a>
                        <a target="_blank" href="/new/home/product/details/id/5866?ly=yxhbb" class="article-link">
                            <div class="blackboard-text div-overflow">百度电商店铺推广——针对在各大电商平台开店的广告主量身定制的高效、精准的投放方案，帮助广告主获取更多精准流量，缩短转化路径，降低投放门槛，提升转化效果。</div>
                        </a>
                    </div><div class="blackboard-item">
                        <a target="_blank" href="/new/home/product/details/id/5760?ly=yxhbb" class="board-title clearfix">
                            <div class="article-date">
                                <div class="month">SEP</div>
                                <div class="day">2</div>
                            </div>
                            <div class="blackboard-label-btn line-overflow">电商店铺推广：让优质的店铺脱颖而出（附下载）</div>
                        </a>
                        <a target="_blank" href="/new/home/product/details/id/5760?ly=yxhbb" class="article-link">
                            <div class="blackboard-text div-overflow">针对电商店铺，提升流量和转化效果，让优质的店铺脱颖而出，让营销有效、简单。</div>
                        </a>
                    </div>            </div>
        </div></div>
            <!-- 视频教程 -->
            <div class="video section-container index-video-course">
                <div class="video-top-title">
                    <a class="video-top-title-a" href="/new/home/product_tag/lists/id/9?ly=spkc">视频课程</a>
                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product_tag/lists/id/9?ly=spkc_more" class="replace-btn">更多<img src="/new/Public/static/Home/img/icons/right-more.png?v=64c532e36e5403df70a70b7a01205c9e" class="right-more"></a>
                </div>
                <div class="video-box clearfix">
                    <div class="video-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5853?ly=spkc">
                                <div class="video-img-box">
                                    <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-08-30/5d68ced5d9d22.jpg" class="video-img">
                                                                            <div class="bg-mark">
                                        <img src="/new/Public/static/Home/img/icons/video-start.png?v=64c532e36e5403df70a70b7a01205c9e" class="video-start">
                                        <img src="/new/Public/static/Home/img/icons/start-light.png?v=64c532e36e5403df70a70b7a01205c9e" class="start-light">
                                    </div>
                                </div>
                                <div class="video-content">
                                    <div class="video-title line-overflow">百度深耕保健品行业，探索行业新风向</div>
                                    <div class="video-article div-overflow">2019年8月23日，百度行业业务发展部在北京举办的以“同心共健·蓄势谋远”为主题的保健品沙龙会圆满结束。</div>
                                </div>
                            </a>
                        </div><div class="video-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5864?ly=spkc">
                                <div class="video-img-box">
                                    <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-04/5d6f55a9873fb.jpg" class="video-img">
                                                                            <div class="bg-mark">
                                        <img src="/new/Public/static/Home/img/icons/video-start.png?v=64c532e36e5403df70a70b7a01205c9e" class="video-start">
                                        <img src="/new/Public/static/Home/img/icons/start-light.png?v=64c532e36e5403df70a70b7a01205c9e" class="start-light">
                                    </div>
                                </div>
                                <div class="video-content">
                                    <div class="video-title line-overflow">看慧合服务商教你如何玩转视频制作</div>
                                    <div class="video-article div-overflow">慧合平台汇集全网优质视频服务商，他们有着大量互联网视频广告物料制作及拍摄经验，丰富的演员资源，能满足各行业不同类型角色，丰富的拍摄场地资源以及完备服装道具，可以覆盖各行业、各类型的视频广告物料制作。</div>
                                </div>
                            </a>
                        </div><div class="video-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5761?ly=spkc">
                                <div class="video-img-box">
                                    <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-08-19/5d5a2b5f3bc2f.jpg" class="video-img">
                                                                            <div class="bg-mark">
                                        <img src="/new/Public/static/Home/img/icons/video-start.png?v=64c532e36e5403df70a70b7a01205c9e" class="video-start">
                                        <img src="/new/Public/static/Home/img/icons/start-light.png?v=64c532e36e5403df70a70b7a01205c9e" class="start-light">
                                    </div>
                                </div>
                                <div class="video-content">
                                    <div class="video-title line-overflow">PM带你了解电商店铺推广</div>
                                    <div class="video-article div-overflow">什么是电商店铺推广？电商店铺推广支持哪些行业、业务？可以满足广告主哪类营销诉求？如何进行投放？</div>
                                </div>
                            </a>
                        </div><div class="video-item">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5943?ly=spkc">
                                <div class="video-img-box">
                                    <img src="https://bdyingxiaocms.cdn.bcebos.com/2019-09-26/5d8c834c7a17c.jpg" class="video-img">
                                                                            <div class="bg-mark">
                                        <img src="/new/Public/static/Home/img/icons/video-start.png?v=64c532e36e5403df70a70b7a01205c9e" class="video-start">
                                        <img src="/new/Public/static/Home/img/icons/start-light.png?v=64c532e36e5403df70a70b7a01205c9e" class="start-light">
                                    </div>
                                </div>
                                <div class="video-content">
                                    <div class="video-title line-overflow">谢松杰：30Min轻松掌握SEO--知识合集</div>
                                    <div class="video-article div-overflow">《网站说服力：营销型网站策划》、《着陆页：获取网络订单的关键》作者谢松杰，30分钟教你如何掌握SEO。</div>
                                </div>
                            </a>
                        </div>                </div>
            </div>
            <!-- 原创模块 -->
            <div class="original section-container">
                <div class="original-title-box clearfix">
                    <div class="original-title original-title-active">行业洞察</div><div class="original-title ">智能营销</div><div class="original-title ">案例精选</div><div class="original-title ">大咖观点</div>                </div>
                <div class="original-tab-content">
                    <div class="original-content-box clearfix">
                            <div class="original-content">
                                    <div class="pink-point"></div>
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5668?ly=ycmk">
                                        <div class="tab-title line-overflow">2019 百度法律服务行业营销白皮书</div>
                                        <div class="tab-content div-overflow">基于中国法律行业市场及百度法律服务行业现状，2019 百度法律服务行业营销白皮书从中国法律分类、法律行业大数据、法律需求人群画像及痛点、产品与策略解决方案等几个方向，指导营销人为法律客户提供更专业、更全面的服务。</div>
                                    </a>
                                </div><div class="original-content">
                                    <div class="pink-point"></div>
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5153?ly=ycmk">
                                        <div class="tab-title line-overflow">2019年中国制造业企业智能化路径研究报告</div>
                                        <div class="tab-content div-overflow">《2019年中国制造业企业智能化路径研究报告》系统梳理了智能制造的概念内涵、构成要素与整体架构，并以制造业企业应围绕自身核心痛点搭建智能制造系统为切入点，提出企业要沿着“智能制造要素→智能制造能力→智能制造系统”的发展方向</div>
                                    </a>
                                </div><div class="original-content">
                                    <div class="pink-point"></div>
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5023?ly=ycmk">
                                        <div class="tab-title line-overflow">胡润研究院：2019中国酒类消费行为白皮书</div>
                                        <div class="tab-content div-overflow">胡润研究院发布《新零售时代的新需求—2019中国酒类消费行为白皮书》，这份32页的专业报告揭示了后物质时代下的中国高净值人群酒类消费新趋势、他们的酒类消费行为特征，以及对新零售的认知。
</div>
                                    </a>
                                </div><div class="original-content">
                                    <div class="pink-point"></div>
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5410?ly=ycmk">
                                        <div class="tab-title line-overflow">2019年中国信息流潜力市场展望报告</div>
                                        <div class="tab-content div-overflow">2018年信息流广告市场规模达到1090.4亿元，预计2020年将超过2500亿元。同时，随着用户在互联网终端的使用行为趋于融合化，以及信息流形式被广泛接受后在商业赛道上的多元化，“PC信息流市场”和“工具类信息流市场”的潜力价值逐渐被挖掘出来。</div>
                                    </a>
                                </div>                        </div><div class="original-content-box ">
                            <div class="original-content">
                                    <div class="pink-point"></div>
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5250?ly=ycmk">
                                        <div class="tab-title line-overflow">百度智能小程序狂飙300天：开源全面落地、月活用户突破2亿</div>
                                        <div class="tab-content div-overflow">2019百度联盟生态合作伙伴大会期间，百度再次披露了智能小程序生态进展。</div>
                                    </a>
                                </div><div class="original-content">
                                    <div class="pink-point"></div>
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/3989?ly=ycmk">
                                        <div class="tab-title line-overflow">百度AR智能营销解决方案介绍</div>
                                        <div class="tab-content div-overflow">通过推文、语音、直播、视频等多种形式学习推广账户知识。</div>
                                    </a>
                                </div><div class="original-content">
                                    <div class="pink-point"></div>
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/3885?ly=ycmk">
                                        <div class="tab-title line-overflow">智能投放、智能运营和智能交互驱动营销进入3.0时代</div>
                                        <div class="tab-content div-overflow">技术正在驱动营销的变革。百度大客户部总经理陈志峰认为，中国互联网营销模式经历了媒体数字化的门户时代、数据精准化的移动时代，现在已经进入3.0时代，即营销智能化的AI时代。</div>
                                    </a>
                                </div><div class="original-content">
                                    <div class="pink-point"></div>
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/2560?ly=ycmk">
                                        <div class="tab-title line-overflow">智能网络营销时代的变化与趋势洞察</div>
                                        <div class="tab-content div-overflow">6月13日，2018中国企业智能营销创新峰会走进六朝古城西安，上千家企业代表亲临现场。</div>
                                    </a>
                                </div>                        </div><div class="original-content-box ">
                            <div class="original-content">
                                    <div class="pink-point"></div>
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5757?ly=ycmk">
                                        <div class="tab-title line-overflow">智能小程序：小程序助企业代理公司延长服务生命周期</div>
                                        <div class="tab-content div-overflow">百度智能小程序，将随机响应搜索需求变为随时待命的服务保障，助力企业代理公司在保障隐私的基础上延长服务生命周期</div>
                                    </a>
                                </div><div class="original-content">
                                    <div class="pink-point"></div>
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5704?ly=ycmk">
                                        <div class="tab-title line-overflow">视频信息流：视频创意+视频落地页，转化成本降低87%</div>
                                        <div class="tab-content div-overflow">让视频不流于形式，而成为创意的合理组成部分，以至成为不可或缺的创意体验——VR强调的临场体验感配合视频创意恰能达成这一营销效果</div>
                                    </a>
                                </div><div class="original-content">
                                    <div class="pink-point"></div>
                                    <a target="_blank" href=" http://yingxiao.baidu.com/new/home/product/details/id/5770?ly=ycmk">
                                        <div class="tab-title line-overflow">品专MAX：美妆品牌保卫战，我要你的眼里「都是我」</div>
                                        <div class="tab-content div-overflow">品牌搜索流量分散至电商平台和资讯论坛，湮没官网信息。品专MAX打造霸屏级品牌展示区域，帮助品牌实现「注意力突围」</div>
                                    </a>
                                </div><div class="original-content">
                                    <div class="pink-point"></div>
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/5765?ly=ycmk">
                                        <div class="tab-title line-overflow">搜索推广：APP下载业务应用oCPC，ACP下降14%</div>
                                        <div class="tab-content div-overflow">CPA突增、ACP突增、流量不稳…扛过oCPC阵痛期，积极排查、持续优化，着眼长期的效果建设</div>
                                    </a>
                                </div>                        </div><div class="original-content-box ">
                            <div class="original-content">
                                    <div class="pink-point"></div>
                                    <a target="_blank" href="http://dx.baidu.com/index.php/home/course?course_id=7?ly=ycmk">
                                        <div class="tab-title line-overflow">互联网广告变与不变——高笑河</div>
                                        <div class="tab-content div-overflow">云计算、人工智能、大数据，VR、AR、MR、CR，新科技给广告业界带来了新的探索与迷惘</div>
                                    </a>
                                </div><div class="original-content">
                                    <div class="pink-point"></div>
                                    <a target="_blank" href="http://dx.baidu.com/index.php/home/course?course_id=6?ly=ycmk">
                                        <div class="tab-title line-overflow">AI时代营销五大趋势——孙道军</div>
                                        <div class="tab-content div-overflow">协同增效、敏捷响应、营销“小型化”、技术进化加速和打破边界形成生态</div>
                                    </a>
                                </div><div class="original-content">
                                    <div class="pink-point"></div>
                                    <a target="_blank" href="http://dx.baidu.com/index.php/home/course?course_id=5?ly=ycmk">
                                        <div class="tab-title line-overflow">广告营销从策略到创意——沈虹</div>
                                        <div class="tab-content div-overflow">策略是创意的“行军图”，创意是最终直面大众的形态</div>
                                    </a>
                                </div><div class="original-content">
                                    <div class="pink-point"></div>
                                    <a target="_blank" href="http://dx.baidu.com/index.php/home/course?course_id=8?ly=ycmk">
                                        <div class="tab-title line-overflow">消费者洞察与数据化营销——马澈</div>
                                        <div class="tab-content div-overflow">营销的任务不再是一种“捕获”，而是找到TA心中种的那棵“草”</div>
                                    </a>
                                </div>                        </div>                </div>
            </div>
            <!-- 场景模块 -->
            <!-- <div class="scene section-container">
                <div class="scene-title-box clearfix">
                    <div class="scene-title scene-title-active">账户结构优化</div><div class="scene-title ">拓展账户流量</div><div class="scene-title ">提升转化效率</div><div class="scene-title ">账户管理工具</div>                </div>
                <div class="scene-box clearfix">
                        <div class="scene-show">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/578?ly=changjing?ly=cjmk">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2017-10-31/59f82487a1599.jpg" class="video-img">
                                                                </a>
                        </div>
                        <div class="left-content">
                            <div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/details/id/541?ly=cjmk">
                                        <div class="top-title line-overflow">怎样建立健康的账户结构？</div>
                                        <div class="top-content div-overflow">一个健康的账户结构不仅能让日常投放事半功倍，还能有效提升推广效果。好的账户结构怎么规划，看我的！</div>                                    </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/2075?ly=cjmk">
                                        <div class="top-title line-overflow">搜索推广oCPC是什么？</div>
                                                                            </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/index/class_id/459?ly=cjmk">
                                        <div class="top-title line-overflow">写创意的正确姿势</div>
                                                                            </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/index/class_id/468?ly=cjmk">
                                        <div class="top-title line-overflow">出价的那些小技巧</div>
                                                                            </a>
                                </div>                        </div>
                        <div class="right-content">
                            <div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/details/id/753?ly=cjmk">
                                        <div class="top-title line-overflow">怎样进行有效的账户优化？</div>
                                        <div class="top-content div-overflow">有效的账户优化可以提高关键词的质量度，以更低的点击价格获得更优的排名，从而降低整体推广费用，提高投资回报率。</div>                                    </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/details/id/847?ly=cjmk">
                                        <div class="top-title line-overflow">哪类关键词适合我</div>
                                                                            </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/index/class_id/502?ly=cjmk">
                                        <div class="top-title line-overflow">质量度背后的小秘密</div>
                                                                            </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/index/class_id/437?ly=cjmk">
                                        <div class="top-title line-overflow">推广排名深度解读</div>
                                                                            </a>
                                </div>                        </div>
                    </div><div class="scene-box clearfix">
                        <div class="scene-show">
                            <a target="_blank" href="http://yingxiao.baidu.com/topic/558/index.html?/ly=changjing?ly=cjmk">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2018-01-19/5a61aa6762684.jpg" class="video-img">
                                                                </a>
                        </div>
                        <div class="left-content">
                            <div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/bmp/yx/article.html?articleId=5717&ly=changjing?ly=cjmk">
                                        <div class="top-title line-overflow">如何正确截取竞品优质流量</div>
                                        <div class="top-content div-overflow">如何正确截取竞争对手优质流量？切忌盲目投放竞品词…</div>                                    </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/topic/497/index.html?ly=cjmk">
                                        <div class="top-title line-overflow">好词快投</div>
                                                                            </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/577?ly=cjmk">
                                        <div class="top-title line-overflow">目标客户追投</div>
                                                                            </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/667?ly=cjmk">
                                        <div class="top-title line-overflow">人群投放</div>
                                                                            </a>
                                </div>                        </div>
                        <div class="right-content">
                            <div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/638?ly=cjmk">
                                        <div class="top-title line-overflow">提升优质流量小妙招！</div>
                                        <div class="top-content div-overflow">想要提升优质流量？又要降低转化成本？“行业定投”全部搞定！</div>                                    </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/578?ly=cjmk">
                                        <div class="top-title line-overflow">小A智投</div>
                                                                            </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/669?ly=cjmk">
                                        <div class="top-title line-overflow">排名胜出</div>
                                                                            </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/575?ly=cjmk">
                                        <div class="top-title line-overflow">流量优化助手</div>
                                                                            </a>
                                </div>                        </div>
                    </div><div class="scene-box clearfix">
                        <div class="scene-show">
                            <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/618?ly=changjing?ly=cjmk">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2018-01-19/5a61aa3f94750.jpeg" class="video-img">
                                                                </a>
                        </div>
                        <div class="left-content">
                            <div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/625?ly=cjmk">
                                        <div class="top-title line-overflow">医疗行业咨询解决方案</div>
                                        <div class="top-content div-overflow">助力医疗行业线索迅猛增长的一剂良药</div>                                    </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/627?ly=cjmk">
                                        <div class="top-title line-overflow">线索通·智能咨询页</div>
                                                                            </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/615?ly=cjmk">
                                        <div class="top-title line-overflow">线索通·咨询</div>
                                                                            </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/604?ly=cjmk">
                                        <div class="top-title line-overflow">智能落地页</div>
                                                                            </a>
                                </div>                        </div>
                        <div class="right-content">
                            <div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/626?ly=cjmk">
                                        <div class="top-title line-overflow">汽车行业咨询解决方案</div>
                                        <div class="top-content div-overflow">某汽车广告主线索增长250%的那些小秘密~</div>                                    </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/611?ly=cjmk">
                                        <div class="top-title line-overflow">线索通·电话</div>
                                                                            </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/616?ly=cjmk">
                                        <div class="top-title line-overflow">线索通·表单</div>
                                                                            </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/598?ly=cjmk">
                                        <div class="top-title line-overflow">转化一点通</div>
                                                                            </a>
                                </div>                        </div>
                    </div><div class="scene-box clearfix">
                        <div class="scene-show">
                            <a target="_blank" href="http://yingxiao.baidu.com/topic/554/index.html?ly=changjing?ly=cjmk">
                                <img src="https://bdyingxiaocms.cdn.bcebos.com/2018-01-19/5a61aa873b7f2.jpg" class="video-img">
                                                                </a>
                        </div>
                        <div class="left-content">
                            <div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/673?ly=cjmk">
                                        <div class="top-title line-overflow">展现诊断工具</div>
                                        <div class="top-content div-overflow">常问“没展现”，排查耗时久？展现诊断工具帮您快捷高效找症结！</div>                                    </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/681?ly=cjmk">
                                        <div class="top-title line-overflow">竞争对手分析</div>
                                                                            </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/topic/488/?ly=cjmk">
                                        <div class="top-title line-overflow">数据实时看</div>
                                                                            </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/680?ly=cjmk">
                                        <div class="top-title line-overflow">历史操作记录</div>
                                                                            </a>
                                </div>                        </div>
                        <div class="right-content">
                            <div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/679?ly=cjmk">
                                        <div class="top-title line-overflow">搜索词报告</div>
                                        <div class="top-content div-overflow">想知道您的广告由网民的哪些搜索词所触发？搜索词报告来帮您！</div>                                    </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/669?ly=cjmk">
                                        <div class="top-title line-overflow">排名胜出</div>
                                                                            </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/682?ly=cjmk">
                                        <div class="top-title line-overflow">推广实况</div>
                                                                            </a>
                                </div><div class="top-content-box">
                                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/product/details/id/634?ly=cjmk">
                                        <div class="top-title line-overflow">样式识别</div>
                                                                            </a>
                                </div>                        </div>
                    </div>            </div> -->
            <!-- 帮助中心 -->
            <div class="video section-container help-con">
                <div class="video-top-title">
                    <a class="video-top-title-a" href="/new/home/help/index?ly=bzzx">帮助中心</a>
                    <a target="_blank" href="/new/home/help/index?ly=bzzx_more" class="replace-btn">进入帮助中心<img src="/new/Public/static/Home/img/icons/right-more.png?v=64c532e36e5403df70a70b7a01205c9e" class="right-more"></a>
                </div>
                <div class="help-container">
                    <div class="help-item">
                        <div class="help-kind help-kind-1">选择产品</div>
                        <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/index/class_id/441?ly=bbzx" class="help-title">百度搜索推广基础</a>
                        <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/index/class_id/15068?ly=bbzx" class="help-title">原生动态商品广告基础</a>
                    </div>
                    <div class="help-item">
                        <div class="help-kind help-kind-2">开通账户</div>
                        <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/details/id/597?ly=bbzx" class="help-title">如何开通百度搜索推广</a>
                        <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/index/class_id/12593?ly=bbzx" class="help-title">如何购买品牌起跑线</a>
                    </div>
                    <div class="help-item">
                        <div class="help-kind help-kind-3">审核政策</div>
                        <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/index/class_id/15089?ly=bbzx" class="help-title">FEED广告审核</a>
                        <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/details/id/17005?ly=bbzx" class="help-title">FEED禁推行业列表</a>
                    </div>
                </div>
                <div class="help-container">
                    <div class="help-item">
                        <div class="help-kind help-kind-4">投放和优化</div>
                        <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/details/id/16553?ly=bbzx" class="help-title">聚屏的投放方式</a>
                        <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/index/class_id/406?ly=bbzx" class="help-title">搜索推广如何选择关键词</a>
                    </div>
                    <div class="help-item">
                        <div class="help-kind help-kind-5">辅助工具</div>
                        <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/index/class_id/7466?ly=bbzx" class="help-title">关键词工具如何应用</a>
                        <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/details/id/17094?ly=bbzx" class="help-title">程序化创意投放建议</a>
                    </div>
                    <div class="help-item">
                        <div class="help-kind help-kind-6">其它常见问题</div>
                        <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/index/class_id/15058?ly=bbzx" class="help-title">商品中心BMC基础概念</a>
                        <a target="_blank" href="http://yingxiao.baidu.com/new/home/help/details/id/16444?ly=bbzx" class="help-title">聚屏问题如何反馈</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-right">
            <!-- 站内公告 -->
            <div class="notice section-container right-section-box">
                <div class="right-title">
                    <span>站内公告</span>
                </div>
                <div class="notice-content">
                    <a target="_blank" href="http://yingxiao.baidu.com/new/home/topic/lists?ly=zngg" class="notice-item">
                            <div class="notice-num">01</div>
                            <div class="line-overflow notice-title">营销专题集萃</div>
                        </a><a target="_blank" href="http://yingxiao.baidu.com/new/topic/607?ly=zngg" class="notice-item">
                            <div class="notice-num">02</div>
                            <div class="line-overflow notice-title">百度商业产品图谱</div>
                        </a>                </div>
            </div>
            <!-- 个性化内容定制 -->
            <div class="customization section-container right-section-box">
                <div class="right-title">个性化内容定制</div>
                <div class="customization-content">
                    <div class="customization-bottom"><a target="_blank" href="/new/home/product_class/lists?ly=gxhdz" class="customization-bottom-author">关注作者</a>，获得更多推送</div>
                </div>
            </div>
            <!-- 最新最热 -->
            <div class="new-hot section-container right-section-box">
    <div class="right-title">
        <span class="new-hot-tab new-hot-active">最新</span>
        <span class="new-hot-tab">最热</span>
    </div>
    <div class="new-hot-content">
        <a target="_blank" href="/new/home/product/details/id/5948?ly=zxzr" class="new-hot-item line-overflow clearfix">
            <div class="serial first-serial">01</div>
            <span>十一放心投！百度信息流投放指导手册</span>
        </a>
        <a target="_blank" href="/new/home/product/details/id/5946?ly=zxzr" class="new-hot-item line-overflow clearfix">
            <div class="serial second-serial">02</div>
            <span>公测 | 二维码、名片、保险单识别 抢先使用</span>
        </a>
        <a target="_blank" href="/new/home/product/details/id/5943?ly=zxzr" class="new-hot-item line-overflow clearfix">
            <div class="serial third-serial">03</div>
            <span>谢松杰：30Min轻松掌握SEO--知识合集</span>
        </a>
        <a target="_blank" href="/new/home/product/details/id/5942?ly=zxzr" class="new-hot-item line-overflow clearfix">
                <div class="serial">04</div>
                <span>留言有礼丨如何用二八法则来优化账户关键词？</span>
            </a><a target="_blank" href="/new/home/product/details/id/5941?ly=zxzr" class="new-hot-item line-overflow clearfix">
                <div class="serial">05</div>
                <span>干货丨账户优化中关键词的四个阶段，带你玩转竞价！</span>
            </a><a target="_blank" href="/new/home/product/details/id/5939?ly=zxzr" class="new-hot-item line-overflow clearfix">
                <div class="serial">06</div>
                <span>想跟百度一起玩吗？2019网红品牌代言人大赛招商震撼启动！</span>
            </a><a target="_blank" href="/new/home/product/details/id/5938?ly=zxzr" class="new-hot-item line-overflow clearfix">
                <div class="serial">07</div>
                <span>语音识别极速版次数包优惠上线 单次调用低至0.0012元</span>
            </a><a target="_blank" href="/new/home/product/details/id/5937?ly=zxzr" class="new-hot-item line-overflow clearfix">
                <div class="serial">08</div>
                <span>人脸识别专项合作伙伴权益</span>
            </a>    </div>
    <div class="new-hot-content">
        <a target="_blank" href="/new/home/product/details/id/5940?ly=zxzr" class="new-hot-item line-overflow clearfix">
            <div class="serial first-serial">01</div>
            <span>【百家号】品牌原生图文，为你的品牌打造关键影响力！</span>
        </a>
        <a target="_blank" href="/new/home/product/details/id/5948?ly=zxzr" class="new-hot-item line-overflow clearfix">
            <div class="serial second-serial">02</div>
            <span>十一放心投！百度信息流投放指导手册</span>
        </a>
        <a target="_blank" href="/new/home/product/details/id/5417?ly=zxzr" class="new-hot-item line-overflow clearfix">
            <div class="serial third-serial">03</div>
            <span>【最新版】百度信息流-百青藤广告产品手册</span>
        </a>
        <a target="_blank" href="/new/home/product/details/id/5651?ly=zxzr" class="new-hot-item line-overflow clearfix">
                <div class="serial">04</div>
                <span>【最新】激励视频产品介绍和投放说明</span>
            </a><a target="_blank" href="/new/home/product/details/id/666?ly=zxzr" class="new-hot-item line-overflow clearfix">
                <div class="serial">05</div>
                <span>T-CPX智能出价工具</span>
            </a><a target="_blank" href="/new/home/product/details/id/5122?ly=zxzr" class="new-hot-item line-overflow clearfix">
                <div class="serial">06</div>
                <span>最新版百度信息流合约广告产品手册【附下载】</span>
            </a><a target="_blank" href="/new/home/product/details/id/5924?ly=zxzr" class="new-hot-item line-overflow clearfix">
                <div class="serial">07</div>
                <span>百度智能小程序联合有赞助力打造品牌经营新阵地</span>
            </a><a target="_blank" href="/new/home/product/details/id/787?ly=zxzr" class="new-hot-item line-overflow clearfix">
                <div class="serial">08</div>
                <span>推荐文案功能升级</span>
            </a>    </div>
</div>
            <!-- 热门标签 -->
            <div class="impression section-container right-section-box">
                <div class="right-title">
                    <span>热门标签</span>
                </div>
                <div class="impress-box clearfix">
                    <div class="impress-left-box clearfix">
                        <a target="_blank" href="/new/home/product_tag/lists/id/2?ly=qwyx" class="impress-item">搜索推广</a><a target="_blank" href="/new/home/product_tag/lists/id/30?ly=qwyx" class="impress-item">信息流</a><a target="_blank" href="/new/home/product_tag/lists/id/6?ly=qwyx" class="impress-item">品牌推广</a><a target="_blank" href="/new/home/product_tag/lists/id/131?ly=qwyx" class="impress-item">百度智能小程序</a><a target="_blank" href="/new/home/product_tag/lists/id/107?ly=qwyx" class="impress-item">动态商品广告</a><a target="_blank" href="/new/home/product_tag/lists/id/84?ly=qwyx" class="impress-item">节庆/活动推广</a><a target="_blank" href="/new/home/product_tag/lists/id/13?ly=qwyx" class="impress-item">行业研究</a><a target="_blank" href="/new/home/product_tag/lists/id/4?ly=qwyx" class="impress-item">产品介绍</a><a target="_blank" href="/new/home/product_tag/lists/id/102?ly=qwyx" class="impress-item">发展型企业案例</a><a target="_blank" href="/new/home/product_tag/lists/id/1?ly=qwyx" class="impress-item">产品迭代更新</a><a target="_blank" href="/new/home/product_tag/lists/id/113?ly=qwyx" class="impress-item">大型企业</a><a target="_blank" href="/new/home/product_tag/lists/id/9?ly=qwyx" class="impress-item">直播/视频</a><a target="_blank" href="/new/home/product_tag/lists/id/101?ly=qwyx" class="impress-item">营销解决方案</a><a target="_blank" href="/new/home/product_tag/lists/id/10?ly=qwyx" class="impress-item">帮助与FAQ</a><a target="_blank" href="/new/home/product_tag/lists/id/126?ly=qwyx" class="impress-item">oCPC</a><a target="_blank" href="/new/home/product_tag/lists/id/118?ly=qwyx" class="impress-item">AI</a><a target="_blank" href="/new/home/product_tag/lists/id/119?ly=qwyx" class="impress-item">AR</a><a target="_blank" href="/new/home/product_tag/lists/id/52?ly=qwyx" class="impress-item">分类平台</a><a target="_blank" href="/new/home/product_tag/lists/id/111?ly=qwyx" class="impress-item">培训认证</a><a target="_blank" href="/new/home/product_tag/lists/id/15?ly=qwyx" class="impress-item">考核认证</a>                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="float-window">
        <!-- <div class="float-icons-item">
            <div class="float-icon">
                <img src="/new/Public/static/Home/img/icons/f-tell.png?v=64c532e36e5403df70a70b7a01205c9e" class="float-icon-img">
                <span>咨询</span>
            </div>
            <a target="_blank" href="https://ikefu.baidu.com/web/yxzx" class="float-pic">
                <img class="float-robot" src="/new/Public/static/Home/img/tell.png?v=64c532e36e5403df70a70b7a01205c9e">
                <p class="text-robot">点击呼叫机器人</p>
            </a>
        </div> -->
        <div class="float-icons-item">
            <div class="float-icon">
                <img src="/new/Public/static/Home/img/icons/f-hi.png?v=64c532e36e5403df70a70b7a01205c9e" class="float-icon-img">
                <span>关注</span>
            </div>
            <div class="float-pic">
                <img src="/new/Public/static/Home/img/hi.png?v=64c532e36e5403df70a70b7a01205c9e">
                <p>营销中心hi服务号</p>
            </div>
        </div>
        <div class="float-icons-item">
            <div class="float-icon">
                <img src="/new/Public/static/Home/img/icons/f-phone.png?v=64c532e36e5403df70a70b7a01205c9e" class="float-icon-img">
                <span>手机</span>
            </div>
            <div class="float-pic">
                <img src="/new/Public/static/Home/img/phone.png?v=64c532e36e5403df70a70b7a01205c9e" style="width: 128px;">
                <p>手机访问营销中心</p>
            </div>
         </div>
        <div class="float-icons-item">
            <div class="float-icon">
                <img src="/new/Public/static/Home/img/icons/f-wechat.png?v=64c532e36e5403df70a70b7a01205c9e" class="float-icon-img">
                <span>关注</span>
            </div>
            <div class="float-pic">
                <img src="/new/Public/static/Home/img/vixin.png?v=64c532e36e5403df70a70b7a01205c9e">
                <p>关注微信公众号</p>
            </div>
        </div>
        <div class="float-icons-item float-top">
            <div class="float-icon">
                <img src="/new/Public/static/Home/img/icons/f-top.png?v=64c532e36e5403df70a70b7a01205c9e" class="float-icon-img">
                <span>顶部</span>
            </div>
        </div>
    </div>


    <div class="page-to-top">
    <img src="/new/Public/static/Home/img/icons/f-top.png?v=64c532e36e5403df70a70b7a01205c9e" class="f-f-top">
    <span>顶部</span>
</div>
<div class="footer-wrap">
    <div class="footer">
        <p class="contact">
            <img src="/new/Public/static/Home/img/icons/call.png?v=64c532e36e5403df70a70b7a01205c9e" alt="" class="contact-img">
            <span class="contact-text">联系我们</span>
        </p>

        <p class="understand">
            <span>了解更多产品请拨打：400 800 8888</span>
            <span class="understand-bar"></span>
            <span>售后服务请拨打：400 921 9999</span>
        </p>

        <div id="blogroll" class="blogroll">
            <ul >
                <li style="color: #ccc;float: left;">友情链接&nbsp;:</li>
                <li> <a href="http://ai.baidu.com/">百度AI开放平台</a> </li>
                <li><a href="https://smartprogram.baidu.com/developer/index.html">百度智能小程序</a></li>
                <li><a href="https://pan.baidu.com/union#/ ">百度网盘开放平台</a></li>
                <li><a href="https://tongji.baidu.com/web/welcome/login">百度统计</a></li>
                <li><a href="https://mtj.baidu.com/web/welcome/login">百度移动统计</a></li>
                <li><a href="https://mssp.baidu.com/bqt#/">百青藤</a></li>
            </ul>
        </div>
        <div class="read">
            
            <p class="read-text">
                <span>© All Right Reserved</span>
                <img src="/new/Public/static/Home/img/logo2.png?v=64c532e36e5403df70a70b7a01205c9e" alt="" class="footer-logo">
                <a href="http://www.baidu.com/duty/" >
                    <span>使用百度前必读</span>
                </a>
            </p>
        </div>
    </div>
</div>
<script src="/new/Public/static/Home/js/layer.min.js?v=64c532e36e5403df70a70b7a01205c9e"></script>
<script>
    var href;
    var urlP;
    href = window.location.href;
    urlP = 'new/';
    if (href.indexOf("new") >= 0) {
        urlP = '';
    }
var GV = {
    ROOT: '/new/',
    StaticPath: '/new/Public/',
    REGISTER_URL: '/new/home/consumer/register',//注册链接
    LOGIN_STATUS: 0,
    PASSPORT_DOMAIN: 'passport.baidu.com',
    DEPLOY_DOMAIN: 'yingxiao.baidu.com',
    JUMP_BACK_URL: window.location.href + urlP,
    LOGIN_BACK_URL: window.location.href + urlP,
    PASSPORT_TPL: 'yxscrat',
}
var isBdLogined = '0';
</script>
<script src="/new/Public/static/Home/js/public.js?v=64c532e36e5403df70a70b7a01205c9e"></script>
<script type="text/javascript" src="/new/Public/static/Home/js/bdlogin-pc.js?v=64c532e36e5403df70a70b7a01205c9e"></script>
<script type="text/javascript">
    $(function () {
        Bdlogin.init('login-box', {
            done: function () {
            }
        }, false);

        $('.login-btn').unbind('click').bind('click', function () {
            // Bdlogin.show();//未登录
            $('.login-wrap').show();
        });
    });
</script>
<link rel="stylesheet" type="text/css" href="/new/Public/static/Home/css/newlogin.css">
<div class="login-wrap">
    <div class="login-content">
        <div class="login-top">
            <img src="/new/Public/static/Home/img/login-yx.png">
            <img src="/new/Public/static/Home/img/icons/login-close.png" class="close-img">
        </div>
        <!-- 登陆方式 -->
        <div class="login-methods">
            <span>请选择登陆方式</span>
        </div>
        <div class="login-choose">
            <ul class="clearfix">
                <li>
                    <div class="login-img base-line">
                        <a href="/new/home/user/user_login/type/passport"><img src="/new/Public/static/Home/img/mobile/login-bd-m.png"></a>
                    </div>
                    <div class="login-txt">
                        <p>适用</p>
                        <p>百度用户</p>
                    </div>
                </li>
                <li>
                    <div class="login-img base-line">
                        <a href="/new/home/user/user_login/type/uc"><img src="/new/Public/static/Home/img/mobile/login-tg-m.png"></a>
                    </div>
                    <div class="login-txt">
                        <p>适用</p>
                        <p>百度推广客户</p>
                    </div>
                </li>
                <li>
                    <div class="login-img base-line">
                        <a href="/new/home/user/user_login/type/uuap"><img src="/new/Public/static/Home/img/mobile/login-uu-m.png"></a>
                    </div>
                    <div class="login-txt">
                        <p>适用</p>
                        <p>百度内部员工</p>
                    </div>
                </li>
            </ul>
        </div>
        <!-- 温馨提示： -->
        <div class="login-prompt">
            <ul>
                <li class="clearfix">
                    <span class="login-ts">温馨提示：</span>
                    <span class="login-ts-item">与百度搜索、百度贴吧、百度云盘、百度知道、百度文库等产品通用。</span>
                </li>
                <li class="clearfix ele-hidde">
                    <span class="login-ts">温馨提示：</span>
                    <span class="login-ts-item">使用百度推广账号可直接登录。</span>
                </li>
                <li class="clearfix ele-hidde">
                    <span class="login-ts">温馨提示：</span>
                    <span class="login-ts-item">须在内网环境下使用百度邮箱账号可直接登录。</span>
                </li>
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript">
$('.login-wrap .close-img').click(function () {
    $('.login-wrap').css('display', 'none');
});
// 鼠标移入选择登陆方式的li时
$('.login-wrap .login-choose li').mouseover(function () {
    // 获取下标
    var index = $(this).index();
    $('.login-wrap .login-prompt li').removeClass('ele-hidde').addClass('ele-hidde').eq(index).removeClass('ele-hidde');
});
</script>



    <script src="/new/Public/static/Home/js/swiper.min.js?v=64c532e36e5403df70a70b7a01205c9e"></script>
    <script src="/new/Public/static/Home/js/index.js?v=64c532e36e5403df70a70b7a01205c9e"></script>
    <!-- 务必保持每个html中有此脚本，且位置在body闭合前 -->
    <script>
var baiduAB = baiduAB || {};
window.baiduAB = baiduAB;
(function () {
    baiduAB.endTime = 1577692800000;
    baiduAB.date = new Date();
    baiduAB.time = baiduAB.date.getTime();
    if (baiduAB.time <= baiduAB.endTime) {
        baiduAB.newScript = document.createElement('script');
        baiduAB.newScript.setAttribute('charset', 'utf-8');
        baiduAB.newScript.src = 'https://absample.baidu.com/static/abtest-zy-pall.js';
        baiduAB.first = document.body.firstChild;
        document.body.insertBefore(baiduAB.newScript, baiduAB.first);
    };
})();
</script>

</body>

</html><!--31100335120699646474100621-->
<script> var _trace_page_logid = 3110033512; </script><!--31094811110490390282100621-->
<script> var _trace_page_logid = 3109481111; </script>