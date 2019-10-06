<!DOCTYPE HTML>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>网易红彩-足彩篮彩竞彩专家比分预测彩票平台</title>
    <meta name="keywords" content="网易,网易红彩,红彩,彩票,彩票推荐,彩票专家,足彩,篮彩,专家,英超,NBA,中超,CBA,篮球,足球,张路,于嘉,范志毅" />
    <meta name="description" content="网易红彩，让你的竞彩一触即发！足彩篮彩竞彩专家比分预测彩票平台" />
    <script type="text/javascript" src="https://urswebzj.nosdn.127.net/webzj_cdn101/message.js"></script>
    <base target="_blank">
<link rel="shortcut icon" href="https://img1.cache.netease.com/f2e/products/relottery/platform/favicon.ico"  />
<link href="https://static.ws.126.net/163/relottery/frontend-pc-bowlder/collect/head~edab02b062b1.css" rel="stylesheet"  />
</head>

<body>
    <!--头部导航 begin-->
    <div ne-module="/frontend-pc-bowlder/modules/header/header.js" ne-state="curNav:index">
<!--头部导航 begin-->
<div class="header-area">
    <div class="b-logo">
        <a href="https://hongcai.163.com/" target="_self">
            <img  src="https://img1.cache.netease.com/f2e/products/relottery/platform/images/logo.svg" onerror="javascript:this.src='https://img1.cache.netease.com/f2e/products/relottery/platform/images/logo.png'" alt="网易红彩">
        </a>
    </div>
    <div class="b-login">
        <div class="login-before" ne-hide="{{isLogin === 'userlogin'}}">
            <span class="login-btn" ne-click="login()">登录</span>
            <span class="midline"></span>
            <span class="login-btn" ne-click="register()">注册</span>
        </div>
        <div class="login-after" ne-show="{{isLogin === 'userlogin'}}">
            <div class="userinfo">
                <div class="userhead">
                    <img  ne-src="{{userInfo.avatar?'https://nimg.ws.126.net/?url='+userInfo.avatar+'&thumbnail=24x24&quality=75&type=jpg':'https://img1.cache.netease.com/f2e/products/relottery/platform/images/avatar_24.png'}}"  onerror="javascript:this.src='https://img1.cache.netease.com/f2e/products/relottery/platform/images/avatar_24.png';">
                    <div class="nicknameFirst" ne-if="{{!userInfo.avatar}}" ne-html="{{userInfo.nickname.split('')[0]}}"></div>
                </div>
                <span class="username" ne-html="{{userInfo.nickname}}"></span>
                <span class="arrowdown"></span>
                <div class="couponNewIcon" ne-show="{{newUserPionter}}">券</div>
                <div class="orderPointer" ne-show="{{orderRedPointer}}"></div>
            </div>
            <div class="useroperate">
                <span class="arrowtop"></span>
                <ul class="operatelist">
                    <li class="operateitem"><div class="redpointer" ne-show="{{newUserPionter}}"></div><a ne-href="{{_host+'user.html#coupon'}}" href="user.html#coupon" target="_self">我的优惠券</a></li>
                    <li class="operateitem"><div class="redpointer" ne-show="{{orderRedPointer}}"></div><a ne-href="{{_host+'user.html#order'}}" href="user.html#order" target="_self">我的订单</a></li>
                    <li class="operateitem"><a ne-href="{{_host+'user.html#favorite'}}" href="user.html#favorite" target="_self">我的收藏</a></li>
                    <li class="operateitem"><a ne-href="{{_host+'modifyinfo.html'}}" href="modifyinfo.html" target="_self">个人设置</a></li>
                    <li class="operateitem last"><a ne-href="{{loginedOutUrl}}" href="" target="_self">账号退出</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="m-nav">
        <ul class="menu-list">
            <li class="menuitem" ne-class="{{state.curNav === 'index'?'current':''}}">
                <a ne-href="{{_host+'index.html'}}" href="index.html" target="_self">首页</a>
                <span class="midline"></span>
            </li>
            <li class="menuitem" ne-class="{{state.curNav === 'expert'?'current':''}}">
                <a ne-href="{{_host+'expert.html'}}" href="expert.html" target="_self">专家<div ne-show="expertRedPointer" class="redpointer"></div></a>
                <span class="midline"></span>
            </li>
            <li class="menuitem" ne-class="{{state.curNav === 'match'?'current':''}}">
                <a ne-href="{{_host+'match.html'}}" href="match.html" target="_self">赛事<div ne-show="matchRedPointer" class="redpointer"></div></a>
                <span class="midline"></span>
            </li>
            <li class="menuitem" ne-class="{{state.curNav === 'pay'?'current':''}}">
                <a ne-href="{{_host+'recharge.html'}}" href="recharge.html" target="_self">充值中心</a>
                <span class="midline"></span>
            </li>
            <li class="menuitem" ne-class="{{state.curNav === 'download'?'current':''}}">
                <a ne-href="{{_host+'html/downloadapp.html'}}" href="html/downloadapp.html" target="_blank">下载APP</a>
                <span class="midline"></span>
            </li>
            <!-- <li class="menuitem" ne-class="{{state.curNav === 'about'?'current':''}}">
                <a ne-href="{{_host+'about.html'}}" href="about.html" target="_blank">关于</a>
                <span class="midline"></span>
            </li> -->
            <li class="menuitem msg-center" ne-class="{{state.curNav === 'message'?'current':''}}" ne-mouseenter="getUnreadMessageList()" ne-show="{{isLogin === 'userlogin'}}">
                <div class="msg-bell"><span class="msg-num" ne-show="{{unreadCount > 0}}">{{unreadCount > 99 ? '99+' : unreadCount}}</span></div>
                <div class="msg-list">
                    <div class="m-arrow"></div>
                    <div class="m-item" ne-if="{{unreadCount > 0}}" ne-repeat="item in unreadList" ne-click="readMsg(item, __i)">
                        <p class="time">{{item.msgTime}}</p>
                        <p class="cnt" ne-html="{{'【'+ item.msgTypeName +'】' + (item.msgTitle || item.template || item.msgAbstract)}}"></p>
                    </div>
                    <div class="no-new-msg" ne-if="{{unreadCount <= 0}}">没有新消息</div>
                    <a ne-href="{{_host+'messagecenter.html'}}" target="_self" class="m-msg-center">进入消息中心   &gt;</a>
                </div>
            </li>
        </ul>
    </div>
</div>
<!--头部导航 end-->
<!--登录弹窗 begin-->
<div class="loginframe-pop" ne-class="{{showlogin?'show':''}}">
    <div class="loginframe_cover" ne-click="closeLoginPop()"></div>
    <div class="loginframe_main" ne-class="{{addScale?'scale100':''}}">
        <div class="close" ne-click="closeLoginPop()"></div>
        <div class="logintip">
            <li ne-class="{{loginType===2? 'check':''}}" ne-click="changeLoginType(2)">手机号登录</li>
            <li ne-class="{{loginType===1? 'check':''}}" ne-click="changeLoginType(1)">邮箱登录</li>
        </div>
        <div id="urs-login-block" class="urs-block" ne-class="{{loginType===1?'show':''}}"></div>
        <div id="urs-phone-block" class="urs-block" ne-class="{{loginType===2?'show':''}}"></div>
        <div class="agreement">
            <span class="icon" ne-class="{{loginAgreement?'check':''}}" ne-click="loginAgreementClick()"></span>
            <span>登录或注册即表示同意</span><a ne-href="{{_host+'serviceagreement.html'}}" href="/serviceagreement.html">《红彩服务条款》</a><span>和</span><a href="/privacypolicy.html">《红彩隐私政策》</a>
        </div>
    </div>
</div>
<!--登录弹窗 end-->
<!--新人优惠券弹窗 有手机号 begin-->
<div class="coupon-pop" ne-role="getCoupon">
    <div class="main">
        <div class="bg"></div>
        <div class="title">您收到一个优惠大礼包</div>
        <div class="subtitle">可用于购买专家方案时使用</div>
        <div class="btn" ne-click="getCoupon()"><span>立即领取</span></div>
        <div class="close" ne-click="closeCouponPop()"></div>
    </div>
</div>
<!--新人优惠券弹窗 end-->
<!--新人优惠券弹窗 没有手机号 begin-->
<div class="coupon-pop" ne-role="getCouponBindPhone">
    <div class="main noPhone">
        <div class="bg"></div>
        <div class="title">您收到一个优惠大礼包</div>
        <div class="subtitle">可用于购买专家方案时使用</div>
        <div class="form">
            <div class="line phone" id="phoneErr">
                <input type="text" maxlength="11" data-check="phone" onblur="this.placeholder='请输入手机号'" onfocus="this.placeholder=''" ne-model="phoneNumber" placeholder="请输入手机号">
                <div class="err-info">{{phoneErrText}}</div>
            </div>
            <div class="line" id="codeErr">
                <input type="text" maxlength="6" data-check="code" ne-model="codeNumber" placeholder="请输入验证码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入验证码'"><div class="code" ne-class="{{sixtySeconds?'s60':''}}" ne-click="getCode()" ne-html="{{sixtySecondsText}}"></div>
                <div class="err-info">{{codeErrText}}</div>
            </div>
        </div>
        <div class="btn" ne-click="getCouponBindPhone()"><span>立即领取</span></div>
        <div class="close" ne-click="closeCouponPop()"></div>
    </div>
</div>
<!--新人优惠券弹窗 end-->
<div class="coupon-pop" ne-role="couponClose">
    <div class="autoDisappear">
        <div class="icon"></div>
        <div class="title">未领取优惠券</div>
        <div class="subtitle">可稍后在【我的优惠券里】领取优惠大礼包</div>
    </div>
</div>
<div class="coupon-pop" ne-role="couponSuccess">
    <div class="autoDisappear success">
        <div class="icon"></div>
        <div class="title">领取成功</div>
        <div class="subtitle">可以在【我的优惠券】里查看</div>
    </div>
</div>
<!-- 解绑提示框 -->
<div class="unbind-pop coupon-pop" ne-role="unbindPop">
    <div class="autoDisappear main content">
        <div class="text" ne-html="{{unBindText}}"></div>
        <div class="close" ne-click="closeUnbindPop()"></div>
        <div class="footer">
            <div class="confirm" ne-click="closeUnbindPop()">知道了</div>  
        </div>
    </div>
</div></div>
    <!--头部导航 end-->
    <!--主内容 begin-->
    <div class="content" ne-module="/frontend-pc-bowlder/modules/index/index.js">
        <!--左侧我的信息 begin-->
        <div class="side" ne-class="{{isLogin?'login_side':''}}">
            <!--个人信息-->
            <div class="userInfo" ne-show="{{isLogin === 'userlogin'}}">
                <div class="userHead">
                    <img  ne-src="{{userInfo.avatar?'https://nimg.ws.126.net/?url='+userInfo.avatar+'&thumbnail=100x100&quality=75&type=jpg':'https://img1.cache.netease.com/f2e/products/relottery/platform/images/avatar_100.png'}}"
                        onerror="javascript:this.src='https://img1.cache.netease.com/f2e/products/relottery/platform/images/avatar_100.png';">
                    <div class="nicknameFirst" ne-if="{{!userInfo.avatar}}" ne-html="{{userInfo.nickname.split('')[0]}}"></div>
                </div>
                <div class="nickname"><span>{{userInfo.nickname}}</span> <a href="/modifyinfo.html" target="_self">
                        <div class="editorInfo"></div>
                    </a></div>
                <div class="info_list">
                    <li class="order">
                        <div class="icon"></div>
                        <a href="/user.html#order" target="_self"><span>我的订单</span><span class="gray" ne-show="userInfo.orderCount">({{userInfo.orderCount}})</span></a>
                        <div ne-show="orderRedPointer" class="orderRedPointer">退</div>
                    </li>
                    <li class="favorite">
                        <div class="icon"></div>
                        <a href="/user.html#favorite" target="_self"><span>我的收藏</span><span class="gray" ne-show="userInfo.collectionCount">({{userInfo.collectionCount}})</span></a>
                    </li>
                    <li class="expert">
                        <div class="icon"></div>
                        <a href="/user.html#expert" target="_self"><span>我关注的专家</span><span class="gray" ne-show="userInfo.followExpertCount">({{userInfo.followExpertCount}})</span></a><span
                            ne-show="expertRedPointer" class="redpointer"></span>
                    </li>
                    <li class="match">
                        <div class="icon"></div>
                        <a href="/user.html#match" target="_self"><span>我关注的赛事</span><span class="gray" ne-show="userInfo.followMatchCount">({{userInfo.followMatchCount}})</span></a><span
                            ne-show="matchRedPointer" class="redpointer"></span>
                    </li>
                    <li class="coupon">
                        <div class="icon"></div>
                        <a href="/user.html#coupon" target="_self"><span>我的优惠券</span><span class="gray" ne-show="userInfo.unUserCount && !userInfo.willExpiredCount">({{userInfo.unUserCount}}张可用)</span><span
                                class="gray" ne-show="userInfo.willExpiredCount">({{userInfo.willExpiredCount}}张即将过期)</span></a><span
                            ne-show="couponRedPionter" class="redpointer"></span>
                    </li>
                    <li class="hongdou">
                        <div class="icon"></div>
                        <a href="/recharge.html" target="_self"><span>我的红豆</span><span class="red">({{userInfo.redCurrency?userInfo.redCurrency:'0'}})</span></a>
                        <a href="/recharge.html" target="_self">
                            <div class="pay">充值</div>
                        </a>
                        <div class="rechargeGuide" ne-show="{{rechargeGuideShow}}">
                            <div class="rechargeGuide_close" ne-click="closeRechargeGuide()"></div>
                            剩余红豆不多了。为避免错过竞彩赛事分析，请及时充值！
                        </div>
                    </li>
                    <li class="paid">
                        <div class="icon"></div>
                        <a href="modifyinfo.html?anchor=paid" target="_self"><span>付费服务</span></a>
                    </li>
                </div>
            </div>
            <!--未登录时状态-->
            <div class="hongcaiInfo" ne-if="{{isLogin === 'userunlogin'}}" ne-show="{{isLogin === 'userunlogin'}}">
                <div class="info_focus">
                    <!--ne-module="modules/slide/slide.js" ne-state="events=mouseover;slideMethod:left;interval:5000"-->
                    <div class="info_focus-body" ne-role="slide-body">
                        <div class="info_focus-list" ne-role="slide-scroll">
                            <div class="info_focus_item" ne-role="slide-page">
                                <img  src="https://static.ws.126.net/163/relottery/frontend-pc/images/index_side_unlogin.jpg"
                                    alt="">
                            </div>
                        </div>
                    </div>
                    <!--<div class="info_focus-ctrls">-->
                    <!--<span ne-role="slide-nav" ne-repeat=""></span>-->
                    <!--</div>-->
                </div>
                <div class="info_login" ne-show="{{isLogin === 'userunlogin'}}"><span ne-click="login()">登录</span>|<span
                        ne-click="register()">注册</span></div>
            </div>
            <div ne-show="{{isLogin}}" class="copyright">
                <!-- <p class="black">联系电话：021-61947163</p>
                <p class="black">北京网易传媒有限公司上海分公司</p> -->
                <p class="black">ICP证粤B2-20090191</p>
                <p><span class="copyright-icon">&copy;</span> 1997-2018 网易公司版权所有</p>
            </div>
        </div>
        <!--左侧我的信息 end-->
        <!--中间主内容 begin-->
        <div class="center_content">
            <!--头图切换 begin-->
            <div ne-style="{{indexFocus.length>0?'visibility:visible':''}}" class="focus" ne-module="/frontend-pc-bowlder/modules/slide/slide.js"
                ne-state="events=mouseover;slideMethod:left;interval:5000">
                <div class="focus-body" ne-role="slide-body">
                    <div class="focus-list" ne-role="slide-scroll">
                        <div class="focus_item" ne-repeat="item in indexFocus" ne-role="slide-page">
                            <a href="{{item.redirectUrl}}" target="_blank" title="{{item.description}}"><img  ne-src="{{item.imgUrl}}"></a>
                        </div>
                    </div>
                </div>
                <div class="focus-ctrls" ne-style="margin-left:{{-(indexFocus.length*15-9)/2}}px">
                    <span ne-role="slide-nav" ne-hide="{{indexFocus.length === 1}}" ne-repeat="1..indexFocus.length"></span>
                </div>
                <div class="focus-prev" ne-role="slide-prev" ne-hide="{{indexFocus.length === 1}}"></div>
                <div class="focus-next" ne-role="slide-next" ne-hide="{{indexFocus.length === 1}}"></div>
            </div>
            <!--头图切换 end-->
            <!-- 数据助手 begin -->
            <!-- <div class="data-helper">
                <a class="panel" href="datahelper.html#tab=0">
                    <div class="logo flt"></div>
                    <div class="txt flt">
                        <h3>盘路榜</h3>
                        <p class="desp">
                            <span class="desp-txt" ne-if="{{dataHelper.dishRoadRankCount <= 0}}">暂无上榜球队</span>
                            <span class="desp-txt" ne-if="{{dataHelper.dishRoadRankCount > 0}}"><strong>{{dataHelper.dishRoadRankCount}}</strong>个上榜球队</span>
                        </p>
                    </div>
                </a>
                <a class="panel z-jc" href="datahelper.html#tab=1">
                    <div class="logo flt"></div>
                    <div class="txt flt">
                        <h3>交叉盘</h3>
                        <p class="desp">
                            <span class="desp-txt" ne-if="{{dataHelper.crossTradeListCount <= 0}}">暂无交叉盘数据</span>
                            <span class="desp-txt" ne-if="{{dataHelper.crossTradeListCount > 0}}"><strong>{{dataHelper.crossTradeListCount}}</strong>组交叉盘</span>
                        </p>
                    </div>
                </a>
                <a class="panel z-ac" href="datahelper.html#tab=2">
                    <div class="logo flt"></div>
                    <div class="txt flt">
                        <h3>澳彩五星指数</h3>
                        <p class="desp">
                            <span class="desp-txt" ne-if="{{dataHelper.macauStarHandicapCount <= 0}}">暂无澳彩五星指数</span>
                            <span class="desp-txt" ne-if="{{dataHelper.macauStarHandicapCount > 0}}"><strong>{{dataHelper.macauStarHandicapCount}}</strong>个最新推荐</span>
                        </p>
                    </div>
                </a>
            </div> -->
            <!-- 数据助手 end -->
            <!--免费专区 begin-->
            <div class="free" ne-show="freeList">
                <div class="free_hd">
                    <div class="freeIcon">FREE</div><span>免费专区</span>
                    <a href="/free.html">
                        <div class="freeMore"><span>更多免费内容</span>
                            <div class="moreIcon"></div>
                        </div>
                    </a>
                </div>
                <div class="free_bd">
                    <ul>
                        <li class="scheme" ne-repeat="item in freeList.threads">
                            <div class="expert">
                                <div class="pic">
                                    <a ne-href="/expertpage.html?expertId={{item.expert.userId}}" href="">
                                        <img  ne-src="{{item.expert.avatar?item.expert.avatar+'?imageView&thumbnail=30y30&quality=85':'https://img1.cache.netease.com/f2e/products/relottery/platform/images/avatar_60.png'}}"
                                            onerror="javascript:this.src='https://img1.cache.netease.com/f2e/products/relottery/platform/images/avatar_60.png';"
                                            src="">
                                    </a>
                                </div>
                                <a ne-href="/expertpage.html?expertId={{item.expert.userId}}" href="" ne-html="{{item.expert.nickname}}"></a>
                            </div>
                            <h3><a ne-href="/schemedetail.html?threadId={{item.threadId}}" href="" ne-html="{{item.threadTitle}}"></a></h3>
                            <div class="match">
                                <div class="info">[<span ne-html="{{item.earliestMatch.categoryName}}"></span>]
                                    <span ne-html="item.earliestMatch.leagueName"></span> | <span ne-html="{{item.earliestMatch.matchTime}}"></span></div>
                                <div class="info"><a href="" ne-href="/matchdetail.html?matchId={{item.earliestMatch.matchInfoId}}">{{item.earliestMatch.categoryId===1?item.earliestMatch.homeName:item.earliestMatch.guestName}}
                                        {{item.earliestMatch.matchStatus!=2&&item.earliestMatch.matchStatus!=3?'VS':(item.earliestMatch.categoryId===1?item.earliestMatch.homeScore+':'+item.earliestMatch.guestScore:item.earliestMatch.guestScore+':'+item.earliestMatch.homeScore)}}
                                        {{item.earliestMatch.categoryId===1?item.earliestMatch.guestName:item.earliestMatch.homeName}}</a></div>
                            </div>
                            <div class="price">免费</div>
                        </li>
                        <li class="article" ne-repeat="item in freeList.news">
                            <div class="pic">
                                <a ne-href="{{item.url}}" href=""><img  ne-src="{{item.imgsrc.replace(/^(http|https)\:\/\//,'https://')}}?imageView&thumbnail=179y87&quality=85"
                                        src="" alt="{{item.title}}"></a>
                            </div>
                            <h3><a ne-href="{{item.url}}" href="" ne-html="{{item.title}}"></a></h3>
                        </li>
                    </ul>
                </div>
                <div class="prev" ne-click="freeListPrev()" ne-if="!freeListBtnShow"></div>
                <div class="next" ne-click="freeListNext()" ne-if="freeListBtnShow"></div>
            </div>
            <!--免费专区 end-->
            <!--专家推荐 begin-->
            <div class="expertRecommend" ne-show="{{recommendExpert.football.length > 0 && recommendExpert.basketball.length > 0}}">
                <div class="football">
                    <div class="expert_hd">
                        <div class="icon"></div><span class="middle">足球专家</span>
                        <a href="/expert.html?tab=1">
                            <div class="expertMore"><span class="middle">更多</span>
                                <div class="moreIcon"></div>
                            </div>
                        </a>
                    </div>
                    <div class="expert_bd">
                        <li ne-class="{{__i<2?'b_top':''}} {{__i%2===1?'p_right':''}}" ne-repeat="item in recommendExpert.football">
                            <div class="pic">
                                <a href="javascript:;" ne-href="/expertpage.html?expertId={{item.userId}}">
                                    <img  ne-src="{{item.avatar?item.avatar+'?imageView&thumbnail=60y60&quality=85':'https://img1.cache.netease.com/f2e/products/relottery/platform/images/avatar_60.png'}}"
                                        onerror="javascript:this.src='https://img1.cache.netease.com/f2e/products/relottery/platform/images/avatar_60.png';">
                                    <div class="nicknameFirst" ne-if="{{!item.avatar}}" ne-html="{{item.nickname.split('')[0]}}"></div>
                                </a>
                            </div>
                            <h3><a href="javascript:;" ne-href="/expertpage.html?expertId={{item.userId}}" ne-html="{{item.nickname}}"></a></h3>
                            <div class="slogan">{{item.slogan?item.slogan:''}}</div>
                            <div class="introduction">{{item.desc?item.desc:''}}</div>
                            <div class="followbtn" ne-class="{{'expertfoot'+__i}} {{item.hasFollowed?'_up':'_down'}}">
                                <div class="follow" ne-click="followexpert(item.userId,item)" ne-html="{{item.followLoad?'关注中...':'+关注'}}"></div>
                                <div class="unfollow" ne-click="unfollowexpert(item.userId,item)">
                                    <span class="nohover" ne-html="{{item.followLoad?'取消中...':'已关注'}}"></span>
                                    <span class="ishover" ne-html="{{item.followLoad?'取消中...':'取消关注'}}"></span>
                                </div>
                            </div>
                        </li>
                    </div>
                </div>
                <div class="basketball">
                    <div class="expert_hd">
                        <div class="icon"></div><span class="middle">篮球专家</span>
                        <a href="/expert.html?tab=2">
                            <div class="expertMore"><span class="middle">更多</span>
                                <div class="moreIcon"></div>
                            </div>
                        </a>
                    </div>
                    <div class="expert_bd">
                        <li ne-class="{{__i<2?'b_top':''}} {{__i%2===1?'p_right':''}}" ne-repeat="item in recommendExpert.basketball">
                            <div class="pic">
                                <a href="javascript:;" ne-href="/expertpage.html?expertId={{item.userId}}">
                                    <img  ne-src="{{item.avatar?item.avatar+'?imageView&thumbnail=60y60&quality=85':'https://img1.cache.netease.com/f2e/products/relottery/platform/images/avatar_60.png'}}"
                                        onerror="javascript:this.src='https://img1.cache.netease.com/f2e/products/relottery/platform/images/avatar_60.png';">
                                    <div class="nicknameFirst" ne-if="{{!item.avatar}}" ne-html="{{item.nickname.split('')[0]}}"></div>
                                </a>
                            </div>
                            <h3><a href="javascript:;" ne-href="/expertpage.html?expertId={{item.userId}}" ne-html="{{item.nickname}}">丁卯小生</a></h3>
                            <div class="slogan">{{item.slogan?item.slogan:''}}</div>
                            <div class="introduction">{{item.desc?item.desc:''}}</div>
                            <div class="followbtn" ne-class="{{'expertbasket'+__i}} {{item.hasFollowed?'_up':'_down'}}">
                                <div class="follow" ne-click="followexpert(item.userId,item)" ne-html="{{item.followLoad?'关注中...':'+关注'}}"></div>
                                <div class="unfollow" ne-click="unfollowexpert(item.userId,item)">
                                    <span class="nohover" ne-html="{{item.followLoad?'取消中...':'已关注'}}"></span>
                                    <span class="ishover" ne-html="{{item.followLoad?'取消中...':'取消关注'}}"></span>
                                </div>
                            </div>
                        </li>
                    </div>
                </div>
            </div>
            <!--专家推荐 end-->

            <!--叫我分割线-->
            <div class="cut_off"></div>
            <!--叫我分割线-->
            <!--方案推荐 begin-->
            <div class="recommendScheme" ne-id="{{schemeListModule}}" ne-role="schemeList_index"></div>
            <!--方案推荐 end-->
            <!--右侧 意见反馈+返回顶部 begin-->
            <div ne-module="/frontend-pc-bowlder/modules/fixed_mod/fixed_mod.js">
<div class="fixed_right" ne-class="{{fixed_pos?'fixed_pos':''}}">
    <a href="/match.html?nav=3">
        <div class="sfc" ne-show="state.show">
            <div class="vol" ne-html="state.degree?'第'+state.degree+'期':'第2017001期'"></div>
            <div class="num">14场比赛</div>
            <div class="threadNum">{{state.threadNum}}个方案<span class="triangle"></span></div>
        </div>
    </a>
    <div class="appqrcode">
        <div class="pic">
        </div>
    </div>
    <div class="feadback" ne-click="editSuggestion()"></div>
    <div class="scrollTop" ne-show="myState.showScroll" ne-class="{{myState.showScroll?'scroll_fixed':''}}" ne-click="scrollTop()"></div>
</div></div>
            <!--右侧 意见反馈+返回顶部 end-->
        </div>
        <!--中间主内容 end-->
        <!--未登录优惠券引导 begin-->
        <div class="couponGuide" ne-show="{{isLogin === 'userunlogin'}}">
            <div class="guide_main">
                <div class="guideImg"></div>
                <div class="guideText">
                    <h3>优惠空前，注册即送！</h3>
                    <h4>使用网易通行证即可登录</h4>
                </div>
                <div class="btn">
                    <div class="register" ne-click="couponRegister()">注册</div>
                    <div class="login" ne-click="couponLogin()">登录</div>
                </div>
            </div>
            <div class="close_btn" ne-click="closeCouponGuide()"></div>
        </div>
        <!--未登录优惠券引导 end-->
    </div>
    <!--主内容 end-->
    <!-- 弹框模块begin -->
    <div ne-show="isShow" ne-id="commonModal" class="m-modal" ne-module="/frontend-pc-bowlder/modules/modal/modal.js">
<div ne-show="modalOptions.backdrop" class="backdrop" id="backdrop"></div>
<div ne-class="common-modal {{modalOptions.type=='autodispear'?'autodispear':''}} {{modalOptions.type=='confirm'||modalOptions.type=='notice'?'confirm':''}} {{modalOptions.type=='prompt'?'prompt':''}} {{modalOptions.type=='statement'?'statement':''}} {{modalOptions.type=='pay'?'pay':''}} {{modalOptions.type=='wechatpay'?'wechatpay':''}}" id="modals_box">
    <div ne-show="modalOptions.type=='autodispear'" class="main">
        <div class="modal-body">
            <div ne-class="statusicon {{modalOptions.success?'success':'fail'}}"></div>
            <p class="bodytitle" ne-html="modalOptions.bodyTitle"></p>
            <p class="bodycontent" ne-html="modalOptions.bodyContent"></p>
        </div>
    </div>
    <div ne-show="modalOptions.type=='confirm' || modalOptions.type=='notice'" class="confirm">
        <div class="modal-body">
            <p class="bodytitle" ne-html="modalOptions.bodyTitle"></p>
            <p class="bodycontent" ne-html="modalOptions.bodyContent"></p>
        </div>
    </div>
    <div ne-show="modalOptions.type=='prompt'" class="modalmain">
        <div ne-show="modalOptions.headerTitle" class="modal-header">
            <h3>{{modalOptions.headerTitle}}</h3>
        </div>
        <form id="form_7559" name="form_7559" class="common_form" action="https://match.hongcai.163.com/activeapi/service/form/v1/7559/submit?_charset=UTF-8&_decode=UTF-8" method="POST" target="hiddenIframe">
            <iframe  id="hiddenIframe" name="hiddenIframe" width="0" height="0" style="display:none" frameborder="0" src=""></iframe>
            <input name="_success" type="hidden" id="hiddeninfo_success">
            <input name="_fail" type="hidden" id="hiddeninfo_fail">
            <textarea id="form_7559_feedback" class="common_form_desc form_7559_feedback" name="feedback"  placeholder="请告诉我们您的问题和建议"></textarea>
            <div class="form_common_form_btns">
                <input type="button" class="form_btn-cancel" value="取消" id="btn-cancel">
                <input type="submit" class="common_form_submit form_btn-sure" value="提交">
            </div>
        </form>
    </div>

    <div ne-show="modalOptions.type=='pay'" class="modalmain">
        <div class="modal-body">
            <div class="pay-success">
                <p class="paytip">支付成功请点击</p>
                <span class="btn btn-sure" ne-show="modalOptions.actionButtonText" ne-click="ok();">已完成付款</span>
            </div>
            <div class="pay-fail">
                <p class="paytip">遇到问题请点击</p>
                <span type="button" class="btn btn-cancel" ne-show="modalOptions.closeButtonText" ne-click="close()">重新支付</span>
            </div>
        </div>
        <div class="modal-footer">
            <p class="paytip">
                如有疑问，请联系客服电话:010-82558914 &nbsp; 邮箱:xuening@corp.netease.com  
            </p>
        </div>
    </div>

    <div ne-show="modalOptions.type=='wechatpay'" class="modalmain">
        <div class="modal-header">微信支付</div>
        <div class="modal-body">
            <p class="bodytitle">请使用微信扫描下方二维码进行支付。</p>
            <div class="bodycontent">
                <div ne-role="qrcode" ne-id="qrcode" ne-show="modalOptions.codeurl" class="wechatpay-qrcode"></div>
            </div>
        </div>
    </div>

    <div ne-show="modalOptions.type=='statement'" class="modalmain">
        <div ne-show="modalOptions.headerTitle" class="modal-header">
            <h3>{{modalOptions.headerTitle}}</h3>
        </div>
        <div class="modal-body">
            <div class="statement-wrap">
                <div class="statement-main">
                    <!-- <p class="bodytitle">免责声明</p> -->
                    <div class="bodycontent">
                        <p>风险提示：</p>
                        <p>购彩仅为娱乐，请量力而行！</p>
                        <p>本公司已力求本资讯内容的客观、公正，但文中的观点、结论和建议仅供参考，不包含本公司对投注建议的确定性判断。彩民朋友不应将本资讯作为投注决策的唯一参考因素，亦不应认为本资讯可以取代自己的判断。本资讯不构成个人投注建议，也没有考虑到个别客户特殊的投注目标、财务状况或需求。客户应考虑本资讯中的任何意见或建议是否符合其特定状况。彩民朋友在使用本资讯时，应注意甄别、慎重、正确使用本资讯，独立进行投注决策，防止被误导。</p>
                        <p>负责声明：</p>
                        <p>本资讯基于独立、客观、公正和审慎的原则制作，信息均来源于公开资料，本公司对这些信息的准确性和完整性不作任何保证。在任何情况下，本资讯中的信息或所表达的意见并不构成对任何人的投注建议，本公司及其雇员不对使用本资讯及其内容所引发的任何直接或间接损失负任何责任。本资讯所载的资料、意见及推测仅反映本公司于发布本资讯当日的判断；在不同时期，本公司可发出与资讯所载资料、意见及推测不一致的其他资讯；本公司不保证本资讯所含信息保持在最新状态。同时，本公司对本资讯所含信息可在不发出通知的情况下作出修改，彩民朋友应当自行关注相应的更新或修改。本资讯版权归本公司所有。本公司保留所有权利。未经本公司事先书面许可，任何机构和个人均不得以任何形式翻版、复制、引用或转载，否则，本公司将保留随时追究其法律责任的权利。</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div ne-if="modalOptions.type!='autodispear' && modalOptions.type!='pay' && modalOptions.type!='wechatpay' && modalOptions.type!='prompt'" class="modal-footer">
        <span type="button" class="btn btn-cancel" ne-show="modalOptions.closeButtonText" ne-click="close()">{{modalOptions.closeButtonText}}</span><span class="btn btn-sure" ne-show="modalOptions.actionButtonText" ne-click="ok();">{{modalOptions.actionButtonText}}</span>
    </div>
    <span ne-if="modalOptions.type!='autodispear' && modalOptions.type!='pay'" class="modal-closebtn" ne-click="close()"></span>
</div>
</div>
    <!-- 弹框模块 end -->
    <div style="display:none" ne-module="/frontend-pc-bowlder/modules/footer/footer.html">
<div class="footer-area"><span class="copyright-icon">&copy;</span> 1997-2018 网易公司版权所有</div>

<!-- START NetEase Devilfish 2006 -->
<script src="//analytics.163.com/ntes.js" type="text/javascript"></script>
<script type="text/javascript">
    _ntes_nacc = "hongcai";
    if (window.neteaseTracker) {
    	neteaseTracker();
    	neteaseClickStat(1);
    }
</script>
<!-- END NetEase Devilfish 2006 -->
</div>
    <script src="https://static.ws.126.net/163/relottery/frontend-pc-bowlder/collect/foot~b8c5e91c5d46.js" charset="utf-8"></script>
</body>

</html>