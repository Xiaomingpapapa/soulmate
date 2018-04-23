<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>testing</title>
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
                <div class="main_body">
                    <form id="testing_form"class="layui-form" action="">
                        <div id="question_body"></div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn layui-bg-red" lay-submit lay-filter="testing_submit">下一步</button>
                            </div>
                        </div>
                    </form>
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
            
            //获取question list
            var current_category = 'character';
            $.ajax({
                    type : "get",
                    url : "questionlist.do",
                    data : {category:current_category},
                    dataType : "json",
                    async : true,
                    success : function(data){
                        if(data.data!=null){
                            $.each(data.data, function(index, question){
                                $("#question_body").append(
                              '<div class="question" id="'+question.question_id+'"><div class="layui-form-item"><label class="layui-form-label" style="width:10px">'+(index+1)+'</label><label class="layui-form-label layui-bg-green" style="width:450px;text-align:left">'+question.title+'</label></div><div id="option_content"></div></div>')
                              
                              $.each(question.option_list,function(i, option){
                                  $("#"+question.question_id).find("div[id='option_content']").append(
                                    '<div class="layui-form-item" ><div class="layui-input-inline" style="width:30px;padding-left:10px"><input type="radio" name="'+question.question_id+'" value="'+option.option_id+'" checked></div><div class="layui-input-inline"><label class="layui-form-label layui-bg-cyan" style="width:300px;text-align:left">'+option.content+'</label></div></div>')
                              });
                            });
                          form.render('radio');
                        }else{
                            layer.msg("error");
                        }
                    }
            });

            form.on('submit(testing_submit)', function(data){
                $.ajax({
                        type : "post",
                        url : "testing.do",
                        data : data.field,
                        dataType : "json",
                        async : true,
                        success : function(data){
                            if(data.data != null){
                                window.location.href="<%=basePath%>system/dashboard.do"
                            }
                        }
                });
                return false;
            });
        });
    </script>
</body>
</html>