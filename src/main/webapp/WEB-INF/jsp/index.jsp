<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>项目预算管理系统</title>
    <link rel="stylesheet" href="easyUi/themes/default/easyui.css">
    <link rel="stylesheet" href="easyUi/themes/icon.css">
    <link rel="stylesheet" href="easyUi/demo/demo.css">
    <link rel="stylesheet" href="css/index.css">
    <script type="text/javascript" src="easyUi/jquery.min.js"></script>
    <script type="text/javascript" src="easyUi/jquery.easyui.min.js"></script>
</head>
<body class="easyui-layout" onload="load()">
<div data-options="region:'north',border:false" id="north">
    <div id="div1">项目预算管理系统</div>
    <div id="div2"></div>
</div>
<div data-options="region:'west',split:true,title:'菜单'" style="width:250px;">
    <div class="easyui-accordion" data-options="fit:true,border:false,selected:false" style="background-color: #e7eaed" id="leftMenu">
        <div title="预算" class="beijing" id="Scene" data-options="selected:false">
            <li id="li1">预算导入</li>
        </div>
        <div title="xxx" class="beijing" id="sand">
            <li onclick="addTab(this.innerHTML,'')">xx</li>
            <li onclick="addTab(this.innerHTML,'DianXing.html')">xxx</li>
        </div>
    </div>
</div>
</div>
<div data-options="region:'east',split:true,collapsed:true,title:'East'" style="width:100px;padding:10px;">east region</div>
<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">south region</div>
<div data-options="region:'center'"id="">
    <!-- 通过左边添加tabs-->
    <div id="tts" class="easyui-tabs" data-options="border:false,fit:true">
        <!--首页tabs页-->
        <div class="easyui-layout" title="首页" style="padding:10px">
            <div id="yusuan">
                <table>
                    <tr>
                        <td><h1>预算录入</h1><br/></td>
                    </tr>
                    <tr>
                        <td><span>人&nbsp;&nbsp;数&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">（个）</span></td>
                        <td><span>工&nbsp;&nbsp;资&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">（元/月）</span></td>
                    </tr>
                    <tr>
                        <td><span>税&nbsp;&nbsp;费&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                        <td><span>人&nbsp;工&nbsp;费&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                    </tr>
                    <tr>
                        <td><span>招&nbsp;待&nbsp;费&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                        <td><span>通&nbsp;讯&nbsp;费&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                    </tr>
                    <tr>
                        <td><span>日&nbsp;用&nbsp;品&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">总金额（元/月）</span></td>
                        <td><span>邮&nbsp;寄&nbsp;费&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">总金额（元/月）</span></td>
                    </tr>
                    <tr>
                        <td><span>租&nbsp;车&nbsp;费&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                        <td><span>设备修理费&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                    </tr>
                    <tr>
                        <td><span>高速通行费&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                        <td><span>出差加油费&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                    </tr>
                    <tr>
                        <td><span>市内公交出租费&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                        <td><span>（修/洗）车费&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                    </tr>
                    <tr>
                        <td><span>房&nbsp;&nbsp;租&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">（元/月）</span></td>
                        <td><span>外&nbsp;&nbsp;包&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                    </tr>
                    <tr>
                        <td><span>（水/电）费&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                    </tr>
                    <tr>
                        <td><span>（火/汽）车/飞机票&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                        <td><span>其&nbsp;&nbsp;他&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">（元/月）</span></td>
                    </tr>
                    <tr>
                        <br/>
                        <td><h1>社保</h1></td>
                    </tr>
                    <tr>
                        <td><span>养&nbsp;老&nbsp;保&nbsp;险&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                        <td><span>医&nbsp;疗&nbsp;保&nbsp;险&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                        <td><span>工&nbsp;伤&nbsp;保&nbsp;险&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                    </tr>
                    <tr>
                        <td><span>失&nbsp;业&nbsp;保&nbsp;险&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                        <td><span>生&nbsp;育&nbsp;保&nbsp;险&nbsp;：&nbsp;&nbsp;</span><input type="text"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                    </tr>
                    <tr>
                        <td><input class="button" type="button" value="预&nbsp;算&nbsp;结&nbsp;果"/></td>
                        <td><input class="button" style="float:right;" type="button" value="信&nbsp;息&nbsp;储&nbsp;存"/></td>
                    </tr>
                </table>
            </div>
            <div id="main2"></div>
        </div>
    </div>
</div>
</body>
</html>

<script type="text/javascript" src="js/index.js"></script>