<!DOCTYPE html>
<!--STATUS OK-->


 
 
 
 


	
                    























<html>
<head>
    
<meta property="wb:webmaster" content="7d121ed84422cf6f" />

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<meta name="Description" content="百度学术搜索，是一个提供海量中英文文献检索的学术资源搜索平台，涵盖了各类学术期刊、学位、会议论文，旨在为国内外学者提供最好的科研体验。">
<meta name="baidu-site-verification" content="hKBucg66WD" />

	
	<link rel="dns-prefetch" href="//s1.bdstatic.com"/>
	<link rel="dns-prefetch" href="//t1.baidu.com"/>
	<link rel="dns-prefetch" href="//t2.baidu.com"/>
	<link rel="dns-prefetch" href="//t3.baidu.com"/>
	<link rel="dns-prefetch" href="//t10.baidu.com"/>
	<link rel="dns-prefetch" href="//t11.baidu.com"/>
	<link rel="dns-prefetch" href="//t12.baidu.com"/>
    
    <title>百度学术 - 保持学习的态度</title>
    
<link rel="stylesheet" href="http://s1.bdstatic.com/r/www/cache/mid/static/xueshu/css/index_be18a2a.css">
<style type="text/css">
@font-face {font-family: "iconfont";
  src: url('/r/www/cache/mid/static/xueshu/iconfont/iconfont.eot?t=1478761320176'); /* IE9*/
  src: url('/r/www/cache/mid/static/xueshu/iconfont/iconfont.eot?t=1478761320176#iefix') format('embedded-opentype'), /* IE6-IE8 */
  url('/r/www/cache/mid/static/xueshu/iconfont/iconfont.woff?t=1478761320176') format('woff'), /* chrome, firefox */
  url('/r/www/cache/mid/static/xueshu/iconfont/iconfont.ttf?t=1478761320176') format('truetype'), /* chrome, firefox, opera, Safari, Android, iOS 4.2+*/
  url('/r/www/cache/mid/static/xueshu/iconfont/iconfont.svg?t=1478761320176#iconfont') format('svg'); /* iOS 4.1- */
}
</style>

    

<script>

var bds={
    se:{},
    comm : {
        ishome : 1,
        sid : "",
        user : "",
		username : "",
		isLogin : "0",
		sugHost : "http://suggestion.baidu.com",
        initTime: "1570347109",
        token: "33571d4aa41b19bab6822c68a980437c4f1400027ef086479edae38a0dcf6826",
                loginAction : [],
        taskTipsShow: 1,
        subpro: 'xueshu_resindex',
        topBannerInfo: {
            startDate: "2018\/05\/28",
            endDate: "2018\/10\/11",
            width: "260",
            height: "130",
            id: "jiangxuejin",
            imgUrl: "http:\/\/ps-scholar-static.bj.bcebos.com\/homepage%2Fbaidujiangxuejing.jpeg",
            jumpUrl: "http:\/\/scholarship.baidu.com\/"
        }
    }
};
var bdUser = null;
// 百度统计JS-API部署(http://tongji.baidu.com/open/api/more?p=guide_overview)
var _hmt = _hmt || [];

function ns_c_xs(q){
    var p = encodeURIComponent(window.document.location.href), sQ = '', sV = '', mu='', img = window["BD_PS_C" + (new Date()).getTime()] = new Image();
    for (v in q) {
        sV = q[v];
        sQ += v + "=" + sV + "&";
    }
    var fr = '&fr=index';
    img.src = "http://nsclick.baidu.com/v.gif?pid=201&pj=mp_xueshu&rsv_sid=&" + sQ + "path="+p+"&t="+new Date().getTime() + fr;
    return true;
}
</script>
<script type="text/javascript">
																					            																										

//https域名转换工具
bds.util = bds.util || {};
bds.util.domain = (function(){
	var list = {
        "graph.baidu.com": "http://graph.baidu.com",
		"p.qiao.baidu.com":"http://p.qiao.baidu.com",
		"vse.baidu.com":"http://vse.baidu.com",
		"hdpreload.baidu.com":"http://hdpreload.baidu.com",
		"lcr.open.baidu.com":"http://lcr.open.baidu.com",
		"kankan.baidu.com":"http://kankan.baidu.com",
		"xapp.baidu.com":"http://xapp.baidu.com",
		"dr.dh.baidu.com":"http://dr.dh.baidu.com",
		"xiaodu.baidu.com":"http://xiaodu.baidu.com",
		"sensearch.baidu.com":"http://sensearch.baidu.com",
		"s1.bdstatic.com":"http://s1.bdstatic.com",
		"olime.baidu.com":"http://olime.baidu.com",
		"app.baidu.com":"http://app.baidu.com",
		"i.baidu.com":"http://i.baidu.com",
		"c.baidu.com":"http://c.baidu.com",
		"sclick.baidu.com":"http://sclick.baidu.com",
		"nsclick.baidu.com":"http://nsclick.baidu.com",
		"sestat.baidu.com":"http://sestat.baidu.com",
		"eclick.baidu.com":"http://eclick.baidu.com",
		"api.map.baidu.com":"http://api.map.baidu.com",
		"ecma.bdimg.com":"http://ecma.bdimg.com",
		"ecmb.bdimg.com":"http://ecmb.bdimg.com",
        "t1.baidu.com":"http://t1.baidu.com",
        "t2.baidu.com":"http://t2.baidu.com",
        "t3.baidu.com":"http://t3.baidu.com",
		"t10.baidu.com":"http://t10.baidu.com",
		"t11.baidu.com":"http://t11.baidu.com",
		"t12.baidu.com":"http://t12.baidu.com",
		"i7.baidu.com":"http://i7.baidu.com",
		"i8.baidu.com":"http://i8.baidu.com",
		"i9.baidu.com":"http://i9.baidu.com",
		"b1.bdstatic.com":"http://b1.bdstatic.com",
		"ss.bdimg.com":"http://ss.bdimg.com",
		"opendata.baidu.com":"http://opendata.baidu.com",
		"api.open.baidu.com":"http://api.open.baidu.com",
		"tag.baidu.com":"http://tag.baidu.com",
		"f3.baidu.com":"http://f3.baidu.com",
		"s.share.baidu.com":"http://s.share.baidu.com",
		"bdimg.share.baidu.com":"http://bdimg.share.baidu.com",
        "1.su.bdimg.com":"http://1.su.bdimg.com",
        "2.su.bdimg.com":"http://2.su.bdimg.com",
        "3.su.bdimg.com":"http://3.su.bdimg.com",
        "4.su.bdimg.com":"http://4.su.bdimg.com",
        "5.su.bdimg.com":"http://5.su.bdimg.com",
        "6.su.bdimg.com":"http://6.su.bdimg.com",
        "7.su.bdimg.com":"http://7.su.bdimg.com",
        "8.su.bdimg.com":"http://8.su.bdimg.com",
        "hiphotos.baidu.com":"http://hiphotos.baidu.com",
        "xueshu.baidu.com":"http://xueshu.baidu.com",
        "upload.xueshu.baidu.com":"http://upload.xueshu.baidu.com",
        "a.xueshu.baidu.com":"http://a.xueshu.baidu.com"
	};
	var get = function(url) {
		if(location.protocol === "http:") {
			return url;
		}
		var reg = /^(http[s]?:\/\/)?([^\/]+)(.*)/,
		matches = url.match(reg);
		//判断传入参数是域名还是地址，分别做处理
		url = list.hasOwnProperty(matches[2])&&(list[matches[2]] + matches[3]) || url;
		return url;
	},
	set = function(kdomain,vdomain) {
		list[kdomain] = vdomain;
	};
	return {
		get : get,
		set : set
	}
})();
</script>

</head>

<body>
    <div id="wrapper">
    
<div id="u" class="index_u ">
<span id="nav_tab"><a href="http://www.baidu.com/" target="_blank" onmousedown="return ns_c_xs({'fm':'behs','tab':'tj_baidu'})">网页</a><a href="http://news.baidu.com/" target="_blank" onmousedown="return ns_c_xs({'fm':'behs','tab':'tj_news'})">新闻</a><a href="http://tieba.baidu.com/" target="_blank" onmousedown="return ns_c_xs({'fm':'behs','tab':'tj_tieba'})">贴吧</a><a href="http://zhidao.baidu.com/" target="_blank" onmousedown="return ns_c_xs({'fm':'behs','tab':'tj_zhidao'})">知道</a><a href="http://music.baidu.com/" target="_blank" onmousedown="return ns_c_xs({'fm':'behs','tab':'tj_music'})">音乐</a><a href="http://image.baidu.com/" target="_blank" onmousedown="return ns_c_xs({'fm':'behs','tab':'tj_img'})">图片</a><a href="http://v.baidu.com/" target="_blank" onmousedown="return ns_c_xs({'fm':'behs','tab':'tj_video})">视频</a><a href="http://map.baidu.com/" target="_blank" onmousedown="return ns_c_xs({'fm':'behs','tab':'tj_map'})">地图</a><a href="http://wenku.baidu.com/" target="_blank" onmousedown="return ns_c_xs({'fm':'behs','tab':'tj_wenku'})">文库</a></span><a href="http://www.baidu.com/" target="_blank" onmousedown="return ns_c_xs({'fm':'behs','tab':'tj_home_baidu'})">百度首页</a><a id="lb" href="https://passport.baidu.com/v2/?login&tpl=xueshu&u=http%3A%2F%2Fxueshu.baidu.com%2F" onclick="return false;"  onmousedown="return user_c({'fm':'set','tab':'login'})">登录</a><a href="https://passport.baidu.com/v2/?reg&regType=1&tpl=xueshu&u=http%3A%2F%2Fxueshu.baidu.com%2F"  onmousedown="return user_c({'fm':'set','tab':'reg'})" target="_blank" class="reg">注册</a><span id="setting"><a class="settingicon" href="javascript:;">设置</a><div class="menuarrow"><i class="c-icon c-icon-menu-triangle-border"></i></div><div id="setMenu" class="menuDropList"><div><a id="setpref" href="javascript:;"  onmousedown="return ns_c_xs({'fm':'behs','tab':'setting'})">搜索设置</a><a href="javascript:;" class="feedback" onmousedown="return ns_c_xs({'fm':'behs','tab':'tj_feedback'})">意见反馈</a><a href="javascript:;" class="hideindexnav" onmousedown="return ns_c_xs({'fm':'behs','tab':'tj_hidenav'})">隐藏导航</a></div></div></span></div>
<div id="s_mod_msg" class="s-mod-msg" style="right: 20px;display:none"></div>



    <div id="content">
    <div class="content_wr">
    <div id="m">
        
<div id="lg">
<img src="http://s1.bdstatic.com/r/www/cache/mid/static/xueshu/img/logo_4b1971d.gif" width="270px" height="129px">
</div>

        
<div id="fm">
<form name="f" action="/s" id="form">
	<span class="s_ipt_wr iptfocus">
	<input type="text" name="wd" id="kw" maxlength="256" class="s_ipt" autocomplete="off">
	</span>
	<!-- rsv_bp=0首页搜索框 -->
	<input type="hidden" name="rsv_bp" value="0">

		<input type="hidden" name="tn" value="SE_baiduxueshu_c1gjeupa">
		<!-- rsv_spt=3表示从传统首页进入结果页 -->
	<input type="hidden" name="rsv_spt" value="3">
	<input type="hidden" name="ie" value="utf-8">
	<input type="hidden" name="f" value="8">
    <input type="hidden" name="rsv_sug2" value="1">
    <input type="hidden" name="sc_f_para" value="sc_tasktype={firstSimpleSearch}">
        
	<span class="s_btn_wr">
	    <input type="submit" id="su" value="百度一下" class="s_btn" onmousedown="return ns_c_xs({'fm':'behs','tab':'btn_1'})">
	</span>
</form>








<div class="sc_adv_triangle_down ">
        <span><i class="iconfont">&#xe62c;</i></span>
    </div>

<div id="sc_adv">
<form action="/s" id="sc_adv_frm">
    <div class="sc_adv_hatr">
        <span class="sc_adv_label">包含全部检索词</span>
        <span><input type="text" placeholder="" data-type="all" data-name="" class="sc_adv_keyword_ipt sc-input sc_adv_keyword1" maxlength="100" value=""></span>
    </div>
    <div class="sc_adv_hatr">
        <span class="sc_adv_label">包含精确检索词</span>
        <span><input type="text" placeholder="多个检索词以逗号，分隔" data-type="precise" data-name="" class="sc_adv_keyword_ipt sc-input sc_adv_keyword2" maxlength="100" value=""></span>
    </div>
    <div class="sc_adv_hatr">
        <span class="sc_adv_label">包含至少一个检索词</span>
        <span><input type="text" placeholder="多个检索词以逗号，分隔" data-type="or" data-name="" class="sc_adv_keyword_ipt sc-input" maxlength="100" value=""></span>
    </div>
    <div class="sc_adv_hatr">
        <span class="sc_adv_label">不包含检索词</span>
        <span><input type="text" placeholder="多个检索词以逗号，分隔" data-type="not" data-name="" class="sc_adv_keyword_ipt sc-input" maxlength="100" value=""></span>
    </div>
    <div class="sc_adv_hatr" style="margin-bottom:23px;">
        <span class="sc_adv_label">出现检索词的位置</span>
        <span class="sc_adv_keyword_pos">
            <div class="sc_adv_dropdown_btn">
                <span class="sc_adv_dropdown_text">
                                    <a href="javascript:;"  data-name="">文章任何位置</a>
                                </span>
                <i class="c-icon c-icon-arrow-down-gray"></i>
                <div class="sc_adv_dropdown_group sc_adv_dropdown_group1 sc_adv_dropgroup_title" data-index="1">
                                    <a href="javascript:;"  data-name="intitle">位于文章标题</a>
                                </div>
            </div>
        </span>
    </div>
    <div class="sc_adv_hatr">
        <span class="sc_adv_label">作者</span>
        <span><input type="text" placeholder="请输入作者名字" data-name="author" class="sc_adv_txin sc-input sc_adv_author" maxlength="50" value=""></span>
    </div>
    <div class="sc_adv_hatr">
        <span class="sc_adv_label">出版物</span>
        <span class="sc_adv_jour_conf">
            <span class="sc_adv_dropdown_btn">
                <span class="sc_adv_dropdown_text">
                                        <a href="javascript:;"  data-name="journal" data-holder="请输入期刊名称">期刊</a>
                                    </span>
                <i class="c-icon c-icon-arrow-down-gray"></i>
                <div class="sc_adv_dropdown_group sc_adv_dropgroup_pub" data-index="2">
                                        <a href="javascript:;" data-name="conference" data-holder="请输入会议名称">会议</a>
                                    </div>
            </span>
            <input type="text" placeholder="请输入期刊名称" data-name="journal" class="sc-input sc_adv_txin sc_adv_pubipt" maxlength="100" value="">
        </span>
    </div>
    <div class="sc_adv_hatr">
        <span class="sc_adv_label">发表时间</span>
        <span class="sc_adv_year">
        <input type="text" data-nolog="1" pattern="[0-9]*" size="4" placeholder="年" maxlength="4" name="" class="sc-input sc-input-xmini sc_adv_input_ylo" value="">&nbsp;-&nbsp;<input type="text" data-nolog="1" pattern="[0-9]*" size="4" placeholder="年" maxlength="4" name="" class="sc-input sc-input-xmini sc_adv_input_yhi" value="">
        </span>
    </div>
    <div class="sc_adv_hatr">
        <span class="sc_adv_label">语言检索范围</span>
        <span class="sc_adv_dropdown_btn">
            <span class="sc_adv_dropdown_text sc_adv_lang_sel">
                <a href="javascript:;" data-id="0">不限</a>
            </span>
            <i class="c-icon c-icon-arrow-down-gray"></i>
            <div class="sc_adv_dropdown_group sc_adv_dropgroup_lang">
                                <a href="javascript:;" data-id="0" class="sc_adv_lang_hide">不限</a>
                                <a href="javascript:;" data-id="1">英文</a>
                                <a href="javascript:;" data-id="2">中文</a>
                            </div>
        </span>
    </div>
    <span class="sc_adv_wd_hidden"></span>
    <input type="hidden" name="tn" value="SE_baiduxueshu_c1gjeupa">
        <input type="hidden" name="bs" value="">
    <input type="hidden" name="ie" value="utf-8">
    <input type="hidden" name="sc_f_para" value="sc_tasktype={firstAdvancedSearch}">
    <input type="hidden" name="sc_from" value="">
    <input type="hidden" name="sc_as_para" value="">
    <span class="sc_adv_sub s_btn_wr"><input type="submit" value="搜索" class="sc_adv_sub_btn s_btn"></span>
</form>
</div>
</div>


        
<div id="navcard_wrapper" class="xpath-log" data-click="{'act_block':'navcard','fm':'beha'}">
    <div class="navlist_content" data-click="{'act_mod':'view'}">
    </div>
</div>
<script id="navcardTemp" type="text/html">
{{each navData as item}}<a href="{{item.address}}" class="navitem" target="_blank" data-click="{'button_tp':'navitem'}">{{if item.bpic}}<img src="{{item.bpic}}" alt="" width="110" height="30">{{else}}{{item.name}}{{/if}}</a>{{/each}}<a href="javascript:;" class="navitem addnav_btn OP_LOG_BTN" data-click="{'button_tp':'addbtn'}"><i class="c-icon c-icon-add-gray"></i></a>
</script>
<script id="editOwnNavTemp" type="text/html">
{{each navData as item}}<span class="addednavitem navitem"><img src="{{item.spic}}" alt="" class="navimg"><span class="name" data-url="{{item.address}}">{{item.name}}</span><a href="javascript:;" class="navitemdel c-icon-close-gray-hover OP_LOG_BTN"><i class="c-icon c-icon-close-gray"></i></a></span>{{/each}}
</script>

<script id="editHotNavTemp" type="text/html">
{{each hotNavData as item}}<span class="hotnavitem OP_LOG_BTN{{if item.added==1}} navadded{{else}} navnormal{{/if}}"><img src="{{item.spic}}" alt="" class="navimg"><i class="c-icon c-icon-ok navaddedicon"></i><span class="name" data-url="{{item.address}}">{{item.name}}</span>{{if item.added==1}}<i class="c-icon c-icon-del-org addbtn"></i>{{else}}<i class="c-icon c-icon-add-org addbtn"></i>{{/if}}</span>{{/each}}
</script>

<script id="naveditTemp" type="text/html">
<h3>管理网站</h3><a href="javascript:;" class="c-icon-close-hover navedit_close OP_LOG_BTN" data-click="{'button_tp':'close'}"><i class="c-icon c-icon-close"></i></a><div class="editnav_maincontent"><div class="addednav_wr" data-click="{'button_tp':'delnav'}">{{include 'editOwnNavTemp'}}</div><div class="navform"><span class="gray iptlabel">网站名称:</span><input type="text" name="name" class="navipt nameipt" placeholder="最多输入16个字" maxlength="16"><span class="gray iptlabel">网址:</span><input type="text" name="address" class="navipt addript" placeholder="请输入网址" maxlength="300"><input type="submit" value="添加" class="sub_btn" data-click="{'button_tp':'addnav'}"></div><div><p class="gray">热门网站推荐(点击添加)</p><div class="hotnav_wr" data-click="{'button_tp':'addhotnav'}">{{include 'editHotNavTemp'}}</div></div></div>
</script>

    </div>
    
<div id="platform_menu" class="c_font">
    <a href="//xueshu.baidu.com/usercenter/data/journal" target="_blank" class="menuitem" onmousedown="return ns_c_xs({'fm':'behs','button_tp':'menu_journal'})"><i class="iconfont">&#xe621;</i><span>期刊频道</span></a><a href="//xueshu.baidu.com/usercenter/data/authorchannel?cmd=frontpage" target="_blank" class="menuitem dotPromote" onmousedown="return ns_c_xs({'fm':'behs','button_tp':'menu_author'})"><i class="iconfont">&#xe61e;</i><span>学者主页</span></a><a href="//xueshu.baidu.com/usercenter" target="_blank" class="menuitem" onmousedown="return ns_c_xs({'fm':'behs','button_tp':'menu_rss'})"><i class="iconfont">&#xe624;</i><span>订阅</span></a><a href="//xueshu.baidu.com/usercenter/?tab=collect" target="_blank" class="menuitem" onmousedown="return ns_c_xs({'fm':'behs','button_tp':'menu_collect'})"><i class="iconfont">&#xe701;</i><span>收藏</span></a><a href="//xueshu.baidu.com/usercenter/papercheck/index?tag=check&upload=1&site=index_links" target="_blank" class="menuitem" onmousedown="return ns_c_xs({'fm':'behs','button_tp':'menu_check'})"><i class="iconfont">&#xe61f;</i><span>论文查重</span></a><a href="//xueshu.baidu.com/u/biye/?tag=paper&site=index_links" target="_blank" class="menuitem" onmousedown="return ns_c_xs({'fm':'behs','button_tp':'menu_biye'})"><i class="iconfont">&#xe622;</i><span>开题分析</span></a><a href="//xueshu.baidu.com/u/ppv?site=index_links" target="_blank" class="menuitem" onmousedown="return ns_c_xs({'fm':'behs','button_tp':'menu_ppv'})"><i class="iconfont">&#xe62f;</i><span>单篇购买</span></a><a href="//xueshu.baidu.com/u/paperhelp" target="_blank" class="menuitem" onmousedown="return ns_c_xs({'fm':'behs','button_tp':'menu_paperhelp'})"><i class="iconfont">&#xe620;</i><span>文献互助</span></a><a href="//xueshu.baidu.com/usercenter/show/baiducas?cmd=page" target="_blank" class="menuitem" onmousedown="return ns_c_xs({'fm':'behs','button_tp':'menu_introduce'})"><i class="iconfont">&#xe634;</i><span>关于我们</span></a>
</div>


    </div>
    </div>
    
<div id="ftCon">
&copy;2019&nbsp;Baidu&nbsp;<a href="/duty/" name="tj_duty">使用百度前必读</a>&nbsp;京ICP证030173号&nbsp;京网文[2013]0934-983号&nbsp;<img src="http://s1.bdstatic.com/r/www/cache/mid/static/xueshu/img/gs_icon_526462e.png">
</div>

    </div>
    

<script type="text/javascript" src="http://s1.bdstatic.com/r/www/cache/mid/static/jquery/jquery-1.10.2.min_65682a2.js" charset="utf-8"></script>
<script type="text/javascript" src="http://s1.bdstatic.com/r/www/cache/mid/static/xueshu/js/index_3162a90.js" charset="utf-8"></script>




<div style="display:none;">
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?f28578486a5410f35e6fbd0da5361e5f";
  var s = document.getElementsByTagName("script")[0];
  s.parentNode.insertBefore(hm, s);
})();
</script>
</div>


</body>
</html>
