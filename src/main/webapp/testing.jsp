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
                   	<form class="layui-form" action="">
                   		<div class="question">
                    		<div class="layui-form-item">
                    			<label class="layui-form-label" style="width:10px">1.</label>
                    			<label class="layui-form-label layui-bg-green" style="width:300px;text-align:left">hello world对于程序员有什么特殊含义？</label>
                    		</div>
                    		<div class="layui-form-item" > 
                    			<div class="layui-input-inline" style="width:30px">
                    				<input type="radio" name="question1" value="a" checked>
                    			</div>
                    			<div class="layui-input-inline">
                    				<label class="layui-form-label layui-bg-cyan" style="width:300px;text-align:left">象征一个好的开始1</label>
                    			</div>
                    		</div>
                    		<div class="layui-form-item" > 
                    			<div class="layui-input-inline" style="width:30px">
                    				<input type="radio" name="question1" value="b">
                    			</div>
                    			<div class="layui-input-inline">
                    				<label class="layui-form-label layui-bg-cyan" style="width:300px;text-align:left">象征一个好的开始2</label>
                    			</div>
                    		</div>
                    		<div class="layui-form-item" > 
                    			<div class="layui-input-inline" style="width:30px">
                    				<input type="radio" name="question1" value="c">
                    			</div>
                    			<div class="layui-input-inline">
                    				<label class="layui-form-label layui-bg-cyan" style="width:300px;text-align:left">象征一个好的开始3</label>
                    			</div>
                    		</div>
                    		<div class="layui-form-item" > 
                    			<div class="layui-input-inline" style="width:30px">
                    				<input type="radio" name="question1" value="d">
                    			</div>
                    			<div class="layui-input-inline">
                    				<label class="layui-form-label layui-bg-cyan" style="width:300px;text-align:left">象征一个好的开始4</label>
                    			</div>
                    		</div>
                   		</div>
                   		<hr class="hr50">
                   		<div class="question">
                    		<div class="layui-form-item">
                    			<label class="layui-form-label" style="width:10px">2.</label>
                    			<label class="layui-form-label layui-bg-green" style="width:300px;text-align:left">遇到突如其来的爱情，你将如何面对？</label>
                    		</div>
                    		<div class="layui-form-item" > 
                    			<div class="layui-input-inline" style="width:30px">
                    				<input type="radio" name="question2" value="a" checked>
                    			</div>
                    			<div class="layui-input-inline">
                    				<label class="layui-form-label layui-bg-cyan" style="width:300px;text-align:left">慎重把握</label>
                    			</div>
                    		</div>
                    		<div class="layui-form-item" > 
                    			<div class="layui-input-inline" style="width:30px">
                    				<input type="radio" name="question2" value="b">
                    			</div>
                    			<div class="layui-input-inline">
                    				<label class="layui-form-label layui-bg-cyan" style="width:300px;text-align:left">疯狂陷入</label>
                    			</div>
                    		</div>
                    		<div class="layui-form-item" > 
                    			<div class="layui-input-inline" style="width:30px">
                    				<input type="radio" name="question2" value="c">
                    			</div>
                    			<div class="layui-input-inline">
                    				<label class="layui-form-label layui-bg-cyan" style="width:300px;text-align:left">胆怯不敢接受</label>
                    			</div>
                    		</div>
                   		</div>
                   		  <div class="layui-form-item">
						  	  <div class="layui-input-block">
						          <button class="layui-btn" lay-submit lay-filter="formDemo">下一步</button>
						      </div>
						  </div>
                   	</form>
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