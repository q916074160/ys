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
<div data-options="region:'north',border:false" id="north" style="padding: 0px">
    <div id="div1" ><img src="/static/img/lg.png" alt="">&nbsp;<span class="cl1">项目预算管理系统</span></div>
    <div id="div2"><span class="cl2">欢迎你:</span><span id="sp1"></span><a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'"  onclick="$('#w').window('open')" style="position: relative;right: -250px;">人员导入</a></div>
</div>
<div data-options="region:'west',split:true,title:'菜单'" style="width:250px;">
    <div class="easyui-accordion" data-options="fit:true,border:false,selected:false" style="background-color: #e7eaed" id="leftMenu">
        <div title="预算" class="beijing" id="Scene" data-options="selected:false">
            <li id="li1" onclick="addTab(this.innerHTML,'ysdr')" style="cursor: pointer; list-style-type:none;">预算导入</li>
            <li id="li3" onclick="addTab(this.innerHTML,'ssdr')" style="cursor: pointer; list-style-type:none;">实算导入</li>
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
<%--文件导入---------------------------------------%>
<div id="w" class="easyui-window" title="文件导入" data-options="minimizable:false,maximizable: false,tools:'#tt',closed:true" style="width:500px;height:300px;padding:10px;">
    <form action="excel/add" id="f">
        <div style="margin-bottom:20px;margin-top: 20px;">
            <input class="easyui-filebox" id="wenjian" name="wenjian" data-options="buttonText:'浏览...',prompt:'请选择文件'" style="width:100%;">
        </div>
        <div>
            <a href="#" id="shangchuan" class="easyui-linkbutton" style="width:50%">确定</a><a href="#" class="easyui-linkbutton" style="width:50%" onclick="$('#w').window('close')">取消</a>
        </div>
    </form>
</div>
<script type="text/javascript" src="/static/js/daochu.js"></script>
</body>
</html>