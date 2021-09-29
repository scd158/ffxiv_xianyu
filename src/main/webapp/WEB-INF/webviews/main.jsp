<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>咸鱼之家</title>
    <meta name="renderer" content="webkit" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no" />
    <%@ include file="tags/taglib.jsp"%>
    <link rel="stylesheet" type="text/css" href="${ctx}/dynamic/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/dynamic/assets/css/demo.css" />
</head>
<style>
    body{
        background: #0f0f12;
        overflow-x: hidden;
        font-size: 16px;
        line-height: 1.6;
        display: block;
    }

    .views {
        width: 100%;
        margin: 0 auto;
        position: relative;
    }

    .views .viewHead {
        width: 100%;
        position: absolute;
        top: 0;
        right: 0;
        z-index: 100;
    }

    .headers{
        width: 100%;
        height: 76px;
        background: rgba(0,0,0,.8);
        position: absolute;
        left: 50%;
        margin-left: -50%;
        top: 0;
        padding: 0 80px;
        box-sizing: border-box;
        background-position: 50%;
        display: flex;
        -webkit-box-pack: justify;
        justify-content: space-between;
        -webkit-box-align: center;
        align-items: center;
    }

    .headers .lf {
        width: 133px;
        height: 39px;
        background-image: url(https://static.web.sdo.com/jijiamobile/pic/ff14/190110ffweb/logo.png);
        background-position: top;
        background-repeat: no-repeat;
    }

    .headers .rtbox {
        -webkit-box-pack: end;
        -webkit-justify-content: flex-end;
        -ms-flex-pack: end;
        justify-content: flex-end;
        height: 76px;
    }

    .headers .rtbox, .headers .rtbox .navbox {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
    }


    .headers .rtbox, .headers .rtbox .navbox {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -webkit-align-items: center;
        -ms-flex-align: center;
        align-items: center;
    }

    .headers .rtbox .navbox {
        color: #999797;
        -webkit-box-pack: start;
        -webkit-justify-content: flex-start;
        -ms-flex-pack: start;
        justify-content: flex-start;
        padding-right: 25px;
    }

    .headers .rtbox .navbox .item {
        text-align: center;
        box-sizing: border-box;
        cursor: pointer;
        height: 76px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        width: 120px;
    }

    .headers .rtbox .navbox .item:hover{
        color: white;
    }

    .headers .rtbox .navbox .item .ensoma {
        font-size: 10px;
        line-height: 1;
        padding-bottom: 5px;
    }

    .headers .rtbox .navbox .item .znsoma {
        font-size: 16px;
        line-height: 1;
        font-weight: 700;
    }

    .headers .rt {
        width: 100px;
        height: 32px;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-pack: justify;
        -webkit-justify-content: space-between;
        -ms-flex-pack: justify;
        justify-content: space-between;
        -webkit-box-align: center;
        -webkit-align-items: center;
        -ms-flex-align: center;
        align-items: center;
        line-height: 32px;
    }

    .headers .rt a {
        width: 94px;
        height: 30px;
        border: 1px solid #3f3a89;
        color: #756aff;
        font-weight: 700;
        display: block;
        -webkit-transition: all .3s;
        transition: all .3s;
        position: relative;
    }

    .headers .rt a p {
        width: 100%;
        height: 100%;
        position: relative;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-pack: center;
        -webkit-justify-content: center;
        -ms-flex-pack: center;
        justify-content: center;
        -webkit-box-align: center;
        -webkit-align-items: center;
        -ms-flex-align: center;
        align-items: center;
    }

    .headers .rt a:before {
        right: 0;
    }

    .headers .rt a:after, .headers .rt a:before {
        content: "";
        display: inline-block;
        width: 2px;
        height: 2px;
        background: #756aff;
        position: absolute;
        top: 0;
    }

    .headers .rt a:after {
        left: 0;
    }

    .headers .rt a p:after, .headers .rt a p:before {
        content: "";
        display: inline-block;
        width: 2px;
        height: 2px;
        background: #756aff;
        position: absolute;
        bottom: 0;
    }

    .headers .rt a p:before {
        right: 0;
    }

    .headers .rt a p:after {
        left: 0;
    }

    .headers .rt a:hover{
        background-color: #756aff;
        color: black;
    }

    .views .viewCont {
        position: relative;
        width: 100%;
    }
    .pageHome {
        width: 100%;
        position: relative;
        background-color: #0f0f12;
    }

    .pageHome .fullvid {
        margin: 0 auto;
        width: 100%;
        height: 750px;
        overflow: hidden;
        position: relative;
        background-color: #0f0f12;
    }

    .layui-carousel img{
        width: 100%;
    }

    .pageHome .fullvid .newpath {
        position: absolute;
        left: 50%;
        -webkit-transform: translateX(-50%);
        transform: translateX(-50%);
        top: 300px;
    }

    .pageHome .fullvid .newpath .info {
        color:#999797;
        position: absolute;
        left: 50%;
        -webkit-transform: translateX(-50%);
        transform: translateX(-50%);
        letter-spacing: 3px;
        width: 305px;
        height: 32px;
        background-image: url(${ctx}/img/back0.png);
        background-position: center top;
        background-repeat: no-repeat;
        display: -webkit-box;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -webkit-align-items: center;
        align-items: center;
    }

    .newpath .rt{
        margin-bottom: 30px;
    }

    .newpath .rt a {
        width: 420px;
        height: 60px;
        color:whitesmoke;
        background-color: rgba(0,0,0,.8);
        box-shadow: 0px 0px 5px 10px rgba(0,0,0,.8);
        font-weight: 600;
        display: block;
        -webkit-transition: all .3s;
        transition: all .3s;
        position: relative;
    }

    .newpath .rt a p {
        width: 100%;
        height: 100%;
        position: relative;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-pack: center;
        -webkit-justify-content: center;
        -ms-flex-pack: center;
        justify-content: center;
        -webkit-box-align: center;
        -webkit-align-items: center;
        -ms-flex-align: center;
        align-items: center;
        font-size: 40px;
    }

    .newpath .rt a:hover{
        background-color: #756aff;
        box-shadow: 0px 0px 2px 10px #756aff;
        color: rgba(255,255,255,.8);
    }

    .pageHome .newwrap, .pageHome .envwrap{
        width: 100%;
        background: #17181e;
    }

    .pageHome .newwrap .newbox {
        width: 95%;
        padding-top: 25px;
        margin: 0 auto;
        position: relative;
    }

    .pageHome .envwrap .envbox {
        width: 100%;
        padding-top: 25px;
        margin: 0 auto;
        position: relative;
    }

    .pageHome .newwrap .newbox .newtit, .pageHome .envwrap .envbox .newtit {
        height: 85px;
        font-size: 26px;
        font-weight: bold;
        color: #f2f2f2;
        text-align: center;
        box-sizing: border-box;
        letter-spacing: 5px;
        padding-top: 20px;
        background-image: url(${ctx}/img/homenew.png);
        background-position: center top;
        background-repeat: no-repeat;
    }

    .introfram0{
        width: 50%;float: left;
    }
    .introfram0 img{
        width:100%;height:100%;object-fit:cover;left: 0;
    }
    .introfram1{
        float: left;width: 50%;height:100%;background-color: rgba(12,12,12,.8);display: flex;flex-direction: column;align-items: flex-start;padding-bottom:30px;justify-content: center
    }
    .gameId{
        color: #77d1ff;font-size: 70px;letter-spacing: 1px;margin-left: 40px;
    }
    .gameJob{
        color: #756aff;font-size: 32px;line-height: 1;font-weight: bold;letter-spacing: 4px;margin-bottom: -150px;margin-left: 40px;
    }
    .gameIntro{
        color: #a1a5b2;font-size: 18px;line-height: 1;letter-spacing: 4px;margin-top: -110px;display: flex;flex-direction: column;align-items: flex-start;line-height: 30px;margin-left: 40px;
    }
    .dotF{
        font-size: 100px;
    }
    .server{
        font-size: 23px;
        color: #bda45b;
        padding-left: 25px;
    }

</style>
<body>
    <div class="views">
        <div class="viewHead">
            <div class="headers">
                <div class="lf"></div>
                <div class="rtbox">
                    <div class="navbox">
                        <div class="item">
                            <p class="ensoma">HOME</p>
                            <p class="znsoma">咸鱼之家</p>
                        </div>
                        <div class="item">
                            <p class="ensoma">MEMBERS</p>
                            <p class="znsoma">小队列表</p>
                        </div>
                        <div class="item">
                            <p class="ensoma">SPECIAL</p>
                            <p class="znsoma">荣誉特聘</p>
                        </div>
                        <div class="item">
                            <p class="ensoma">EVENTS</p>
                            <p class="znsoma">大事记</p>
                        </div>
                        <div class="item">
                            <p class="ensoma">LINKS</p>
                            <p class="znsoma">常用链接</p>
                        </div>
                        <div class="item" style="" id="onupdate">
                            <p class="ensoma">UPDATE</p>
                            <p class="znsoma">更新日志</p>
                        </div>
                    </div>
                    <div class="rt">
                        <a href="http://ff.web.sdo.com" class=""><p>游戏官网</p></a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="viewCont">
        <div class="pageHome">
            <div class="fullvid">
                <div class="layui-carousel" id="slide0">
                    <div carousel-item>
                        <!--里面可以加图片，文字等-->
                        <div><img src="${ctx}/img/home0.png" /></div>
                        <div><img src="${ctx}/img/home1.jpg" /></div>
                    </div>
                </div>
                <div class="newpath">
                    <div class="rt" style="">
                        <a href="" class="">
                            <p style="">咸 鱼 之 家</p>
                        </a>
                    </div>
                    <div class="info">
                        <a href="" class="" style="text-align: center">
                            <p class="xianyuspan" style="color:whitesmoke;font-size: 16px;font-weight: bold">夕阳红老年俱乐部欢迎您</p>
                        </a>
                    </div>
                </div>
            </div>
            <div class="newwrap">
                <div class="newbox" style="text-align: center;">
                    <div clss="" style="color: rgba(255,255,255,.2);margin-bottom: -16px">MEMBERS</div>
                    <div class="newtit">小队列表</div>
                    <div class="layui-carousel" id="slide1" style="margin-top: 20px;margin-bottom: 20px;">
                        <div carousel-item>
                            <div style="background-color: #17181e;">
                                <div class="introfram0"><img src="${ctx}/img/wh.png" style=""></div>
                                <div class="introfram1" style="">
                                    <div class="gameId" style=""><span class="dotF">"</span>呜呼呜呼呜<span class="server">莫古力/神拳痕</span></div>
                                    <div class="gameJob" style="">首席武士</div>
                                    <div class="banrt" style="margin-left: 40px;"><img src="${ctx}/img/banrt1.png"></div>
                                    <div class="gameIntro" style="">
                                        <p>我还是个豆芽！</p>
                                        <p>可爱肥肥！在线乞讨！</p>
                                        <p>好像在说：给点给点...不给揍你哦!</p>
                                    </div>
                                </div>
                            </div>
                            <div style="background-color: #17181e;">
                                <div class="introfram0"><img src="${ctx}/img/bj.jpg" style=""></div>
                                <div class="introfram1" style="">
                                    <div class="gameId" style=""><span class="dotF">"</span>啵唧啵唧啵<span class="server">莫古力/神拳痕</span></div>
                                    <div class="gameJob" style="">首席白魔</div>
                                    <div class="banrt" style="margin-left: 40px;"><img src="${ctx}/img/banrt1.png"></div>
                                    <div class="gameIntro" style="">
                                        <p>初代啵唧人！</p>
                                        <p>莫古力天团c位担当</p>
                                        <p>遇事不决先医济，哎我dot呢？</p>
                                    </div>
                                </div>
                            </div>
                            <div style="background-color: #17181e;">
                                <div class="introfram0"><img src="${ctx}/img/xy.png" style=""></div>
                                <div class="introfram1" style="">
                                    <div class="gameId" style=""><span class="dotF">"</span>佑夜<span class="server">莫古力/拂晓之间</span></div>
                                    <div class="gameJob" style="">首席学者</div>
                                    <div class="banrt" style="margin-left: 40px;"><img src="${ctx}/img/banrt1.png"></div>
                                    <div class="gameIntro" style="">
                                        <p>咸鱼人！</p>
                                        <p>莫古力天团官方认证咸鱼</p>
                                        <p>咦怎么有个连环计，啥时候转好的</p>
                                        <p>减伤呢！！！！！！</p>
                                    </div>
                                </div>
                            </div>
                            <div style="background-color: #17181e;">
                                <div class="introfram0"><img src="${ctx}/img/xm.jpg" style=""></div>
                                <div class="introfram1" style="">
                                    <div class="gameId" style=""><span class="dotF">"</span>夏木秋风<span class="server">莫古力/神拳痕</span></div>
                                    <div class="gameJob" style="">首席黑魔</div>
                                    <div class="banrt" style="margin-left: 40px;"><img src="${ctx}/img/banrt1.png"></div>
                                    <div class="gameIntro" style="">
                                        <p>我夏木秋风今天要刷龙！</p>
                                        <p>谁赞成？谁反对？</p>
                                        <p>你黑魔950！</p>
                                    </div>
                                </div>
                            </div>
                            <div style="background-color: #17181e;">
                                <div class="introfram0"><img src="${ctx}/img/pkp.jpg" style=""></div>
                                <div class="introfram1" style="">
                                    <div class="gameId" style=""><span class="dotF">"</span>兀口兀<span class="server">莫古力/神拳痕</span></div>
                                    <div class="gameJob" style="">首席绝枪</div>
                                    <div class="banrt" style="margin-left: 40px;"><img src="${ctx}/img/banrt1.png"></div>
                                    <div class="gameIntro" style="">
                                        <p>我可是最强的肥肥</p>
                                        <p>看到我99的绝枪了吗</p>
                                    </div>
                                </div>
                            </div>
                            <div style="background-color: #17181e;">
                                <div class="introfram0"><img src="${ctx}/img/fido.png" style=""></div>
                                <div class="introfram1" style="">
                                    <div class="gameId" style=""><span class="dotF">"</span>fido<span class="server">莫古力/拂晓之间</span></div>
                                    <div class="gameJob" style="">首席诗人/舞者</div>
                                    <div class="banrt" style="margin-left: 40px;"><img src="${ctx}/img/banrt1.png"></div>
                                    <div class="gameIntro" style="">
                                        <p>可爱大眼多</p>
                                        <p>没错就是我</p>
                                        <p>你们也可以叫我非酋(x</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="envwrap" style="margin-top: -20px;">
                <div class="envbox" style="text-align: center;">
                    <div clss="" style="color: rgba(255,255,255,.2);margin-bottom: -16px">SPECIAL</div>
                    <div class="newtit">荣誉特聘</div>
                    <div class="rongyu" style="display: flex;flex-direction: column;justify-content: center;align-items: center;padding: 20px 0px 20px 0px">
                        <section class="page-wrapper effect-1st" id="coidea" style="width: 95%;">
                            <div class="grid">
                                <div class="grid-item effect-first">
                                    <div class="image">
                                        <img src="${ctx}/img/yz.png" />
                                        <div class="overlay"></div>
                                    </div>
                                    <div class="content" style="font-family: Microsoft YaHei,Segoe UI, Lucida Grande, Helvetica, Arial,sans-serif;">
                                        <h2><span class="dotF">"</span>那里没叶子</h2>
                                        <h2 style="color: #756aff;font-size: 32px;line-height: 1;font-weight: bold;letter-spacing: 4px;">莫古力幼儿园园长</h2>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="page-wrapper effect-2nd" id="coidea" style="width: 95%;">
                            <div class="grid">
                                <div class="grid-item effect-second">

                                    <div class="image">
                                        <img src="${ctx}/img/yz2.jpg" />
                                        <div class="overlay1"></div>
                                        <div class="overlay2"></div>
                                        <div class="overlay3"></div>
                                    </div>
                                    <div class="content" style="font-family: Microsoft YaHei,Segoe UI, Lucida Grande, Helvetica, Arial,sans-serif;">
                                        <h2><span class="dotF">"</span>那里没叶子</h2>
                                        <h2 style="color: #756aff;font-size: 32px;line-height: 1;font-weight: bold;letter-spacing: 4px;">莫古力幼儿园园长</h2>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="${ctx}/dynamic/js/TweenMax.min.js"></script>
<script src="${ctx}/dynamic/js/ScrollMagic.min.js"></script>
<script src="${ctx}/dynamic/js/animation.gsap.min.js"></script>
<script src="${ctx}/dynamic/js/debug.addIndicators.min.js"></script>
<script src="${ctx}/dynamic/assets/js/demo.js"></script>
<script>
    layui.use('layer', function() {
        var layer = layui.layer;
        $("#onupdate").click(function () {
            layer.open({
                type: 1
                ,title: false //不显示标题栏
                ,closeBtn: false
                ,area: '300px;'
                ,shade: 0.8
                ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
                ,btn: ['确定', '取消']
                ,btnAlign: 'c'
                ,moveType: 1 //拖拽模式，0或者1
                ,content: '<div style="padding: 15px 20px 10px 20px; line-height: 22px; background-color: #17181e; color: #fff; font-weight: 300;">更新日志V1.2<br>1.优化图片显示三次元信息问题<br><br>2.优化加载过慢问题<br><br>3.增加更新公告栏<br><br>4.优化手机端显示UI<br><br>5.新增荣誉特聘<br><br>ps:有建议请联系Q：1398349035</div>'
                ,success: function(layero){
                }
            });
        })
    })
    //第一个轮播图
    layui.use('carousel', function() {
        var carousel = layui.carousel;
        var carousel2 = layui.carousel;
        //建造实例化
        carousel.render({
            elem: '#slide0',
            width: '100%', //设置背景容器的宽度
            height: '100%',
            arrow: 'always', //始终显示箭头,不会消失
            indicator: 'inside'	//这个属性：小圆点在外面
        });
        //建造实例化
        carousel2.render({
            elem: '#slide1',
            width: '100%', //设置背景容器的宽度
            height: '600px',
            arrow: 'always', //始终显示箭头,不会消失
            interval: 1800,
            indicator: 'inside'	//这个属性：小圆点在外面
        });
    });

    function isMobile() {
        var userAgentInfo = navigator.userAgent;

        var mobileAgents = [ "Android", "iPhone", "SymbianOS", "Windows Phone", "iPad","iPod"];

        var mobile_flag = false;

        //根据userAgent判断是否是手机
        for (var v = 0; v < mobileAgents.length; v++) {
            if (userAgentInfo.indexOf(mobileAgents[v]) > 0) {
                mobile_flag = true;
                break;
            }
        }

        var screen_width = window.screen.width;
        var screen_height = window.screen.height;

        //根据屏幕分辨率判断是否是手机
        if(screen_width < 500 && screen_height < 800){
            mobile_flag = true;
        }

        return mobile_flag;
    }

    $(function () {
        var mobile_flag = isMobile();

        //如果是手机端
        if(mobile_flag){
            $(".pageHome .fullvid").css({"height":"300px"})
            $(".pageHome .fullvid .newpath").css({"top":"130px"})
            $(".newpath .rt a p").css({"font-size":"22px"})
            $(".pageHome .fullvid .newpath .rt a").css({"width":"200px","height":"32px"})

            //小队
            $(".introfram0").css({"width":"100%","height":"470px"})
            $(".introfram1").css({"width":"100%","justify-content":"flex-start","padding-bottom":"10px"})
            $(".dotF").css({"font-size":"20px"})
            $(".gameId").css({"font-size":"20px","margin-left": "10px","margin-top": "20px"})
            $(".server").css({"font-size":"10px","margin-left": "10px","margin-top": "20px"})
            $(".gameJob").css({"font-size":"13px","margin-left": "10px","margin-bottom": "0px","margin-top": "10px"})
            $(".banrt").hide()
            $(".gameIntro").css({"font-size":"12px","margin-left": "10px","margin-top": "5px","line-height":"0px;","letter-spacing": "1px"})
        }
    })

</script>

</html>
