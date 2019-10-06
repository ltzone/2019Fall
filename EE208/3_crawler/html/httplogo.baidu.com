<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>百度logo平台</title>
    <link rel="icon" href="http://logo.baidu.com/images/favicon.ico" mce_href="http://logo.baidu.com/images/favicon.ico" type=”image/x-icon”>
    <link rel="stylesheet" href="http://logo.baidu.com/mstyle/main.css">
</head>
<body>
<div id="header">
    <div class="indexBox">
        <div class="logo">
    <img src="/images/logo.png">
</div>
<div class="nav">
    <ul>
        <li><a href="http://logo.baidu.com/" class="hover">首页</a></li>
        <li><a href="http://logo.baidu.com/show" >展示</a></li>
        <li><a href="http://logo.baidu.com/article" >热门 · 发现</a></li>
        <li><a href="http://logo.baidu.com/author" >趣画设计联盟</a>
            <div class="menu-list">
                <p><a href="http://logo.baidu.com/author" >联盟设计师</a></p>
                <p><a href="http://logo.baidu.com/event" >联盟设计活动</a></p>
            </div>
        </li>
    </ul>
</div>
<div class="topR">
    <div class="search">
        <form action="http://logo.baidu.com/search/action" method="get" onsubmit="return searchFunc();">
            <input type="text" class="ipt_key" name="key">
            <button type="submit" class="btn_search"></button>
        </form>
    </div>
    <div class="userTools">
                    <span><a href="http://openapi.baidu.com/oauth/2.0/authorize?response_type=code&client_id=Vc9fiuuT1QpqN4s6CKDkwpvv&redirect_uri=http://logo.baidu.com/main/callback">登录</a></span>
            </div>
</div>        <div class="banner">
            <div class="banner_box">
                <ul>
                                        <li><a href="http://logo.baidu.com/show/view/303"><img src="http://baidulogo.bj.bcebos.com/banner/iuw04pqibznnzjjkmas5skkog9nwmf95.jpg"></a></li>
                                        <li><a href="http://logo.baidu.com/event/unit/6"><img src="http://baidulogo.bj.bcebos.com/banner/z7d012i7atajw7py2eyd38071h780v9z.jpg"></a></li>
                                        <li><a href="http://logo.baidu.com/show/view/302"><img src="http://baidulogo.bj.bcebos.com/banner/hbwaad1weglszaglzzip2pq9xou8delv.jpg"></a></li>
                                        <li><a href="http://logo.baidu.com/show/view/301"><img src="http://baidulogo.bj.bcebos.com/banner/p6k9yyaxygmm9yab5n4mtycbi9ypcjc1.jpg"></a></li>
                                        <li><a href="http://logo.baidu.com/show/view/300"><img src="http://baidulogo.bj.bcebos.com/banner/pml3t3eru2uy22lc7a3q1fr202ynbcc0.jpg"></a></li>
                                    </ul>
            </div>
            <div class="banner_page"><ul></ul></div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div id="main">
    <div class="showList">
        <div class="hidenBox">
                        <div class="col">
                <div class="thumb-image">
                                            <a href="http://logo.baidu.com/show/view/303"><img src="http://baidulogo.bj.bcebos.com/logo/pcatydwxvaq7oiy13pzskevgfp0mhof6.gif"></a>
                                    </div>
                <div class="info">
                    <div class="title">国庆节</div>
                    <div class="infoItemBox">
                        <div class="date">2019年10月1日</div>
                        <div class="grey statistics right">
                            <i class="fontSize-18 iconfont">&#xe71b;</i>
                            <span>68</span>
                            <i class="fontSize-18 iconfont">&#xe6eb;</i>
                            <span>0</span>
                            <i class="fontSize-18 iconfont">&#xe70c;</i>
                            <span>2</span>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="location">动态 / 国庆节 / </div>
                    <div class="white statistics">
                        <i class="fontSize-18 iconfont">&#xe71b;</i>
                        <span>68</span>
                        <i class="fontSize-18 iconfont">&#xe6eb;</i>
                        <span>0</span>
                        <i class="fontSize-18 iconfont">&#xe70c;</i>
                        <span>2</span>
                    </div>
                    <div class="tools">
                        <!--<img src="/images/btn_share.png">-->
                        <img src="/images/btn_like.png" class="btn_praise" data-type="0" data-id="303">
                    </div>
                    <div class="more"><a href="http://logo.baidu.com/show/view/303">了解更多</a></div>
                    <div class="blockClick"></div>
                </div>
            </div>
                        <div class="col">
                <div class="thumb-image">
                                            <a href="http://logo.baidu.com/show/view/302"><img src="http://baidulogo.bj.bcebos.com/logo/te6unwz9t42i6ykt9mqh3m9s0cae8dy2.gif"></a>
                                    </div>
                <div class="info">
                    <div class="title">中秋节</div>
                    <div class="infoItemBox">
                        <div class="date">2019年9月13日</div>
                        <div class="grey statistics right">
                            <i class="fontSize-18 iconfont">&#xe71b;</i>
                            <span>74</span>
                            <i class="fontSize-18 iconfont">&#xe6eb;</i>
                            <span>0</span>
                            <i class="fontSize-18 iconfont">&#xe70c;</i>
                            <span>1</span>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="location">动态 / 中秋节 / </div>
                    <div class="white statistics">
                        <i class="fontSize-18 iconfont">&#xe71b;</i>
                        <span>74</span>
                        <i class="fontSize-18 iconfont">&#xe6eb;</i>
                        <span>0</span>
                        <i class="fontSize-18 iconfont">&#xe70c;</i>
                        <span>1</span>
                    </div>
                    <div class="tools">
                        <!--<img src="/images/btn_share.png">-->
                        <img src="/images/btn_like.png" class="btn_praise" data-type="0" data-id="302">
                    </div>
                    <div class="more"><a href="http://logo.baidu.com/show/view/302">了解更多</a></div>
                    <div class="blockClick"></div>
                </div>
            </div>
                        <div class="col">
                <div class="thumb-image">
                                            <a href="http://logo.baidu.com/show/view/301"><img src="http://baidulogo.bj.bcebos.com/logo/gvzrcmgp49xhqphr21h5eooap6bgrls7.gif"></a>
                                    </div>
                <div class="info">
                    <div class="title">教师节</div>
                    <div class="infoItemBox">
                        <div class="date">2019年9月10日</div>
                        <div class="grey statistics right">
                            <i class="fontSize-18 iconfont">&#xe71b;</i>
                            <span>70</span>
                            <i class="fontSize-18 iconfont">&#xe6eb;</i>
                            <span>0</span>
                            <i class="fontSize-18 iconfont">&#xe70c;</i>
                            <span>0</span>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="location">动态 / 教师节 / </div>
                    <div class="white statistics">
                        <i class="fontSize-18 iconfont">&#xe71b;</i>
                        <span>70</span>
                        <i class="fontSize-18 iconfont">&#xe6eb;</i>
                        <span>0</span>
                        <i class="fontSize-18 iconfont">&#xe70c;</i>
                        <span>0</span>
                    </div>
                    <div class="tools">
                        <!--<img src="/images/btn_share.png">-->
                        <img src="/images/btn_like.png" class="btn_praise" data-type="0" data-id="301">
                    </div>
                    <div class="more"><a href="http://logo.baidu.com/show/view/301">了解更多</a></div>
                    <div class="blockClick"></div>
                </div>
            </div>
                        <div class="col">
                <div class="thumb-image">
                                            <a href="http://logo.baidu.com/show/view/300"><img src="http://baidulogo.bj.bcebos.com/logo/0qstb382vqj77kyuwazd55dvg1gjyhyy.gif"></a>
                                    </div>
                <div class="info">
                    <div class="title">白露</div>
                    <div class="infoItemBox">
                        <div class="date">2019年9月8日</div>
                        <div class="grey statistics right">
                            <i class="fontSize-18 iconfont">&#xe71b;</i>
                            <span>65</span>
                            <i class="fontSize-18 iconfont">&#xe6eb;</i>
                            <span>0</span>
                            <i class="fontSize-18 iconfont">&#xe70c;</i>
                            <span>0</span>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="location">动态 / 其他 / </div>
                    <div class="white statistics">
                        <i class="fontSize-18 iconfont">&#xe71b;</i>
                        <span>65</span>
                        <i class="fontSize-18 iconfont">&#xe6eb;</i>
                        <span>0</span>
                        <i class="fontSize-18 iconfont">&#xe70c;</i>
                        <span>0</span>
                    </div>
                    <div class="tools">
                        <!--<img src="/images/btn_share.png">-->
                        <img src="/images/btn_like.png" class="btn_praise" data-type="0" data-id="300">
                    </div>
                    <div class="more"><a href="http://logo.baidu.com/show/view/300">了解更多</a></div>
                    <div class="blockClick"></div>
                </div>
            </div>
                        <div class="col">
                <div class="thumb-image">
                                            <a href="http://logo.baidu.com/show/view/299"><img src="http://baidulogo.bj.bcebos.com/logo/0sevgayayd2xopm3lco8f0unudtao7fp.gif"></a>
                                    </div>
                <div class="info">
                    <div class="title">七夕节</div>
                    <div class="infoItemBox">
                        <div class="date">2019年8月7日</div>
                        <div class="grey statistics right">
                            <i class="fontSize-18 iconfont">&#xe71b;</i>
                            <span>80</span>
                            <i class="fontSize-18 iconfont">&#xe6eb;</i>
                            <span>1</span>
                            <i class="fontSize-18 iconfont">&#xe70c;</i>
                            <span>2</span>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="location">动态 / 七夕节 / </div>
                    <div class="white statistics">
                        <i class="fontSize-18 iconfont">&#xe71b;</i>
                        <span>80</span>
                        <i class="fontSize-18 iconfont">&#xe6eb;</i>
                        <span>1</span>
                        <i class="fontSize-18 iconfont">&#xe70c;</i>
                        <span>2</span>
                    </div>
                    <div class="tools">
                        <!--<img src="/images/btn_share.png">-->
                        <img src="/images/btn_like.png" class="btn_praise" data-type="0" data-id="299">
                    </div>
                    <div class="more"><a href="http://logo.baidu.com/show/view/299">了解更多</a></div>
                    <div class="blockClick"></div>
                </div>
            </div>
                        <div class="col">
                <div class="thumb-image">
                                            <a href="http://logo.baidu.com/show/view/298"><img src="http://baidulogo.bj.bcebos.com/logo/80g08p0hb34c0jok135lvooff10bhi0p.gif"></a>
                                    </div>
                <div class="info">
                    <div class="title">大暑</div>
                    <div class="infoItemBox">
                        <div class="date">2019年7月23日</div>
                        <div class="grey statistics right">
                            <i class="fontSize-18 iconfont">&#xe71b;</i>
                            <span>82</span>
                            <i class="fontSize-18 iconfont">&#xe6eb;</i>
                            <span>2</span>
                            <i class="fontSize-18 iconfont">&#xe70c;</i>
                            <span>10</span>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="location">动态 / 其他 / </div>
                    <div class="white statistics">
                        <i class="fontSize-18 iconfont">&#xe71b;</i>
                        <span>82</span>
                        <i class="fontSize-18 iconfont">&#xe6eb;</i>
                        <span>2</span>
                        <i class="fontSize-18 iconfont">&#xe70c;</i>
                        <span>10</span>
                    </div>
                    <div class="tools">
                        <!--<img src="/images/btn_share.png">-->
                        <img src="/images/btn_like.png" class="btn_praise" data-type="0" data-id="298">
                    </div>
                    <div class="more"><a href="http://logo.baidu.com/show/view/298">了解更多</a></div>
                    <div class="blockClick"></div>
                </div>
            </div>
                        <div class="col">
                <div class="thumb-image">
                                            <a href="http://logo.baidu.com/show/view/297"><img src="http://baidulogo.bj.bcebos.com/logo/pwman2y19r8y57mnvy3mlp4y2fh8h8j6.gif"></a>
                                    </div>
                <div class="info">
                    <div class="title">世界Emoji日</div>
                    <div class="infoItemBox">
                        <div class="date">2019年7月17日</div>
                        <div class="grey statistics right">
                            <i class="fontSize-18 iconfont">&#xe71b;</i>
                            <span>76</span>
                            <i class="fontSize-18 iconfont">&#xe6eb;</i>
                            <span>2</span>
                            <i class="fontSize-18 iconfont">&#xe70c;</i>
                            <span>4</span>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="location">动态 / 其他 / </div>
                    <div class="white statistics">
                        <i class="fontSize-18 iconfont">&#xe71b;</i>
                        <span>76</span>
                        <i class="fontSize-18 iconfont">&#xe6eb;</i>
                        <span>2</span>
                        <i class="fontSize-18 iconfont">&#xe70c;</i>
                        <span>4</span>
                    </div>
                    <div class="tools">
                        <!--<img src="/images/btn_share.png">-->
                        <img src="/images/btn_like.png" class="btn_praise" data-type="0" data-id="297">
                    </div>
                    <div class="more"><a href="http://logo.baidu.com/show/view/297">了解更多</a></div>
                    <div class="blockClick"></div>
                </div>
            </div>
                        <div class="col">
                <div class="thumb-image">
                                            <a href="http://logo.baidu.com/show/view/296"><img src="http://baidulogo.bj.bcebos.com/logo/uzletl2l3v0t27g0rymn6gc0qyoeqz5l.gif"></a>
                                    </div>
                <div class="info">
                    <div class="title">父亲节</div>
                    <div class="infoItemBox">
                        <div class="date">2019年6月16日</div>
                        <div class="grey statistics right">
                            <i class="fontSize-18 iconfont">&#xe71b;</i>
                            <span>99</span>
                            <i class="fontSize-18 iconfont">&#xe6eb;</i>
                            <span>0</span>
                            <i class="fontSize-18 iconfont">&#xe70c;</i>
                            <span>2</span>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="location">动态 / 父亲节 / </div>
                    <div class="white statistics">
                        <i class="fontSize-18 iconfont">&#xe71b;</i>
                        <span>99</span>
                        <i class="fontSize-18 iconfont">&#xe6eb;</i>
                        <span>0</span>
                        <i class="fontSize-18 iconfont">&#xe70c;</i>
                        <span>2</span>
                    </div>
                    <div class="tools">
                        <!--<img src="/images/btn_share.png">-->
                        <img src="/images/btn_like.png" class="btn_praise" data-type="0" data-id="296">
                    </div>
                    <div class="more"><a href="http://logo.baidu.com/show/view/296">了解更多</a></div>
                    <div class="blockClick"></div>
                </div>
            </div>
                        <div class="col">
                <div class="thumb-image">
                                            <a href="http://logo.baidu.com/show/view/295"><img src="http://baidulogo.bj.bcebos.com/logo/addupctxooahnebp4p9yxyzhi8vx3v5d.gif"></a>
                                    </div>
                <div class="info">
                    <div class="title">文化和自然遗产日</div>
                    <div class="infoItemBox">
                        <div class="date">2019年6月8日</div>
                        <div class="grey statistics right">
                            <i class="fontSize-18 iconfont">&#xe71b;</i>
                            <span>90</span>
                            <i class="fontSize-18 iconfont">&#xe6eb;</i>
                            <span>1</span>
                            <i class="fontSize-18 iconfont">&#xe70c;</i>
                            <span>7</span>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="location">动态 / 非物质文化遗产 / </div>
                    <div class="white statistics">
                        <i class="fontSize-18 iconfont">&#xe71b;</i>
                        <span>90</span>
                        <i class="fontSize-18 iconfont">&#xe6eb;</i>
                        <span>1</span>
                        <i class="fontSize-18 iconfont">&#xe70c;</i>
                        <span>7</span>
                    </div>
                    <div class="tools">
                        <!--<img src="/images/btn_share.png">-->
                        <img src="/images/btn_like.png" class="btn_praise" data-type="0" data-id="295">
                    </div>
                    <div class="more"><a href="http://logo.baidu.com/show/view/295">了解更多</a></div>
                    <div class="blockClick"></div>
                </div>
            </div>
                        <div class="col">
                <div class="thumb-image">
                                            <a href="http://logo.baidu.com/show/view/294"><img src="http://baidulogo.bj.bcebos.com/logo/3a5prcb8ei5qv2xz3vgharik3yi3u2ey.gif"></a>
                                    </div>
                <div class="info">
                    <div class="title">端午节</div>
                    <div class="infoItemBox">
                        <div class="date">2019年6月7日</div>
                        <div class="grey statistics right">
                            <i class="fontSize-18 iconfont">&#xe71b;</i>
                            <span>85</span>
                            <i class="fontSize-18 iconfont">&#xe6eb;</i>
                            <span>1</span>
                            <i class="fontSize-18 iconfont">&#xe70c;</i>
                            <span>3</span>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="location">动态 / 端午节 / </div>
                    <div class="white statistics">
                        <i class="fontSize-18 iconfont">&#xe71b;</i>
                        <span>85</span>
                        <i class="fontSize-18 iconfont">&#xe6eb;</i>
                        <span>1</span>
                        <i class="fontSize-18 iconfont">&#xe70c;</i>
                        <span>3</span>
                    </div>
                    <div class="tools">
                        <!--<img src="/images/btn_share.png">-->
                        <img src="/images/btn_like.png" class="btn_praise" data-type="0" data-id="294">
                    </div>
                    <div class="more"><a href="http://logo.baidu.com/show/view/294">了解更多</a></div>
                    <div class="blockClick"></div>
                </div>
            </div>
                        <div class="col">
                <div class="thumb-image">
                                            <a href="http://logo.baidu.com/show/view/293"><img src="http://baidulogo.bj.bcebos.com/logo/197n7pwronin2f01kye7fgnmxuy2laxm.gif"></a>
                                    </div>
                <div class="info">
                    <div class="title">全国爱眼日</div>
                    <div class="infoItemBox">
                        <div class="date">2019年6月6日</div>
                        <div class="grey statistics right">
                            <i class="fontSize-18 iconfont">&#xe71b;</i>
                            <span>96</span>
                            <i class="fontSize-18 iconfont">&#xe6eb;</i>
                            <span>0</span>
                            <i class="fontSize-18 iconfont">&#xe70c;</i>
                            <span>4</span>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="location">动态 / 其他 / </div>
                    <div class="white statistics">
                        <i class="fontSize-18 iconfont">&#xe71b;</i>
                        <span>96</span>
                        <i class="fontSize-18 iconfont">&#xe6eb;</i>
                        <span>0</span>
                        <i class="fontSize-18 iconfont">&#xe70c;</i>
                        <span>4</span>
                    </div>
                    <div class="tools">
                        <!--<img src="/images/btn_share.png">-->
                        <img src="/images/btn_like.png" class="btn_praise" data-type="0" data-id="293">
                    </div>
                    <div class="more"><a href="http://logo.baidu.com/show/view/293">了解更多</a></div>
                    <div class="blockClick"></div>
                </div>
            </div>
                        <div class="col">
                <div class="thumb-image">
                                            <a href="http://logo.baidu.com/show/view/292"><img src="http://baidulogo.bj.bcebos.com/logo/yy6xop1bfdr6sqpmkvmhn7djc3c0ud9s.gif"></a>
                                    </div>
                <div class="info">
                    <div class="title">国际儿童节</div>
                    <div class="infoItemBox">
                        <div class="date">2019年6月1日</div>
                        <div class="grey statistics right">
                            <i class="fontSize-18 iconfont">&#xe71b;</i>
                            <span>78</span>
                            <i class="fontSize-18 iconfont">&#xe6eb;</i>
                            <span>1</span>
                            <i class="fontSize-18 iconfont">&#xe70c;</i>
                            <span>3</span>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="location">动态 / 儿童节 / </div>
                    <div class="white statistics">
                        <i class="fontSize-18 iconfont">&#xe71b;</i>
                        <span>78</span>
                        <i class="fontSize-18 iconfont">&#xe6eb;</i>
                        <span>1</span>
                        <i class="fontSize-18 iconfont">&#xe70c;</i>
                        <span>3</span>
                    </div>
                    <div class="tools">
                        <!--<img src="/images/btn_share.png">-->
                        <img src="/images/btn_like.png" class="btn_praise" data-type="0" data-id="292">
                    </div>
                    <div class="more"><a href="http://logo.baidu.com/show/view/292">了解更多</a></div>
                    <div class="blockClick"></div>
                </div>
            </div>
                        <div class="col">
                <div class="thumb-image">
                                            <a href="http://logo.baidu.com/show/view/291"><img src="http://baidulogo.bj.bcebos.com/logo/1sdtuaujrru80e3oq6f51751z7dadtfe.gif"></a>
                                    </div>
                <div class="info">
                    <div class="title">JAVA语言诞生日</div>
                    <div class="infoItemBox">
                        <div class="date">2019年5月23日</div>
                        <div class="grey statistics right">
                            <i class="fontSize-18 iconfont">&#xe71b;</i>
                            <span>102</span>
                            <i class="fontSize-18 iconfont">&#xe6eb;</i>
                            <span>0</span>
                            <i class="fontSize-18 iconfont">&#xe70c;</i>
                            <span>4</span>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="location">动态 / 其他 / </div>
                    <div class="white statistics">
                        <i class="fontSize-18 iconfont">&#xe71b;</i>
                        <span>102</span>
                        <i class="fontSize-18 iconfont">&#xe6eb;</i>
                        <span>0</span>
                        <i class="fontSize-18 iconfont">&#xe70c;</i>
                        <span>4</span>
                    </div>
                    <div class="tools">
                        <!--<img src="/images/btn_share.png">-->
                        <img src="/images/btn_like.png" class="btn_praise" data-type="0" data-id="291">
                    </div>
                    <div class="more"><a href="http://logo.baidu.com/show/view/291">了解更多</a></div>
                    <div class="blockClick"></div>
                </div>
            </div>
                        <div class="col">
                <div class="thumb-image">
                                            <a href="http://logo.baidu.com/show/view/290"><img src="http://baidulogo.bj.bcebos.com/logo/jebhsdpcmyrwtfxtujcrp794cg2l2yrm.gif"></a>
                                    </div>
                <div class="info">
                    <div class="title">国际博物馆日</div>
                    <div class="infoItemBox">
                        <div class="date">2019年5月18日</div>
                        <div class="grey statistics right">
                            <i class="fontSize-18 iconfont">&#xe71b;</i>
                            <span>78</span>
                            <i class="fontSize-18 iconfont">&#xe6eb;</i>
                            <span>0</span>
                            <i class="fontSize-18 iconfont">&#xe70c;</i>
                            <span>4</span>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="location">动态 / 其他 / </div>
                    <div class="white statistics">
                        <i class="fontSize-18 iconfont">&#xe71b;</i>
                        <span>78</span>
                        <i class="fontSize-18 iconfont">&#xe6eb;</i>
                        <span>0</span>
                        <i class="fontSize-18 iconfont">&#xe70c;</i>
                        <span>4</span>
                    </div>
                    <div class="tools">
                        <!--<img src="/images/btn_share.png">-->
                        <img src="/images/btn_like.png" class="btn_praise" data-type="0" data-id="290">
                    </div>
                    <div class="more"><a href="http://logo.baidu.com/show/view/290">了解更多</a></div>
                    <div class="blockClick"></div>
                </div>
            </div>
                        <div class="col">
                <div class="thumb-image">
                                            <a href="http://logo.baidu.com/show/view/289"><img src="http://baidulogo.bj.bcebos.com/logo/j0ux4m1p807eu83edis5q4fpqhseisl1.gif"></a>
                                    </div>
                <div class="info">
                    <div class="title">母亲节</div>
                    <div class="infoItemBox">
                        <div class="date">2019年5月12日</div>
                        <div class="grey statistics right">
                            <i class="fontSize-18 iconfont">&#xe71b;</i>
                            <span>112</span>
                            <i class="fontSize-18 iconfont">&#xe6eb;</i>
                            <span>2</span>
                            <i class="fontSize-18 iconfont">&#xe70c;</i>
                            <span>4</span>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="location">动态 / 母亲节 / </div>
                    <div class="white statistics">
                        <i class="fontSize-18 iconfont">&#xe71b;</i>
                        <span>112</span>
                        <i class="fontSize-18 iconfont">&#xe6eb;</i>
                        <span>2</span>
                        <i class="fontSize-18 iconfont">&#xe70c;</i>
                        <span>4</span>
                    </div>
                    <div class="tools">
                        <!--<img src="/images/btn_share.png">-->
                        <img src="/images/btn_like.png" class="btn_praise" data-type="0" data-id="289">
                    </div>
                    <div class="more"><a href="http://logo.baidu.com/show/view/289">了解更多</a></div>
                    <div class="blockClick"></div>
                </div>
            </div>
                        <div class="col">
                <div class="thumb-image">
                                            <a href="http://logo.baidu.com/show/view/288"><img src="http://baidulogo.bj.bcebos.com/logo/l3d6zlt02wcjxei5c4hmgyqdvb8seju0.gif"></a>
                                    </div>
                <div class="info">
                    <div class="title">五四青年节</div>
                    <div class="infoItemBox">
                        <div class="date">2019年5月4日</div>
                        <div class="grey statistics right">
                            <i class="fontSize-18 iconfont">&#xe71b;</i>
                            <span>92</span>
                            <i class="fontSize-18 iconfont">&#xe6eb;</i>
                            <span>0</span>
                            <i class="fontSize-18 iconfont">&#xe70c;</i>
                            <span>4</span>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="location">动态 / 其他 / </div>
                    <div class="white statistics">
                        <i class="fontSize-18 iconfont">&#xe71b;</i>
                        <span>92</span>
                        <i class="fontSize-18 iconfont">&#xe6eb;</i>
                        <span>0</span>
                        <i class="fontSize-18 iconfont">&#xe70c;</i>
                        <span>4</span>
                    </div>
                    <div class="tools">
                        <!--<img src="/images/btn_share.png">-->
                        <img src="/images/btn_like.png" class="btn_praise" data-type="0" data-id="288">
                    </div>
                    <div class="more"><a href="http://logo.baidu.com/show/view/288">了解更多</a></div>
                    <div class="blockClick"></div>
                </div>
            </div>
                        <div class="col">
                <div class="thumb-image">
                                            <a href="http://logo.baidu.com/show/view/287"><img src="http://baidulogo.bj.bcebos.com/logo/wo028q7yn54hfzlirxiny0kuy76k6it3.gif"></a>
                                    </div>
                <div class="info">
                    <div class="title">世界地球日</div>
                    <div class="infoItemBox">
                        <div class="date">2019年4月22日</div>
                        <div class="grey statistics right">
                            <i class="fontSize-18 iconfont">&#xe71b;</i>
                            <span>84</span>
                            <i class="fontSize-18 iconfont">&#xe6eb;</i>
                            <span>0</span>
                            <i class="fontSize-18 iconfont">&#xe70c;</i>
                            <span>5</span>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="location">动态 / 世界地球日 / </div>
                    <div class="white statistics">
                        <i class="fontSize-18 iconfont">&#xe71b;</i>
                        <span>84</span>
                        <i class="fontSize-18 iconfont">&#xe6eb;</i>
                        <span>0</span>
                        <i class="fontSize-18 iconfont">&#xe70c;</i>
                        <span>5</span>
                    </div>
                    <div class="tools">
                        <!--<img src="/images/btn_share.png">-->
                        <img src="/images/btn_like.png" class="btn_praise" data-type="0" data-id="287">
                    </div>
                    <div class="more"><a href="http://logo.baidu.com/show/view/287">了解更多</a></div>
                    <div class="blockClick"></div>
                </div>
            </div>
                        <div class="col">
                <div class="thumb-image">
                                            <a href="http://logo.baidu.com/show/view/286"><img src="http://baidulogo.bj.bcebos.com/logo/s3jxyaptpfs6vpli231i9nj1iiebq52i.jpg"></a>
                                    </div>
                <div class="info">
                    <div class="title">世界上第一张“黑洞”照片发布</div>
                    <div class="infoItemBox">
                        <div class="date">2019年4月10日</div>
                        <div class="grey statistics right">
                            <i class="fontSize-18 iconfont">&#xe71b;</i>
                            <span>79</span>
                            <i class="fontSize-18 iconfont">&#xe6eb;</i>
                            <span>0</span>
                            <i class="fontSize-18 iconfont">&#xe70c;</i>
                            <span>3</span>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="location">静态 / 其他 / </div>
                    <div class="white statistics">
                        <i class="fontSize-18 iconfont">&#xe71b;</i>
                        <span>79</span>
                        <i class="fontSize-18 iconfont">&#xe6eb;</i>
                        <span>0</span>
                        <i class="fontSize-18 iconfont">&#xe70c;</i>
                        <span>3</span>
                    </div>
                    <div class="tools">
                        <!--<img src="/images/btn_share.png">-->
                        <img src="/images/btn_like.png" class="btn_praise" data-type="0" data-id="286">
                    </div>
                    <div class="more"><a href="http://logo.baidu.com/show/view/286">了解更多</a></div>
                    <div class="blockClick"></div>
                </div>
            </div>
                    </div>
    </div>
    <div class="btn_top"></div>
</div>
<div id="footer">
    ©<span id="timeYeat"></span> Baidu 京ICP证030173号 由 <a href='https://cloud.baidu.com' target='_blank'>百度云</a> 提供计算服务
</div><script src="http://logo.baidu.com/mscript/plus.js"></script>
<script src="http://logo.baidu.com/mscript/jquery.SuperSlide.js"></script>
<script src="http://logo.baidu.com/mscript/main.js"></script>
<script>
    jQuery(".banner").slide({
        mainCell:".banner_box ul",
        titCell:".banner_page ul",
        effect:"fold",
        autoPlay:true,
        autoPage:true,
        trigger:"click",
        interTime:3500
    });

    $(function(){
        var insertHtml="<div class='col'><div class='indexSlide'><i class='iconfont'>&#xe600;</i><p>百度logo模板下载</p></div></div>";
        $('.showList').find('.col').eq(1).after(insertHtml);
    });

    var rows = parseInt("16");
    var pageId = parseInt("");
    if (!pageId) pageId = 0;
    var stop = true;//触发开关，防止多次调用事件
    var totalHeight = 0;
    var bottomMargin = 300;
    var num = 0;
    var navHideen = false;
    $(window).scroll(function(){
        var srollPos = $(window).scrollTop();    //滚动条距顶部距离(页面超出窗口的高度)
        totalHeight = parseFloat($(window).height()) + parseFloat(srollPos);

        if($(document).height() - bottomMargin <= totalHeight){


            if(stop == true && num < rows){
                stop = false;
                num = num + 1;
                pageId = pageId + 18;//当前要加载的页码
                var urlPath = "http://logo.baidu.com/main/show_data/0/0/0"+"/" + pageId;
                //加载提示信息
                $(".hidenBox").append("<div class='ajax_tips'>Loding.....</div>");
                $.get(urlPath,function(data){
                    $(".ajax_tips").hide();
                    $(".hidenBox").append(data);//把新的内容加载到内容的后面
                    stop = true;
                })
            }
        }

        if(srollPos <= $(window).height()){
            navHideen = false;
            $('.navfix').removeClass('navfix').addClass('nav');
        }else{
            if(navHideen == false){
                navHideen = true;
                $('.nav').removeClass('nav').addClass('navfix');

            }
        }
    });

</script>
</body>
</html>