<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/soulmate-update/css/login.css">
<%@ include file="/WEB-INF/view/public/meta.jsp"%>
<title>login</title>
</head>
<body>
    <div class="login">
        <div class="message">Soulmate</div>
        <div id="darkbannerwrap"></div>
        <form method="post" class="layui-form">
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-block">
                    <input type="text" name="user_name" required  lay-verify="required" placeholder="用户名" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码</label>
                <div class="layui-input-block">
                    <input type="password" name="password" required lay-verify="required" placeholder="密码" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="log">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
    <script>
      layui.use(['form'], function(){
          var form = layui.form
          ,$ = layui.jquery
          ,layer = layui.layer;
          //监听提交
          form.on('submit(log)', function(data){
              $.ajax({
                  type : "post",
                  url : "login.do",
                  data :data.field,
                  dataType : "json",
                  async : true,
                  success : function(data){
                      if(data.data!=null){
                          if(data.data.is_finished_testing == 0){
                              window.location.href="<%=basePath%>testing/testing.do"
                          }
                          else{
                              window.location.href="<%=basePath%>system/dashboard.do"
                          }
                      }else{
                          layer.msg("error");
                      }
                  }
              });
         return false;
        });
      });
    </script>
</body>
</html>