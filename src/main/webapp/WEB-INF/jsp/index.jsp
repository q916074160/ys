<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>项目预算管理系统</title>
    <link rel="stylesheet" href="/static/easyUi/themes/default/easyui.css">
    <link rel="stylesheet" href="/static/easyUi/themes/icon.css">
    <link rel="stylesheet" href="/static/easyUi/demo/demo.css">
    <link rel="stylesheet" href="/static/css/index.css">
    <script type="text/javascript" src="/static/easyUi/jquery.min.js"></script>
    <script type="text/javascript" src="/static/easyUi/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/static/js/index.js"></script>
    <style>
        li:hover{
            background: #ffe48d;
            color:white;
        }
    </style>
</head>
<body class="easyui-layout">
<div data-options="region:'north',border:false" id="north" style="background: #e0ecff;">
    <img src="/static/img/logo.png" alt="" style="width: 60px; height: 60px;position: absolute; top:-10px;">
    <div id="div1" style="margin:0; padding:0; border:0; position:absolute;top:0px; left:60px; font-size: 30px; color:black;">&nbsp;项目预算管理系统</div>
    <div id="div2" style=" position:absolute; top:3px; left:1680px;">欢迎你:</div><span style="color:white;position: absolute; top:3px;left:1740px; font-size:15px;"></span>
</div>
<div data-options="region:'west',split:true,title:'菜单'" style="width:250px;">
    <div class="easyui-accordion" data-options="fit:true,border:false,selected:false" style="background-color: #e7eaed" id="leftMenu">
        <div title="预算" class="beijing" id="Scene" data-options="selected:false">
            <li id="li1" onclick="addTab(this.innerHTML,'ysdr')" style="cursor: pointer; list-style-type:none;">预算导入</li>
            <li id="li3" onclick="addTab(this.innerHTML,'ssdr')" style="cursor: pointer; list-style-type:none;">实算导入</li>
            <li id="li4" onclick="addTab(this.innerHTML,'rydr')" style="cursor: pointer; list-style-type:none;">人员导入</li>
        </div>
        <div title="查询" class="beijing" id="sand">
            <li id="li2" onclick="addTab(this.innerHTML,'querySs')" style="cursor: pointer; list-style-type:none;">查询</li>
        </div>
</div>
</div>
</div>
<div data-options="region:'south',border:false" style="height:30px;background:#e0ecff;padding:10px;overflow-y:hidden; text-align: center;">哈尔滨文图地理测绘有限公司版权所有</div>
<div data-options="region:'center'"id="">
    <!-- 通过左边添加tabs-->
    <div id="tts" class="easyui-tabs" data-options="border:false,fit:true">
        <!--首页tabs页-->
        <div class="easyui-layout" title="首页" style="padding:10px">
        </div>
    </div>
</div>
</body>
</html>