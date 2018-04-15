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
                <p class="card__name"><span>Tony</span><br>Romo</p>
                <p class="card__num">9</p>
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
        });
    </script>
</body>
</html>