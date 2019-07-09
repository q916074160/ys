<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="../easyUi/jquery.min.js"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
            border: 0px white none;
        }

        .first {
            background: #0000ff;
            color: white;
            font-weight: bold;
        }

        #b {
            position: absolute;
            left: 55%;
            top: 10%;
        }

        #a {
            position: absolute;
            top: 10%;
            right: 60%;
        }

        #c {
            position: fixed;
            top: 45%;
            left: 30%;
        }

        #d {
            position: absolute;
            top: 65%;
            left: 35%;
            border-style: none;
        }
        #e {
            position: fixed;
            top: 70%;
            left: 30%;
        }
        #d td{
            border-style: none;
        }

        input {
            outline: none;
            background: white;
        }

        td {
            line-height: 30px;
            border: 1px gray solid;
            text-align: center;
        }

        #one {
            position: absolute;
            left: 42.5%;
            font-size: 45px;
        }

        #two {
            position: absolute;
            top: 35%;
            left: 45%;
            font-size: 45px;
        }

        .button1 {
            background: #e0ecff;
            border-radius: 15px;
            outline: none;
            cursor: pointer;
            box-shadow: 2px 2px 5px #bbb;
            width: 80px;
            height: 35px;
            font-weight: bold;
        }

        .button2 {
            margin-left: 250px;
            background: #e0ecff;
            border-radius: 15px;
            outline: none;
            cursor: pointer;
            box-shadow: 2px 2px 5px #bbb;
            width: 80px;
            height: 35px;
            font-weight: bold;
        }
        .button1:hover,.button2:hover{
            background-color: #00bbee;
        }
    </style>
</head>
<body>
<p id="one">预算录入</p>
<form action="#" id="form1">
    <table id="a">
        <tr>
            <td class="first">合同名称</td>
            <td> <input type="text"  name="xiangmuname" id="xiangmuname"></td>
        </tr>
        <tr>
            <td class="first">人数</td>
            <td><input type="text"  name="renshu" id="renshu">(个)</td>
            <td class="first">工资</td>
            <td><input type="text"  name="gongzi" id="gongzi">(元/月)</td>
        </tr>
        <tr>
            <td class="first">时长</td>
            <td><input type="text"  name="shichang" id="shichang">(月)</td>
            <td class="first">税费</td>
            <td><input type="text"  name="shuifei" id="shuifei"/>总金额</td>
        </tr>
        <tr>
            <td class="first">房租</td>
            <td><input type="text" name="fangzu" id="fangzu">(元/月)</td>
            <td class="first">外包</td>
            <td><input type="text" name="waibao" id="waibao">总金额</td>
        </tr>
        <tr>
            <td class="first">招待费</td>
            <td><input type="text" name="zhaodaifei" id="zhaodaifei"/>总金额</td>
            <td class="first">通讯费</td>
            <td><input type="text"  name="tongxunfei" id="tongxunfei"/>总金额</td>
        </tr>
        <tr>
            <td class="first">日用品</td>
            <td><input type="text" name="riyongpin" id="riyongpin"/>总金额</td>
            <td class="first">邮寄费</td>
            <td><input type="text"  name="youjifei" id="youjifei"/>总金额</td>
        </tr>
    </table>
    <table id="b">
        <tr>
            <td class="first">租车费</td>
            <td><input type="text" name="zuchefei" id="zuchefei"/>总金额</td>
            <td class="first">设备修理费</td>
            <td><input type="text"  name="shebeixiuli" id="shebeixiuli"/>总金额</td>
        </tr>
        <td class="first">高速通行费</td>
        <td><input type="text" name="gaosutongxing" id="gaosutongxing"/>总金额</td>
        <td class="first">出差加油费</td>
        </td>
        <td><input type="text" name="chuchaijiayou" id="chuchaijiayou"/>总金额</td>
        </tr>
        <tr>
            <td class="first">市内公交出租费</td>
            <td><input type="text" name="shineigongjiao" id="shineigongjiao"/>总金额</td>
            <td class="first">(修/洗)车费</td>
            <td><input type="text" name="xiuchefei" id="xiuchefei"/>总金额</td>
        <tr>
            <td class="first">人工费</td>
            <td><input type="text" name="rengong" id="rengong"/>总金额</td>
            <td class="first">(水/电)费</td>
            <td><input type="text" name="shuidian" id="shuidian"/>(元/月)</td>
        </tr>
        <tr>
            <td class="first">(火/汽)车/飞机票</td>
            <td><input type="text" name="chepiao" id="chepiao"/>总金额</td>
            <td class="first">其他</td>
            <td><input type="text" name="qita" id="qita"/>总金额</td>
        </tr>
    </table>
    <p id="two">社保</p>
    <table id="c">
        <tr>
            <td class="first">养老保险</td>
            <td><input type="text"  name="yanglao" id="yanglao"/>(元/月)</td>
            <td class="first">医疗保险</td>
            <td><input type="text" name="yiliao" id="yiliao"/>元/月)</td>
        </tr>
        <tr>
            <td class="first">工伤保险</td>
            <td><input type="text" name="gongshang" id="gongshang"/>(元/月)</td>
            <td class="first">失业保险</td>
            <td><input type="text" name="shiye" id="shiye"/>(元/月)</td>
        </tr>
        <tr>
            <td class="first">生育保险</td>
            <td><input type="text"  name="shengyu" id="shengyu"/>(元/月)</td>
        </tr>
    </table>
    <table id="d">
        <tr>
            <td><input class="button1" type="button" id="button" value="预&nbsp;算&nbsp;结&nbsp;果" onclick="check()"/></td>
            <td><input class="button2" type="reset" value="重&nbsp;&nbsp;&nbsp;&nbsp;置"/></td>
        </tr>
    </table>
    <table id="e">
        <tr>
            <td class="first">预算结果</td>
            <td><span id="jg" style="width: 300px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
        </tr>
    </table>
</form>
</body>
</html>
<script type="text/javascript" src="../js/index.js"></script>