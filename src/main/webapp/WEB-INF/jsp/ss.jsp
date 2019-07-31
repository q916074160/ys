<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/static/easyUi/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/static/easyUi/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="/static/easyUi/demo/demo.css">
    <script type="text/javascript" src="/static/easyUi/jquery.min.js"></script>
    <script type="text/javascript" src="/static/easyUi/jquery.easyui.min.js"></script>
</head>
<body>
<form action="#" id="form1">
    <table cellpadding="5" style="position: absolute;left:20%;top: 7%;">
        <tr>
            <td>合同名称:</td>
            <td><input class="easyui-textbox" type="text" name="xiangmuname" id="xiangmuname" ></input></td>
        </tr>
        <tr>
            <td>人工费:</td>
            <td><input class="easyui-textbox" type="text"  name="rengong" id="rengong"></input>	</td>
        </tr>

        <tr>
            <td>税费:</td>
            <td><input class="easyui-textbox" type="text"  name="shuifei" id="shuifei" ></input></td>
        </tr>
        <tr>
            <td>房租:</td>
            <td><input class="easyui-textbox" type="text"  name="fangzu" id="fangzu" ></input>	</td>
        </tr>
        <tr>
            <td>外包:</td>
            <td><input class="easyui-textbox" type="text"  name="waibao" id="waibao" ></input>	</td>
        </tr>
        <tr>
             <td>招待费:</td>
            <td><input class="easyui-textbox" type="text"  name="zhaodaifei" id="zhaodaifei"></input>	</td>
        </tr>
        <tr>
            <td>通讯费:</td>
            <td><input class="easyui-textbox" type="text"  name="tongxunfei" id="tongxunfei" ></input>	</td>
        </tr>
        <tr>
            <td>租车费:</td>
            <td><input class="easyui-textbox" type="text"  name="zuchefei" id="zuchefei" ></input>	</td>
        </tr>
        <tr>
            <td class="td1">所属时间:</td>
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
        <tr>
            <td>工资:</td>
            <td><input type="text" name="gongzi" id="gongzi"  readonly= "true" style="border:0px red solid; outline:none;"></input></td>
        </tr>
        <tr>
            <td colspan="2">结果：<span id="jg" style="width: 300px;"></span>&nbsp;&nbsp;&nbsp;<span id="gzhe" style="width: 300px;"></span></td>
        </tr>
    </table>
    <table cellpadding="5" style="position: absolute; top:7%; left:60%;">
        <tr>
            <td>高速通行费:</td>
            <td><input class="easyui-textbox" type="text" name="gaosutongxing" id="gaosutongxing" ></input></td>
        </tr>
        <tr>
            <td>出差加油费:</td>
            <td><input class="easyui-textbox" type="text" name="chuchaijiayou" id="chuchaijiayou" ></input></td>
        </tr>
        <tr>
            <td>市内公交出租费:</td>
            <td><input class="easyui-textbox" type="text"  name="shineigongjiao" id="shineigongjiao" ></input></td>
        </tr>
        <tr>
            <td>(修/洗)车费:</td>
            <td><input class="easyui-textbox" type="text"  name="xiuchefei" id="xiuchefei" ></input></td>
        </tr>
        <tr>
            <td>设备修理费:</td>
            <td><input class="easyui-textbox" type="text"  name="shebeixiuli" id="shebeixiuli"></input></td>
        </tr>
        <tr>
            <td>(水/电)费:</td>
            <td><input class="easyui-textbox" type="text" name="shuidian" id="shuidian" ></input>	</td>
        </tr>
        <tr>
            <td>日用品:</td>
            <td><input class="easyui-textbox" type="text"  name="riyongpin" id="riyongpin" ></input>	</td>
        </tr>
        <tr>
            <td>邮寄费:</td>
            <td><input class="easyui-textbox" type="text"  name="youjifei" id="youjifei"></input>	</td>
        </tr>
        <tr>
            <td>其他:</td>
            <td><input class="easyui-textbox" type="text"  name="qita" id="qita" ></input>	</td>
        </tr>
        <tr>
            <td>(火/汽)车/飞机票:</td>
            <td><input  class="easyui-textbox" type="text" name="chepiao" id="chepiao"></input></td>
        </tr>
        <tr>
            <td>人数:</td>
            <td><input  type="text" name="renshu" id="renshu"  readonly= "true" style="border:0px red solid; outline:none;"></input></td>
        </tr>
        <tr style="height: 35px">
            <td></td>
            <td></td>
        </tr>

    </table>
    <a href="javascript:void(0)" class="easyui-linkbutton" style="outline:none;text-align:center; position: absolute; bottom:0.5%;right:170px;height:30px;" ><input class="button1" type="button" id="button2" value="保存" onclick="check1(2)" style="border:0px white solid;background:transparent;outline:none;cursor: pointer;"/></a>
    <a href="javascript:void(0)" class="easyui-linkbutton" style="outline:none;text-align:center; position: absolute; bottom:0.5%;right:80px; height:30px;"><input class="button1" type="button" id="button" value="实算结果" onclick="check1(1)" style="border:0px white solid;background:transparent;outline:none;cursor: pointer;"/></a>
    <a href="javascript:void(0)" class="easyui-linkbutton" style="outline:none;text-align:center; position: absolute; bottom:0.5%;right:20px; height:30px;" onclick="clearForm()"><input class="button1" type="reset" value="重置" style="outline:none;border:0px white solid;background:transparent;cursor: pointer;"/></a>
</form>
<script type="text/javascript" src="/static/js/index.js"></script>
<script>
    $(function () {
        $("#zhongdui").attr("disabled","disabled");
        $('#time').datebox({
            editable:false
        });
    });
    function clearForm(){
        $("#jg").text('');
        $('#form1').form('reset');
        $("#zhongdui").attr("disabled","disabled");
    }
    $("body").delegate(".datebox input[type=text]","blur",function() {
        var str1 = document.getElementById("time").value;
        if (str1==""){
            $("#zhongdui").attr("disabled","disabled");
            alert("时间没有选择！");
        }
        if (str1!="") {
            $("#zhongdui").removeAttr("disabled");
        }
    });
    $("body").delegate(".datebox input[type=text]","focus",function() {
        $("#zhongdui option:first").prop("selected","selected");
        $("#gongzi").val('');
        $("#renshu").val('');
    });

</script>
</body>
</html>
