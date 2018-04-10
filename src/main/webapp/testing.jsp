<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/soulmate/css/common.css">
<title>Insert title here</title>
<%@ include file="/WEB-INF/view/public/meta.jsp"%>
</head>
<style type="text/css">

</style>
<body>
    <div class="layui-container">
        <div class="layui-row">
            <div class="layui-col-md6 layui-col-md-offset3" style="background-color:white">
                <ul class="layui-nav">
                  <li class="layui-nav-item"><a href="">情感测试</a></li>
                </ul>
                <hr class="hr50"/>
                <div class="main-testing">
                    <div class="question">
                        <div class="title">
                            
                        </div>
                        <div class="option">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        layui.use(['element','form'], function(){
          var element = layui.element //导航的hover效果、二级菜单等功能，需要依赖element模块
          ,form = layui.form
          //监听导航点击
          element.on('nav(demo)', function(elem){
            //console.log(elem)
            layer.msg(elem.text());
          });
          
          form.on('submit(formDemo)', function(data){
        	  layer.msg(JSON.stringify(data.field));
        	  return false;
          });
        });
</script>
</body>
</html>