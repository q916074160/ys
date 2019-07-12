<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../easyUi/themes/default/easyui.css">
    <link rel="stylesheet" href="../easyUi/themes/icon.css">
    <link rel="stylesheet" href="../easyUi/demo/demo.css">
    <script type="text/javascript" src="../easyUi/jquery.min.js"></script>
    <script type="text/javascript" src="../easyUi/jquery.easyui.min.js"></script>
    <style>
        #table1{width: 100%;height: 100%}
        .td1{background-color: #A1A1A1}
        #tds{height: 50px;background-color: #00bbee}
        #table1 tr{height: 4%;}
        .button1{width: 80px;height: 30px;border-radius: 3px}
    </style>
</head>
<body>
<form action="#" id="form1" >
    <table id="table1" border="1">
        <tr>
            <td colspan="6" id="tds" style="text-align: center">实算录入</td>
        </tr>
        <tr>
            <td class="td1">合同名称</td>
            <td><input type="text"  name="xiangmuname" id="xiangmuname"></td>
            <td class="td1">人数</td>
            <td><input type="text"  name="renshu" id="renshu">(个)</td>
            <td class="td1">税费</td>
            <td><input type="text"  name="shuifei" id="shuifei"/>总金额</td>
        </tr>
        <tr>
            <td class="td1">工资</td>
            <td><input type="text"  name="gongzi" id="gongzi">(元/月)</td>
            <td class="td1">时长</td>
            <td><input type="text"  name="shichang" id="shichang">(月)</td>
            <td class="td1">房租</td>
            <td><input type="text" name="fangzu" id="fangzu">(元/月)</td>
        </tr>
        <tr>
            <td class="td1">外包</td>
            <td><input type="text" name="waibao" id="waibao">总金额</td>
            <td class="td1">招待费</td>
            <td><input type="text" name="zhaodaifei" id="zhaodaifei"/>总金额</td>
            <td class="td1">通讯费</td>
            <td><input type="text"  name="tongxunfei" id="tongxunfei"/>总金额</td>
        </tr>
        <tr>
            <td class="td1">日用品</td>
            <td><input type="text" name="riyongpin" id="riyongpin"/>总金额</td>
            <td class="td1">邮寄费</td>
            <td><input type="text"  name="youjifei" id="youjifei"/>总金额</td>
            <td class="td1">租车费</td>
            <td><input type="text" name="zuchefei" id="zuchefei"/>总金额</td>
        </tr>
        <tr>
            <td class="td1">设备修理费</td>
            <td><input type="text"  name="shebeixiuli" id="shebeixiuli"/>总金额</td>
            <td class="td1">高速通行费</td>
            <td><input type="text" name="gaosutongxing" id="gaosutongxing"/>总金额</td>
            <td class="td1">出差加油费</td>
            <td><input type="text" name="chuchaijiayou" id="chuchaijiayou"/>总金额</td>
        </tr>
        <tr>
            <td class="td1">市内公交出租费</td>
            <td><input type="text" name="shineigongjiao" id="shineigongjiao"/>总金额</td>
            <td class="td1">(修/洗)车费</td>
            <td><input type="text" name="xiuchefei" id="xiuchefei"/>总金额</td>
            <td class="td1">人工费</td>
            <td><input type="text" name="rengong" id="rengong"/>总金额</td>
        </tr>
        <tr>
            <td class="td1">(水/电)费</td>
            <td><input type="text" name="shuidian" id="shuidian"/>(元/月)</td>
            <td class="td1">(火/汽)车/飞机票</td>
            <td><input type="text" name="chepiao" id="chepiao"/>总金额</td>
            <td class="td1">其他</td>
            <td><input type="text" name="qita" id="qita"/>总金额</td>
        </tr>
        <tr>
        <td class="td1">实施时间</td>
        <td><input class="easyui-datetimebox" style="width:90%"name="kaishitime" id="kaishitime" ></td>
        <td class="td1">中队选择</td>
        <td><select name="zhongdui" id="zhongdui">
            <option value="请选择">--请选择--</option>
            <option value="一中队">一中队</option>
            <option value="二中队">二中队</option>
            <option value="三中队">三中队</option>
            <option value="四中队">四中队</option>
            <option value="五中队">五中队</option>
            <option value="内业">内业</option>
            <option value="管理">管理</option>
        </select>
        </td>
            <td class="td1">时间</td>
            <td><input class="easyui-datetimebox" style="width:90%" name="time" id="time" ></td>
    </tr>
        <tr>
            <td colspan="6" style="text-align: center">社保</td>
        </tr>
        <tr>
            <td colspan="6" style="text-align: center"><input class="button1" type="button" id="button" value="实&nbsp;算&nbsp;结&nbsp;果" onclick="check()"/>&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="button1" type="reset" value="重&nbsp;&nbsp;&nbsp;&nbsp;置"/>
            </td>
        </tr>
        <tr>
            <td colspan="6" style="text-align: center">结果：<span id="jg" style="width: 300px;"></span></td>
        </tr>
    </table>
</form>
</body>
</html>
<script type="text/javascript" src="../js/index.js"></script>