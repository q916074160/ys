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
<form action="#" id="form1">
    <table cellpadding="5" style="position: absolute;left:20%;top: 7%;">
        <tr>
            <td>合同名称:</td>
            <td><input class="easyui-textbox" type="text" name="xiangmuname" id="xiangmuname" data-options="required:true"></input></td>
        </tr>
        <tr>
            <td>人工费:</td>
            <td><input class="easyui-textbox" type="text"  name="rengong" id="rengong" data-options="required:true"></input>	</td>
        </tr>

        <tr>
            <td>税费:</td>
            <td><input class="easyui-textbox" type="text"  name="shuifei" id="shuifei" data-options="required:true"></input></td>
        </tr>
        <tr>
            <td>时长:</td>
            <td><input class="easyui-textbox" type="text"  name="shichang" id="shichang" data-options="required:true"></input>	</td>
        </tr>
        <tr>
            <td>房租:</td>
            <td><input class="easyui-textbox" type="text"  name="fangzu" id="fangzu" data-options="required:true"></input>	</td>
        </tr>
        <tr>
            <td>外包:</td>
            <td><input class="easyui-textbox" type="text"  name="waibao" id="waibao" data-options="required:true"></input>	</td>
        </tr>
        <tr>
            <td>招待费:</td>
            <td><input class="easyui-textbox" type="text"  name="zhaodaifei" id="zhaodaifei" data-options="required:true"></input>	</td>
        </tr>
        <tr>
            <td>通讯费:</td>
            <td><input class="easyui-textbox" type="text"  name="tongxunfei" id="tongxunfei" data-options="required:true"></input>	</td>
        </tr>
        <tr>
            <td>租车费:</td>
            <td><input class="easyui-textbox" type="text"  name="zuchefei" id="zuchefei" data-options="required:true"></input>	</td>
        </tr>
        <tr>
            <td>(火/汽)车/飞机票:</td>
            <td><input  class="easyui-textbox" type="text" name="chepiao" id="chepiao" data-options="required:true"></input></td>
        </tr>
        <tr>
            <td>工资:</td>
            <td><input  type="text" name="gongzi" id="gongzi"  readonly= "true" style="width:172px;height: 30px;border-radius: 5px;border: 1px solid cornflowerblue"></input></td>
        </tr>
        <tr>
            <td class="td1">实施时间</td>
            <td><input class="easyui-datebox" style="width:90%"name="kaishitime" id="kaishitime" ></td>
        </tr>

        <tr>
            <td colspan="2" style="text-align: right"><input class="button1" type="button" id="button" value="预&nbsp;算&nbsp;结&nbsp;果" onclick="check1()"/>&nbsp;&nbsp;<input class="button1" type="button" onclick="clearForm()"  value="重&nbsp;&nbsp;&nbsp;&nbsp;置"/></td>
        </tr>
        <tr>
            <td colspan="2">结果：<span id="jg" style="width: 300px;"></span>&nbsp;&nbsp;&nbsp;工资：<span id="gzhe" style="width: 300px;"></span></td>
        </tr>
    </table>
    <table cellpadding="5" style="position: absolute; top:7%; left:60%;">
        <tr>
            <td>高速通行费:</td>
            <td><input class="easyui-textbox" type="text" name="gaosutongxing" id="gaosutongxing" data-options="required:true"></input></td>
        </tr>
        <tr>
            <td>出差加油费:</td>
            <td><input class="easyui-textbox" type="text" name="chuchaijiayou" id="chuchaijiayou" data-options="required:true"></input></td>
        </tr>
        <tr>
            <td>市内公交出租费:</td>
            <td><input class="easyui-textbox" type="text"  name="shineigongjiao" id="shineigongjiao" data-options="required:true"></input></td>
        </tr>
        <tr>
            <td>(修/洗)车费:</td>
            <td><input class="easyui-textbox" type="text"  name="xiuchefei" id="xiuchefei" data-options="required:true"></input></td>
        </tr>
        <tr>
            <td>设备修理费:</td>
            <td><input class="easyui-textbox" type="text"  name="shebeixiuli" id="shebeixiuli" data-options="required:true"></input></td>
        </tr>
        <tr>
            <td>(水/电)费:</td>
            <td><input class="easyui-textbox" type="text" name="shuidian" id="shuidian" data-options="required:true"></input>	</td>
        </tr>
        <tr>
            <td>日用品:</td>
            <td><input class="easyui-textbox" type="text"  name="riyongpin" id="riyongpin" data-options="required:true"></input>	</td>
        </tr>
        <tr>
            <td>邮寄费:</td>
            <td><input class="easyui-textbox" type="text"  name="youjifei" id="youjifei" data-options="required:true"></input>	</td>
        </tr>
        <tr>
            <td>其他:</td>
            <td><input class="easyui-textbox" type="text"  name="qita" id="qita" data-options="required:true"></input>	</td>
        </tr>
        <tr>
            <td>人数:</td>
            <td><input  type="text" name="renshu" id="renshu"  readonly= "true" style="width:172px;height: 30px;border-radius: 5px;border: 1px solid cornflowerblue"></input></td>
        </tr>
        </tr>
        <tr>
            <td class="td1">时间</td>
            <td><input class="easyui-datebox" style="width:90%" name="time" id="time" ></td>
        </tr>
        <tr>
            <td>中队选择:</td>
            <td>
                <select   name="zhongdui" id="zhongdui" onchange="zd()" style="width:100px;height: 30px;border-radius: 5px;border: 1px solid cornflowerblue" >
                    <option value="请选择" >--请选择--</option>
                    <option value="1">一中队</option>
                    <option value="2">二中队</option>
                    <option  value="3">三中队</option>
                    <option value="4">四中队</option>
                    <option value="5">五中队</option>
                    <option value="6">内业</option>
                    <option value="7">管理</option>
                </select>
            </td>
        </tr>
    </table>
</form>
<script type="text/javascript" src="/static/js/index.js"></script>
</body>
</html>
