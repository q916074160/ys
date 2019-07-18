<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/static/easyUi/themes/default/easyui.css">
    <link rel="stylesheet" href="/static/easyUi/themes/icon.css">
    <link rel="stylesheet" href="/static/easyUi/demo/demo.css">
    <script type="text/javascript" src="/static/easyUi/jquery.min.js"></script>
    <script type="text/javascript" src="/static/easyUi/jquery.easyui.min.js"></script>

</head>
<body>

<div style="margin:20px 0;">
    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#w').window('open')">文件导入</a>
</div>
<div id="w" class="easyui-window" title="文件导入" data-options="minimizable:false,maximizable: false,tools:'#tt',closed:true" style="width:500px;height:300px;padding:10px;">
    <form action="excel/add" id="f">
    <div style="margin-bottom:20px;margin-top: 20px;">
        <input class="easyui-filebox" id="wenjian" name="file2" data-options="buttonText:'浏览...',prompt:'请选择文件'" style="width:100%;">
    </div>
    <div>
        <a href="#" id="shangchuan" class="easyui-linkbutton" style="width:50%">确定</a><a href="#" class="easyui-linkbutton" style="width:50%" onclick="$('#w').window('close')">取消</a>
    </div>
    </form>
</div>
<script type="text/javascript" src="/static/js/daochu.js"></script>
</body>
</html>
