<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>项目预算管理系统</title>
    <link rel="stylesheet" href="../easyUi/themes/default/easyui.css">
    <link rel="stylesheet" href="../easyUi/themes/icon.css">
    <link rel="stylesheet" href="../easyUi/demo/demo.css">
    <link rel="stylesheet" href="../css/index.css">
    <script type="text/javascript" src="../easyUi/jquery.min.js"></script>
    <script type="text/javascript" src="../easyUi/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../js/index.js"></script>
</head>
<body class="easyui-layout">
<div data-options="region:'north',border:false" id="north">
    <div id="div1">项目预算管理系统</div>
    <div id="div2"></div>
</div>
<div data-options="region:'west',split:true,title:'菜单'" style="width:250px;">
    <div class="easyui-accordion" data-options="fit:true,border:false,selected:false" style="background-color: #e7eaed" id="leftMenu">
        <div title="预算" class="beijing" id="Scene" data-options="selected:false">
            <li id="li1" onclick="addTab(this.innerHTML,'ysdr')">预算导入</li>
            <li id="li3" onclick="addTab(this.innerHTML,'ssdr')">实算导入</li>
            <li id="li2" onclick="addTab(this.innerHTML,'querySs')">查询</li>
            <li id="li4" onclick="addTab(this.innerHTML,'rydr')">人员导入</li>
        </div>
        <div title="xxx" class="beijing" id="sand">
            <li onclick="addTab(this.innerHTML,'')">xx</li>

            <li onclick="addTab(this.innerHTML,'DianXing.html')">xxx</li>
        </div>
</div>
</div>
</div>
<div data-options="region:'east',split:true,collapsed:true,title:'East'" style="width:100px;padding:10px;">east region</div>
<div data-options="region:'south',border:false" style="height:30px;background:#A9FACD;padding:10px;">south region</div>
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