<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/static/easyUi/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/static/easyUi/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="/static/easyUi/demo/demo.css">
    <script type="text/javascript" src="/static/easyUi/jquery.min.js"></script>
    <script type="text/javascript" src="/static/easyUi/jquery.easyui.min.js"></script>

    <style>
        #table1 {
            width: 100%;
            height: 100%
        }

        .td1 {
            background-color: #A1A1A1
        }

        #tds {
            height: 50px;
            background-color: #00bbee
        }

        #table1 tr {
            height: 4%;
        }

        /*.button1{width: 80px;height: 30px;border-radius: 3px}*/
    </style>
</head>
<body>
<form action="#" id="form1" method="post">
    <table cellpadding="5" style="position: absolute;left:20%;top: 7%;">
        <tr>
            <td>合同名称:</td>
            <td><input class="easyui-textbox" type="text" name="xiangmuname" id="xiangmuname"></input></td>
        </tr>
        <tr>
            <td>人数:</td>
            <td><input class="easyui-textbox" type="text" name="renshu" id="renshu"></input>(个)</td>
        </tr>
        <tr>
            <td>税费:</td>
            <td><input class="easyui-textbox" type="text" name="shuifei" id="shuifei"></input>(元/月)</td>
        </tr>
        <tr>
            <td>工资:</td>
            <td><input class="easyui-textbox" type="text" name="gongzi" id="gongzi"></input>(元/月)</td>
        </tr>
        <tr>
            <td>时长:</td>
            <td><input class="easyui-textbox" type="text" name="shichang" id="shichang"></input>(月)</td>
        </tr>
        <tr>
            <td>房租:</td>
            <td><input class="easyui-textbox" type="text" name="fangzu" id="fangzu"></input>(元/月)</td>
        </tr>
        <tr>
            <td>外包:</td>
            <td><input class="easyui-textbox" type="text" name="waibao" id="waibao"></input>(总共)</td>
        </tr>
        <tr>
            <td>招待费:</td>
            <td><input class="easyui-textbox" type="text" name="zhaodaifei" id="zhaodaifei"></input>(元/月)</td>
        </tr>
        <tr>
            <td>通讯费:</td>
            <td><input class="easyui-textbox" type="text" name="tongxunfei" id="tongxunfei"></input>(元/月)</td>
        </tr>
        <tr>
            <td>日用品:</td>
            <td><input class="easyui-textbox" type="text" name="riyongpin" id="riyongpin"></input>(元/月)</td>
        </tr>
        <tr>
            <td>邮寄费:</td>
            <td><input class="easyui-textbox" type="text" name="youjifei" id="youjifei"></input>(元/月)</td>
        </tr>
        <tr>
            <td>租车费:</td>
            <td><input class="easyui-textbox" type="text" name="zuchefei" id="zuchefei"></input>(元/月)</td>
        </tr>
        <tr>
            <td>设备修理费:</td>
            <td><input class="easyui-textbox" type="text" name="shebeixiuli" id="shebeixiuli"></input>(元/月)</td>
        </tr>
        <tr>
            <td>(火/汽)车/飞机票:</td>
            <td><input class="easyui-textbox" type="text" name="chepiao" id="chepiao"></input>(元/月)</td>
        </tr>
        <tr>
        <tr>
            <td colspan="2">结果：<span id="jg" style="width: 300px;"></span>&nbsp;&nbsp;&nbsp;<span id="gzhe" style="width: 300px;"></span>
            </td>
        </tr>
    </table>
    <table cellpadding="5" style="position: absolute; top:7%; left:60%;">
        <tr>
            <td>高速通行费:</td>
            <td><input class="easyui-textbox" type="text" name="gaosutongxing" id="gaosutongxing"></input>(元/月)</td>
        </tr>
        <tr>
            <td>出差加油费:</td>
            <td><input class="easyui-textbox" type="text" name="chuchaijiayou" id="chuchaijiayou"></input>(元/月)</td>
        </tr>
        <tr>
            <td>市内公交出租费:</td>
            <td><input class="easyui-textbox" type="text" name="shineigongjiao" id="shineigongjiao"></input>(元/月)</td>
        </tr>
        <tr>
            <td>(修/洗)车费:</td>
            <td><input class="easyui-textbox" type="text" name="xiuchefei" id="xiuchefei"></input>(元/月)</td>
        </tr>
        <tr>
            <td>人工费:</td>
            <td><input class="easyui-textbox" type="text" name="rengong" id="rengong"></input>(元/月)</td>
        </tr>
        <tr>
            <td>(水/电)费:</td>
            <td><input class="easyui-textbox" type="text" name="shuidian" id="shuidian"></input>(元/月)</td>
        </tr>
        <tr>
            <td>其他:</td>
            <td><input class="easyui-textbox" type="text" name="qita" id="qita"></input>(元/月)</td>
        </tr>
        <tr>
            <td>养老保险:</td>
            <td><input class="easyui-textbox" type="text" name="yanglao" id="yanglao"></input>(元/月)</td>
        </tr>
        <tr>
            <td>医疗保险:</td>
            <td><input class="easyui-textbox" type="text" name="yiliao" id="yiliao"></input>(元/月)</td>
        </tr>
        <tr>
            <td>工伤保险:</td>
            <td><input class="easyui-textbox" type="text" name="gongshang" id="gongshang"></input>(元/月)</td>
        </tr>
        <tr>
            <td>失业保险:</td>
            <td><input class="easyui-textbox" type="text" name="shiye" id="shiye"></input>(元/月)</td>
        </tr>
        <tr>
            <td>生育保险:</td>
            <td><input class="easyui-textbox" type="text" name="shengyu" id="shengyu"></input>(元/月)</td>
        </tr>
        <tr>
            <td>中队选择:</td>
            <td>
               <select class="easyui-combobox" name="zhongdui" id="zhongdui" style="width:100px;"  data-options="editable:false">
                    <option value="请选择">--请选择--</option>
                    <option value="1">一中队</option>
                    <option value="2">二中队</option>
                    <option value="3">三中队</option>
                    <option value="4">四中队</option>
                    <option value="5">五中队</option>
                    <option value="6">内页</option>
                    <option value="7">管理</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>备注:</td>
            <td><textarea  name="beizhu" id="beizhu"></textarea></td>
        </tr>
    </table>
    <a href="javascript:void(0)" class="easyui-linkbutton"
       style="outline:none;text-align:center; position: absolute; bottom:0.5%;right:170px;height:30px;"><input
            class="button1" type="button" id="button2" value="保存" onclick="check(2)"
            style="border:0px white solid;background:transparent;outline:none;cursor: pointer;"/></a>
    <a href="javascript:void(0)" class="easyui-linkbutton"
       style="outline:none;text-align:center; position: absolute; bottom:0.5%;right:80px;height:30px;"><input
            class="button1" type="button" id="button" value="预算结果" onclick="check(1)" style="border:0px white solid;background:transparent;outline:none;cursor: pointer;"/></a>
    <a href="javascript:void(0)" class="easyui-linkbutton" style="outline:none;text-align:center; position: absolute; bottom:0.5%;right:20px; height:30px;"
       onclick="clearForm()"><input class="button1" type="reset" value="重置" style="outline:none;border:0px white solid;background:transparent;cursor: pointer;"/></a>
</form>
</body>
</html>
<script type="text/javascript" src="/static/js/index.js"></script>
<script type="text/javascript">
    function clearForm() {
        $("#jg").text('');
        $('#form1').form('reset');
    }
</script>