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
                <form action="count" id="form1" >
                <table>
                    <tr>
                        <td><h1>预算录入</h1><br/></td>
                    </tr>
                    <tr>
                        <td><span>合&nbsp;同&nbsp;名&nbsp;称&nbsp;:&nbsp;&nbsp;</span><input type="text" name="xiangmuname" id="xiangmuname" width="300"/></td>
                    </tr>
                    <tr>
                        <td><span>人&nbsp;&nbsp;数&nbsp;：&nbsp;&nbsp;</span><input type="text"  name="renshu" id="renshu"/><span class="tishi">（个）</span></td>
                        <td><span>工&nbsp;&nbsp;资&nbsp;：&nbsp;&nbsp;</span><input type="text" name="gongzi" id="gongzi"/><span class="tishi">（元/月）</span></td>
                    </tr>
                    <tr>
                        <td><span>时&nbsp;&nbsp;长&nbsp;：&nbsp;&nbsp;</span><input type="text" name="shichang" id="shichang"/><span class="tishi">&nbsp;(月）</span></td>
                        <td><span>税&nbsp;&nbsp;费&nbsp;：&nbsp;&nbsp;</span><input type="text" name="shuifei" id="shuifei"/><span class="tishi">&nbsp;总金额</span></td>
                    </tr>
                    <tr>
                        <td><span>房&nbsp;&nbsp;租&nbsp;：&nbsp;&nbsp;</span><input type="text" name="fangzu" id="fangzu"/><span class="tishi">（元/月）</span></td>
                        <td><span>外&nbsp;&nbsp;包&nbsp;：&nbsp;&nbsp;</span><input type="text" name="waibao" id="waibao"/><span class="tishi">&nbsp;总金额</span></td>
                    </tr>
                    <tr>
                        <td><span>招&nbsp;待&nbsp;费&nbsp;：&nbsp;&nbsp;</span><input type="text" name="zhaodaifei" id="zhaodaifei"/><span class="tishi">&nbsp;总金额</span></td>
                        <td><span>通&nbsp;讯&nbsp;费&nbsp;：&nbsp;&nbsp;</span><input type="text" name="tongxunfei" id="tongxunfei"/><span class="tishi">&nbsp;总金额</span></td>
                    </tr>
                    <tr>
                        <td><span>日&nbsp;用&nbsp;品&nbsp;：&nbsp;&nbsp;</span><input type="text" name="riyongpin" id="riyongpin"/><span class="tishi">总金额</span></td>
                        <td><span>邮&nbsp;寄&nbsp;费&nbsp;：&nbsp;&nbsp;</span><input type="text" name="youjifei" id="youjifei"/><span class="tishi">总金额</span></td>
                    </tr>
                    <tr>
                        <td><span>租&nbsp;车&nbsp;费&nbsp;：&nbsp;&nbsp;</span><input type="text" name="zuchefei" id="zuchefei"/><span class="tishi">&nbsp;总金额</span></td>
                        <td><span>设备修理费&nbsp;：&nbsp;&nbsp;</span><input type="text" name="shebeixiuli" id="shebeixiuli"/><span class="tishi">&nbsp;总金额</span></td>
                    </tr>
                    <tr>
                        <td><span>高速通行费&nbsp;：&nbsp;&nbsp;</span><input type="text" name="gaosutongxing" id="gaosutongxing"/><span class="tishi">&nbsp;总金额</span></td>
                        <td><span>出差加油费&nbsp;：&nbsp;&nbsp;</span><input type="text" name="chuchaijiayou" id="chuchaijiayou"/><span class="tishi">&nbsp;总金额</span></td>
                    </tr>
                    <tr>
                        <td><span>市内公交出租费&nbsp;：&nbsp;&nbsp;</span><input type="text" name="shineigongjiao" id="shineigongjiao"/><span class="tishi">&nbsp;总金额</span></td>
                        <td><span>（修/洗）车费&nbsp;：&nbsp;&nbsp;</span><input type="text" name="xiuchefei" id="xiuchefei"/><span class="tishi">&nbsp;总金额</span></td>
                    </tr>
                    <tr>
                        <td><span>人&nbsp;工&nbsp;费&nbsp;：&nbsp;&nbsp;</span><input type="text" name="rengong" id="rengong"/><span class="tishi">&nbsp;总金额</span></td>
                        <td><span>（水/电）费&nbsp;：&nbsp;&nbsp;</span><input type="text" name="shuidian" id="shuidian"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                    </tr>
                    <tr>
                        <td><span>（火/汽）车/飞机票&nbsp;：&nbsp;&nbsp;</span><input type="text" name="chepiao" id="chepiao"/><span class="tishi">&nbsp;总金额</span></td>
                        <td><span>其&nbsp;&nbsp;他&nbsp;：&nbsp;&nbsp;</span><input type="text" name="qita" id="qita"/><span class="tishi">（元/月）</span></td>
                    </tr>
                    <tr>
                        <br/>
                        <td><h1>社保</h1></td>
                    </tr>
                    <tr>
                        <td><span>养&nbsp;老&nbsp;保&nbsp;险&nbsp;：&nbsp;&nbsp;</span><input type="text" name="yanglao" id="yanglao"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                        <td><span>医&nbsp;疗&nbsp;保&nbsp;险&nbsp;：&nbsp;&nbsp;</span><input type="text" name="yiliao" id="yiliao"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                        <td><span>工&nbsp;伤&nbsp;保&nbsp;险&nbsp;：&nbsp;&nbsp;</span><input type="text" name="gongshang" id="gongshang"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                    </tr>
                    <tr>
                        <td><span>失&nbsp;业&nbsp;保&nbsp;险&nbsp;：&nbsp;&nbsp;</span><input type="text" name="shiye" id="shiye"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                        <td><span>生&nbsp;育&nbsp;保&nbsp;险&nbsp;：&nbsp;&nbsp;</span><input type="text" name="shengyu" id="shengyu"/><span class="tishi">&nbsp;总金额（元/月）</span></td>
                    </tr>
                    <tr>
                        <td><input class="button" type="button" onclick="javascript:;asd();" value="预&nbsp;算&nbsp;结&nbsp;果"/><span id="jg"></span></td>
                        <td><input class="button" style="float:right;" type="reset" value="重&nbsp;&nbsp;&nbsp;&nbsp;置"/></td>
                    </tr>
                </table>
                </form>
            </div>

            <div id="main2"></div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function() {
        //绑定失去焦点事件
//        $(".l_user").blur(checkName);
//        $(".l_pwd").blur(checkPass);
//        $("#pass").blur(checkRePass);
//        $(".l_mem").blur(checkUser);
//        $(".l_tel").blur(checkMobile);
//        $("").blur(checkEmail);
        //提交表单用于验证函数
        $("#form1").submit(function() {
            var flag = true;
            if (!checkXiangMuName())
                flag = false;
            if (!checkRenShu())
                flag = false;
            if (!checkGongZi())
                flag = false;
            if (!checkShiChang())
                flag = false;
            if (!checkShuiFei())
                flag = false;
            if (!checkFangZu())
                flag = false;
            if (!checkWaiBao())
                flag = false;
            if (!checkZhaoDaiFei())
                flag = false;
            if (!checkTongXunFei())
                flag = false;
            if (!checkRiYongPin())
                flag = false;
            if (!checkYouJiFei())
                flag = false;
            if (!checkZuCheFei())
                flag = false;
            if (!checkSheBeiXiuLi())
                flag = false;
            if (!checkGaoSuTongXing())
                flag = false;
            if (!checkChuChaiJiaYou())
                flag = false;
            if (!checkShiNeiGongJiao())
                flag = false;
            if (!checkXiuCheFei())
                flag = false;
            if (!checkRenGong())
                flag = false;
            if (!checkShuiDian())
                flag = false;
            if (!checkChePiao())
                flag = false;
            if (!checkQiTa())
                flag = false;
            if (!checkYangLao())
                flag = false;
            if (!checkYiLiao())
                flag = false;
            if (!checkGongShang())
                flag = false;
            if (!checkShiYe())
                flag = false;
            if (!checkShengYu())
                flag = false;

            return flag;
        });
    });
    function checkXiangMuName() {
        var xiangmuname = $("#xiangmuname").val();
        //var div1 = $("#div1").html("");
        if (xiangmuname == "") {
            alert("合同名不能为空");
            return false;

        }
        return true;
    }

    function checkRenShu() {
        var renshu = $("#renshu").val();
        //var div1 = $("#div1").html("");
        if (renshu == "") {
            alert("人数不能为空");
            return false;
        }
        return true;
    }

    function checkGongZi() {
        var gongzi = $("#gongzi").val();
        //var div1 = $("#div1").html("");
        if (gongzi == "") {
            alert("工资不能为空");
            return false;
        }
        return true;
    }

    function checkShiChang() {
        var shichang = $("#shichang").val();
        //var div1 = $("#div1").html("");
        if (shichang == "") {
            alert("时长不能为空");
            return false;
        }
        return true;
    }
    function checkShuiFei() {
        var shuifei = $("#shuifei").val();
        //var div1 = $("#div1").html("");
        if (shuifei == "") {
            alert("税费不能为空");
            return false;
        }
        return true;
    }

    function checkFangZu() {
        var fangzu = $("#fangzu").val();
        //var div1 = $("#div1").html("");
        if (fangzu == "") {
            alert("房租不能为空");
            return false;
        }
        return true;
    }

    function checkWaiBao() {
        var waibao = $("#waibao").val();
        //var div1 = $("#div1").html("");
        if (waibao == "") {
            alert("外包不能为空");
            return false;
        }
        return true;
    }


    function checkZhaoDaiFei() {
        var zhaodaifei = $("#zhaodaifei").val();
        //var div1 = $("#div1").html("");
        if (zhaodaifei == "") {
            alert("招待费不能为空");
            return false;
        }
        return true;
    }

    function checkTongXunFei() {
        var tongxunfei = $("#tongxunfei").val();
        //var div1 = $("#div1").html("");
        if (tongxunfei == "") {
            alert("通讯费不能为空");
            return false;
        }
        return true;
    }
    function checkRiYongPin() {
        var riyongpin = $("#riyongpin").val();
        //var div1 = $("#div1").html("");
        if (riyongpin == "") {
            alert("日用品不能为空");
            return false;
        }
        return true;
    }

    function checkYouJiFei() {
        var youjifei = $("#youjifei").val();
        //var div1 = $("#div1").html("");
        if (youjifei == "") {
            alert("邮寄费不能为空");
            return false;
        }
        return true;
    }
    function checkZuCheFei() {
        var zuchefei = $("#zuchefei").val();
        //var div1 = $("#div1").html("");
        if (zuchefei == "") {
            alert("租车费不能为空");
            return false;
        }
        return true;
    }

    function checkSheBeiXiuLi() {
        var shebeixiuli = $("#shebeixiuli").val();
        //var div1 = $("#div1").html("");
        if (shebeixiuli == "") {
            alert("设备修理费不能为空");
            return false;
        }
        return true;
    }
    function checkGaoSuTongXing() {
        var gaosutongxing = $("#gaosutongxing").val();
        //var div1 = $("#div1").html("");
        if (gaosutongxing == "") {
            alert("高速通行费不能为空");
            return false;
        }
        return true;
    }
    function checkChuChaiJiaYou() {
        var chuchaijiayou = $("#chuchaijiayou").val();
        //var div1 = $("#div1").html("");
        if (chuchaijiayou == "") {
            alert("出差加油费不能为空");
            return false;
        }
        return true;
    }
    function checkShiNeiGongJiao() {
        var shineigongjiao = $("#shineigongjiao").val();
        //var div1 = $("#div1").html("");
        if (shineigongjiao == "") {
            alert("市内公交出租费不能为空");
            return false;
        }
        return true;
    }
    function checkXiuCheFei() {
        var xiuchefei = $("#xiuchefei").val();
        //var div1 = $("#div1").html("");
        if (xiuchefei == "") {
            alert("修车费不能为空");
            return false;
        }
        return true;
    }
    function checkRenGong() {
        var rengong = $("#rengong").val();
        //var div1 = $("#div1").html("");
        if (rengong == "") {
            alert("人工费不能为空");
            return false;
        }
        return true;
    }
    function checkShuiDian() {
        var shuidian = $("#shuidian").val();
        //var div1 = $("#div1").html("");
        if (shuidian == "") {
            alert("水电费不能为空");
            return false;
        }
        return true;
    }    function checkChePiao() {
        var chepiao = $("#chepiao").val();
        //var div1 = $("#div1").html("");
        if (chepiao == "") {
            alert("车票不能为空");
            return false;
        }
        return true;
    }    function checkQiTa() {
        var qita = $("#qita").val();
        //var div1 = $("#div1").html("");
        if (qita == "") {
            alert("其他不能为空");
            return false;
        }
        return true;
    }    function checkYangLao() {
        var yanglao = $("#yanglao").val();
        //var div1 = $("#div1").html("");
        if (yanglao == "") {
            alert("养老保险不能为空");
            return false;
        }
        return true;
    }
    function checkYiLiao() {
        var yiliao = $("#yiliao").val();
        //var div1 = $("#div1").html("");
        if (yiliao == "") {
            alert("医疗保险不能为空");
            return false;
        }
        return true;
    }
    function checkGongShang() {
        var gongshang = $("#xiangmuname").val();
        //var div1 = $("#div1").html("");
        if (gongshang == "") {
            alert("工伤不能为空");
            return false;
        }
        return true;
    }


    function checkShiYe() {
        var shiye = $("#shiye").val();
        //var div1 = $("#div1").html("");
        if (shiye == "") {
            alert("失业保险不能为空");
            return false;
        }
        return true;
    }
    function checkShengYu() {
        var shengyu = $("#shengyu").val();
        //var div1 = $("#div1").html("");
        if (shengyu == "") {
            alert("生育保险不能为空");
            return false;
        }
        return true;
    }







</script>
<script type="text/javascript">
    function asd() {
        var ren=document.getElementById("renshu").value;
        var gongshang=document.getElementById("gongshang").value;
        var yiliao=document.getElementById("").value;
        var yanglao=document.getElementById("").value;
        var shengyu=document.getElementById("").value;
        var shiye=document.getElementById("").value;
        var shi=document.getElementById("").value;
        var chepiao=document.getElementById("").value;
        var chuchai=document.getElementById("").value;
        var fangzu=document.getElementById("").value;
        var  tongxing=document.getElementById("").value;
        var gongzi=document.getElementById("").value;
        var qita=document.getElementById("").value;
        var rengong=document.getElementById("").value;
        var riyong=document.getElementById("").value;
        var shebei=document.getElementById("").value;
        var shuidian=document.getElementById("").value;
        var  shuifei=document.getElementById("").value;
        var tongxun=document.getElementById("").value;
        var waibao=document.getElementById("").value;
        var  gongjiao=document.getElementById("").value;
        var  zhaodai=document.getElementById("").value;
        var  zuche=document.getElementById("").value;
        var xiuche=document.getElementById("").value;
        var youji=document.getElementById("").value;

        var url="add?ren="+ren+"&gongshang="+gongshang+"&yiliao="+yiliao+"&yanglao="+yanglao+"&shengyu="+shengyu+"&shiye="+shiye+"&shi"+shi+"&chepiao"+chepiao+"chuchai"+chuchai+"&fangzu"+fangzu+
            "&tongxing"+tongxing+"&gongzi"+gongzi+"&qita"+qita+"&rengong"+rengong+"&riyong"+riyong+"&shebei"+shebei+"&shuidian"+shuidian+"&shuifei"+shuifei+"&tongxun"+tongxun+"&waibao"+waibao+
            "&gongjiao"+gongjiao+"&zhaodai"+zhaodai+"&zuche"+zuche+"&xiuche"+xiuche+"&youji"+youji;

        $.get(url,function (data) {
                $("#jg").text(data);
        });
    }
</script>
</body>
</html>
<script type="text/javascript" src="../js/index.js"></script>