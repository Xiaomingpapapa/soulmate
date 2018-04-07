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
            <div class="layui-col-md6 layui-col-md-offset3">
                <ul class="layui-nav">
                  <li class="layui-nav-item"><a href="">情感测试</a></li>
                </ul>
                <hr class="hr50"/>
                <form class="layui-form" action="">
                  <div class="layui-form-item">
                    <label class="layui-form-label">1.</label>
                    <div class="layui-input-block">
                      <input type="text" name="title" autocomplete="off" class="layui-input layui-bg-green" value="请问 hello world什么意思？">
                    </div>
                  </div>
                  <div class="layui-form-item">
				    <label class="layui-form-label">选择框</label>
				    <div class="layui-input-block">
				      <select name="city" lay-verify="required">
				        <option value=""></option>
				        <option value="0">北京</option>
				        <option value="1">上海</option>
				        <option value="2">广州</option>
				        <option value="3">深圳</option>
				        <option value="4">杭州</option>
				      </select>
				    </div>
				  </div>
				  <div class="layui-form-item">
				    <div class="layui-input-block">
				      <input type="radio" name="option" value="男" title="A">
				      <input type="radio" name="option" value="女" title="B" checked>
				      <input type="radio" name="option" value="男" title="C">
                      <input type="radio" name="option" value="女" title="D" checked>
				    </div>
				  </div>
                </form>
            </div>
        </div>
    </div>
    <script>
        layui.use(['element','form'], function(){
          var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
          
          //监听导航点击
          element.on('nav(demo)', function(elem){
            //console.log(elem)
            layer.msg(elem.text());
          });
        });
</script>
</body>
</html>