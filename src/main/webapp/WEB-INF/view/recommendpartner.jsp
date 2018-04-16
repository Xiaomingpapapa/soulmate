<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>main view</title>
<%@ include file="/WEB-INF/view/public/meta.jsp"%>
<link rel="stylesheet" href="/soulmate-update/css/recommendpartner.css">
</head>
<body>
    <div class="layui-container">
        <div class="layui-row">
            <div class="layui-col-md6 layui-col-md-offset3" style="background-color:white">
                <ul class="layui-nav">
                    <li class="layui-nav-item layui-this"><a href="">匹配广场</a></li>
                    <li class="layui-nav-item"><a href="">聊天</a></li>
                    <li class="layui-nav-item"><a href="">好友</a></li>
                    <li class="layui-nav-item"><a href="">动态</a></li>
                </ul>
                <hr class="hr50"/>
                <div class="main_body">
                    <ul>
                        <li class="card">
                            <div class="card__flipper">
                                <div class="card__front">
                                    <p class="card__name"><span>Dick</span><br>Chen</p>
                                    <p class="card__num">1</p>
                                </div>
                                <div class="card__back">
                                    <svg height="180" width="180">
                                        <circle cx="90" cy="90" r="55" stroke="#514d9b" stroke-width="35"  />
                                    </svg>
                                    <span>113.2</span>
                                </div>
                            </div>
                        </li>
                        <li class="card">
                            <div class="card__flipper">
                                <div class="card__front">
                                    <p class="card__name"><span>Mary</span><br>Xu</p>
                                    <p class="card__num">2</p>
                                </div>
                                <div class="card__back">
                                    <svg height="180" width="180">
                                        <circle cx="90" cy="90" r="55" stroke="#514d9b" stroke-width="35"  />
                                    </svg>
                                    <span>113.2</span>
                                </div>
                            </div>
                        </li>
                        <li class="card">
                            <div class="card__flipper">
                                <div class="card__front">
                                    <p class="card__name"><span>Drew</span><br>Yuan</p>
                                    <p class="card__num">3</p>
                                </div>
                                <div class="card__back">
                                    <svg height="180" width="180">
                                        <circle cx="90" cy="90" r="55" stroke="#514d9b" stroke-width="35"  />
                                    </svg>
                                    <span>113.2</span>
                                </div>
                            </div>
                        </li>
                                                <li class="card">
                            <div class="card__flipper">
                                <div class="card__front">
                                    <p class="card__name"><span>Will</span><br>Chang</p>
                                    <p class="card__num">4</p>
                                </div>
                                <div class="card__back">
                                    <svg height="180" width="180">
                                        <circle cx="90" cy="90" r="55" stroke="#514d9b" stroke-width="35"  />
                                    </svg>
                                    <span>113.2</span>
                                </div>
                            </div>
                        </li>
                                                <li class="card">
                            <div class="card__flipper">
                                <div class="card__front">
                                    <p class="card__name"><span>Eric</span><br>Xue</p>
                                    <p class="card__num">5</p>
                                </div>
                                <div class="card__back">
                                    <svg height="180" width="180">
                                        <circle cx="90" cy="90" r="55" stroke="#514d9b" stroke-width="35"  />
                                    </svg>
                                    <span>113.2</span>
                                </div>
                            </div>
                        </li>
                        <li class="card">
                            <div class="card__flipper">
                                <div class="card__front">
                                    <p class="card__name"><span>Jasper</span><br>Wu</p>
                                    <p class="card__num">6</p>
                                </div>
                                <div class="card__back">
                                    <svg height="180" width="180">
                                        <circle cx="90" cy="90" r="55" stroke="#514d9b" stroke-width="35"  />
                                    </svg>
                                    <span>113.2</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <script>
        layui.use(['element','form','jquery'], function(){
            var element = layui.element 
            ,form = layui.form
            ,$ = layui.jquery
            element.on('nav(demo)', function(elem){
              layer.msg(elem.text());
            });
            
            //card action
            var Flipper = function () {
            var card = $('.card');
            var flipper = card.find('.card__flipper');
            var win = $(window);
            var flip = function () {
                var thisCard = $(this);
                var thisFlipper = thisCard.find('.card__flipper');
                var offset = thisCard.offset();
                var xc = win.width() / 2;
                var yc = win.height() / 2;
                var docScroll = $(document).scrollTop();
                var cardW = thisCard.outerWidth() / 2;
                var cardH = thisCard.height() / 2;
                var transX = xc - offset.left - cardW;
                var transY = docScroll + yc - offset.top - cardH;
                if (win.width() <= 700)
                    transY = 0;
                if (card.hasClass('active'))
                    unflip();
                thisCard.css({ 'z-index': '3' }).addClass('active');
                thisFlipper.css({
                    'transform': 'translate3d(' + transX + 'px,' + transY + 'px, 0) rotateY(180deg) scale(1)',
                    '-webkit-transform': 'translate3d(' + transX + 'px,' + transY + 'px, 0) rotateY(180deg) scale(1)',
                    '-ms-transform': 'translate3d(' + transX + 'px,' + transY + 'px, 0) rotateY(180deg) scale(1)'
                }).addClass('active');
                return false;
            };
            var unflip = function (e) {
                card.css({ 'z-index': '1' }).removeClass('active');
                flipper.css({
                    'transform': 'none',
                    '-webkit-transform': 'none',
                    '-ms-transform': 'none'
                }).removeClass('active');
            };
            var bindActions = function () {
                card.on('click', flip);
                win.on('click', unflip);
            };
            var init = function () {
                bindActions();
            };
            return { init: init };
            }();
            Flipper.init();
            
        });

    </script>

</script>
</body>
</html>