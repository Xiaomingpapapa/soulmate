<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Message</title>
</head>
<%@ include file="/WEB-INF/view/public/meta.jsp"%>
</head>
<body>
    <div class="layui-container">
        <div class="layui-row">
            <div class="layui-col-md6 layui-col-md-offset3" style="background-color:white">
                <ul class="layui-nav">
                    <li class="layui-nav-item "><a href="javascript:void(0);" onclick="window.location.href='<%=basePath%>partner/recommendpartner.do'">匹配广场</a></li>
                    <li class="layui-nav-item layui-this"><a href="">聊天</a></li>
                    <li class="layui-nav-item"><a href="">好友</a></li>
                    <li class="layui-nav-item"><a href="">动态</a></li>
                </ul>
                <hr class="hr50"/>
                <div class="main_body">
                    <div class="left_messagelist" style="width:20%;height:100%;background-color:red;float:left"></div>
                    <div class="right_chatbody" style="width:80%;min-height:100%;float:left">
                        <div class="message_body" style="width:100%;height:250px;background-color:blue;"></div>
                        <div id="message_editor_toolbar"></div>
                        <div id="message_editor" class="message_editor" style="width:100%;max-height:115px;height:85px;">
                        </div>
                        <div class="message_submit" style="height:30px;margin-bottom:0px;">
                            <button class="layui-btn" style="width:70px;line-height:27px;height:27px;float:right;margin-right:20px">发送</button>
                        </div>
                    </div>
                </div>
             </div>
         </div>
     </div>
     <script src="<%=basePath %>wang_editor/wangEditor.min.js"></script>
     <script>
         var E = window.wangEditor;
         var  editor = new E('#message_editor_toolbar','#message_editor');
         editor.customConfig.menus = [
             'bold',
             'emoticon',
         ]
         editor.create();
     </script>
</body>
</html>