function jieguo() {
    var name=document.getElementById("xiangmuname").value;
    var ren=document.getElementById("renshu").value;
    var gongshang=document.getElementById("gongshang").value;
    var yiliao=document.getElementById("yiliao").value;
    var yanglao=document.getElementById("yanglao").value;
    var shengyu=document.getElementById("shengyu").value;
    var shiye=document.getElementById("shiye").value;
    var shi=document.getElementById("shichang").value;
    var chepiao=document.getElementById("chepiao").value;
    var chuchai=document.getElementById("chuchaijiayou").value;
    var fangzu=document.getElementById("fangzu").value;
    var  tongxing=document.getElementById("gaosutongxing").value;
    var gongzi=document.getElementById("gongzi").value;
    var qita=document.getElementById("qita").value;
    var rengong=document.getElementById("rengong").value;
    var riyong=document.getElementById("riyongpin").value;
    var shebei=document.getElementById("shebeixiuli").value;
    var shuidian=document.getElementById("shuidian").value;
    var  shuifei=document.getElementById("shuifei").value;
    var tongxun=document.getElementById("tongxunfei").value;
    var waibao=document.getElementById("waibao").value;
    var  gongjiao=document.getElementById("shineigongjiao").value;
    var  zhaodai=document.getElementById("zhaodaifei").value;
    var  zuche=document.getElementById("zuchefei").value;
    var xiuche=document.getElementById("xiuchefei").value;
    var youji=document.getElementById("youjifei").value;

    var url="add?name="+name+"&ren="+ren+"&gongshang="+gongshang+"&yiliao="+yiliao+"&yanglao="+yanglao+"&shengyu="+shengyu+"&shiye="+shiye+"&shi="+shi+"&chepiao="+chepiao+"&chuchai="+chuchai+"&fangzu="+fangzu+
        "&tongxing="+tongxing+"&gongzi="+gongzi+"&qita="+qita+"&rengong="+rengong+"&riyong="+riyong+"&shebei="+shebei+"&shuidian="+shuidian+"&shuifei="+shuifei+"&tongxun="+tongxun+"&waibao="+waibao+
        "&gongjiao="+gongjiao+"&zhaodai="+zhaodai+"&zuche="+zuche+"&xiuche="+xiuche+"&youji="+youji;
    //alert(url);
    $.get(url,function (data) {
        $("#jg").text(data);
    });
}
$(function() {
    //绑定失去焦点事件
//        $(".l_user").blur(checkName);
//        $(".l_pwd").blur(checkPass);
//        $("#pass").blur(checkRePass);
//        $(".l_mem").blur(checkUser);
//        $(".l_tel").blur(checkMobile);
//        $("").blur(checkEmail);
    //提交表单用于验证函数
    $("#button").click(function() {
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
        if(flag==true){
            jieguo();
        }
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
        alert("人数不能为空,可以为0");
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





